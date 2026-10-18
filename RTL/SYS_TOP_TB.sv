`timescale 1ns/1ps
typedef enum int { no_parity, even_parity, odd_parity } par_con;
import ALU_operands_pkg::*;

module tb_final_system;
    logic REF_CLK;
    logic UART_CLK;
    logic RST;
    logic RX_IN;
    logic TX_OUT;
    logic parity_error;
    logic stop_error;

    // RF ref
    bit [7:0] ref_RF [16];

    // Operands & ALU fun
    logic unsigned [7:0] A,B;
    func_val func;
    //operands class
    ALU_operands alu_cc;

    // Test case label for waveform debuging
    string testcase;

    // parity & stop error done flag
    logic par_error_done;
    logic stop_error_done;

    // ------------------------------------------------
    // DUT
    // ------------------------------------------------
    SYS_TOP DUT (
        .REF_CLK (REF_CLK),
        .UART_CLK(UART_CLK),
        .RST_N     (RST),
        .UART_RX_IN   (RX_IN),
        .UART_TX_OUT  (TX_OUT),
        .stop_error (stop_error),
        .parity_error(parity_error)
    );

    // ------------------------------------------------
    // Reference clock = 50 MHz
    // Period = 20 ns
    // ------------------------------------------------
    initial begin
        REF_CLK = 0;
        forever #10 REF_CLK = ~REF_CLK;
    end

    // ------------------------------------------------
    // UART clock = 3.6864 MHz
    // Period ≈ 271.267 ns
    // ------------------------------------------------
    initial begin
        UART_CLK = 0;
        forever #(271.267/2) UART_CLK = ~UART_CLK;
    end

    // ------------------------------------------------
    // UART RX BIT_TIME
    // Prescale:-
    //      8    ->   8/3.6864M ≈ 2170.14ns     
    //      16   ->   16/3.6864M ≈ 4340.28ns
    //      32   ->   32/3.6864M ≈ 8680.56ns
    // ------------------------------------------------
    localparam time BIT_TIME_32 = 8680.56ns;
    localparam time BIT_TIME_16 = 4340.28ns;
    localparam time BIT_TIME_8 = 2170.14ns;

    // ------------------------------------------------
    // Config the Reference RF
    // ------------------------------------------------
    task automatic config_regs(input bit default_cfg = 1, input par_con parity_rf = even_parity, input int prescale_rf = 32, div_r = 32);
        begin
            if (default_cfg) begin
                ref_RF[0] = 0;
                ref_RF[1] = 0;
                ref_RF[2] = 129;
                ref_RF[3] = 32; 
            end 
            else begin
                ref_RF[2][1:0] = parity_rf;
                ref_RF[2][7:2] = prescale_rf;
                ref_RF[3] = div_r;
            end
            for (int i=4; i<16; ++i) begin
                ref_RF[i] = 0;
            end
        end
    endtask

    // ------------------------------------------------
    // Print the Reg File
    // ------------------------------------------------
    task automatic print_RF;
        begin
            foreach (ref_RF[i]) begin
                $display("RF[%2d]: %8b",i,ref_RF[i]);
            end
        end
    endtask

    // ------------------------------------------------
    // Send one UART byte task
    // Start + data + parity(optional) + Stop
    // ------------------------------------------------
    task automatic uart_send_byte(input logic [7:0] data, input par_con par, input time BIT_TIME);
        integer i;
        logic parity;
        begin
            // Calc parity
            if (par == even_parity) begin
                parity = ^data;
            end 
            else if (par == even_parity) begin
                parity = ~^data;
            end 
            // Start bit
            RX_IN = 1'b0;
            #(BIT_TIME);
            // Data bits, LSB first
            for (i = 0; i < 8; i++) begin
                RX_IN = data[i];
                #(BIT_TIME);
            end
            // Parity bit
            if (par != no_parity) begin
                RX_IN = parity;
                #(BIT_TIME);
            end
            // Stop bit
            RX_IN = 1'b1;
            #(BIT_TIME);
        end
    endtask

    task automatic uart_send_byte_errored(input logic [7:0] data, input en_par, input par_bit, input stop_bit, input time BIT_TIME);
        begin
            int i;

            // Start bit
            RX_IN = 1'b0;
            #(BIT_TIME);

            // Data bits, LSB first
            for (i = 0; i < 8; i++) begin
                RX_IN = data[i];
                #(BIT_TIME);
            end
            
            // Parity bit
            if (en_par != 0) begin
                RX_IN = par_bit;
                #(BIT_TIME);
            end
            // Stop bit
            RX_IN = stop_bit;
        end
    endtask


    // ------------------------------------------------
    // Register File Write Operation
    // ------------------------------------------------
    task automatic rf_write_default_config(input logic [3:0] addr,input logic [7:0] data);
        begin
            par_con send_par = even_parity;
            // RF Write command
            uart_send_byte(8'hAA, send_par, BIT_TIME_32);
            // Address
            uart_send_byte(addr, send_par, BIT_TIME_32);
            // Data
            uart_send_byte(data, send_par, BIT_TIME_32);
            // Edit the REF
            ref_edit(addr,data);
        end
    endtask

    // ------------------------------------------------
    // Register File Read Operation
    // ------------------------------------------------
    task automatic rf_read_default_config(input logic [7:0] addr);
        begin
            par_con send_par = even_parity;
            // RF Write command
            uart_send_byte(8'hBB, send_par, BIT_TIME_32);
            // Address
            uart_send_byte(addr, send_par, BIT_TIME_32);
        end
    endtask

    // ------------------------------------------------
    // Ref editong
    // ------------------------------------------------
    task automatic ref_edit(input bit [3:0] addr, bit [7:0] data);
        begin
            ref_RF[addr] = data;
        end        
    endtask

    // ------------------------------------------------
    // Expected ALU Output
    // ------------------------------------------------
    task automatic calc_exp_ALU(input bit with_operand, input bit [7:0] A_reg,B_reg, input func_val func_reg, output [15:0] out_alu);
        begin
            bit [7:0] op1,op2;
            if (with_operand) begin
                op1 = A_reg;
                op2 = B_reg;
            end 
            else begin
                op1 = ref_RF[0];
                op2 = ref_RF[1];
            end
            case(func_reg)
                add: out_alu = op1+op2;
                sub: out_alu = op1-op2;
                Mult: out_alu = op1*op2;
                div: out_alu = op1/op2;
                anding: out_alu = op1&op2;
                oring: out_alu = op1|op2;
                noring: out_alu = ~(op1|op2);
                nanding: out_alu = ~(op1&op2);
                xoring: out_alu = op1^op2;
                xnoring: out_alu = op1~^op2;
                cmp_eq: begin
                     if (op1 == op2) begin
                        out_alu = 1;
                    end 
                    else begin
                        out_alu = 0;
                    end
                end
                cmp_G: begin
                     if (op1 > op2) begin
                        out_alu = 2;
                    end 
                    else begin
                        out_alu = 0;
                    end
                end
                cmp_L: begin
                     if (op1 < op2) begin
                        out_alu = 3;
                    end 
                    else begin
                        out_alu = 0;
                    end
                end
                shift_L: out_alu = op1 << 1;
                shift_R: out_alu = op1 >> 1;
                no_op: out_alu = 0;
            endcase
        end        
    endtask

    // ------------------------------------------------
    // ALU Operation
    // ------------------------------------------------
    task automatic ALU_OP_default_cfg (bit with_operand);
        begin
            par_con send_par = even_parity;
            ref_edit(0,A);
            ref_edit(1,B);
            if (with_operand) begin
                // ALU with Operands command
                uart_send_byte(8'hCC, send_par, BIT_TIME_32);
                // Operands
                uart_send_byte(A, send_par, BIT_TIME_32);
                uart_send_byte(B, send_par, BIT_TIME_32);
                // ALU Function
                uart_send_byte(func, send_par, BIT_TIME_32);
            end 
            else begin
                // ALU without Operands command
                uart_send_byte(8'hDD, send_par, BIT_TIME_32);
                // ALU Function
                uart_send_byte(func, send_par, BIT_TIME_32);
            end
        end
    endtask

    // ------------------------------------------------
    // Checkers
    // ------------------------------------------------
    // Reset
    task automatic check_reset();
        begin
            bit err;
            foreach (ref_RF[i]) begin
                if(ref_RF[i] != DUT.RF0.reg_file[i]) begin
                    $display("Reset functionality has error at register %0d",i);
                    $display("Expected: %b Got: %b", ref_RF[i], DUT.RF0.reg_file[i]);
                    err =1;
                end
            end
            if(!err) 
                $display("Reset is working right");
            print_RF();
        end
    endtask
    
    // RF write the data correctly
    task automatic check_writing();
        begin
            bit err;
            foreach (ref_RF[i]) begin
                if(ref_RF[i] != DUT.RF0.reg_file[i]) begin
                    $display("Writing operation has error at register %0d",i);
                    $display("Expected: %b Got: %b", ref_RF[i], DUT.RF0.reg_file[i]);
                    err = 1;
                end
            end
            if(!err) 
                $display("Writing in RF is working right");
            print_RF();
        end
    endtask

    // RF Read the data correctly
    task automatic check_read(input par_con parity_type, bit[3:0] addr);
        begin
            int i = 0;
            bit [10:0] data_tx,data_exp;
            bit err;
            
            case (parity_type)
                no_parity:   data_exp = {1'b1, ref_RF[addr], 1'b0}; 
                even_parity: data_exp = {1'b1, ^ref_RF[addr], ref_RF[addr], 1'b0};
                odd_parity:  data_exp = {1'b1, ~^ref_RF[addr], ref_RF[addr], 1'b0};
            endcase

            @(DUT.UART0.tx_busy)
            while (DUT.UART0.tx_busy) begin
                @(negedge DUT.UART0.tx_clk);
                data_tx[i] = TX_OUT;
                i++;
            end            

            if(data_exp != data_tx) begin
                    $display("Reading operation has error at register %0d",addr);
                    $display("Expected: %b Got: %b", data_exp, data_tx);
                    err = 1;
                end
            if(!err) begin 
                $display("Reading in RF is working right");
                $display("Behavior Expected: ");
                $display("  Addr: %0d   ->   Data: %8b", addr, ref_RF[addr]);
                $display("  Expected output: %b   ->   actual output: %b", data_exp, data_tx);
            end
        end
    endtask

    // ALU output
    task automatic check_ALU(input par_con parity_type, input bit with_operand, input [7:0]A_reg,B_reg, input func_val func_reg);
        begin
            bit err;
            int i = 0;
            bit [15:0] alu_exp;
            bit [21:0] alu_tx_exp,alu_tx_data;

            calc_exp_ALU(with_operand, A_reg, B_reg, func_reg, alu_exp);
            
            case (parity_type)
                no_parity:   alu_tx_exp = {1'b1, alu_exp[15:8], 1'b0, 1'b1, alu_exp[7:0], 1'b0}; 
                even_parity: alu_tx_exp = {1'b1, ^alu_exp[15:8], alu_exp[15:8], 1'b0, 1'b1, ^alu_exp[7:0], alu_exp[7:0], 1'b0};
                odd_parity:  alu_tx_exp = {1'b1, ~^alu_exp[15:8], alu_exp[15:8], 1'b0, 1'b1, ~^alu_exp[7:0], alu_exp[7:0], 1'b0};
            endcase

                @(DUT.UART0.tx_busy)
                while (DUT.UART0.tx_busy) begin
                    @(negedge DUT.UART0.tx_clk);
                    alu_tx_data[i] = TX_OUT;
                    i++;
                end

                @(DUT.UART0.tx_busy)
                i = 11;
                while (DUT.UART0.tx_busy) begin
                    @(negedge DUT.UART0.tx_clk);
                    alu_tx_data[i] = TX_OUT;
                    i++;
                end   
            

            if(alu_tx_exp != alu_tx_data) begin
                    $display("ALU operation has error");
                    $display("After TX @ %t Expected: %b Got: %b", $time, alu_tx_exp, alu_tx_data);
                    err = 1;
                end

            if(!err) begin
                $display("ALU OP in RF is working right");
                $display("Behavior Expected: ");
                $display("  A: %8b B: %8b op: %s", A_reg, B_reg, func_reg.name());
                $display("  ALU OUT Expected: %16b", alu_exp);
                $display("  Expected output: %b   ->   actual output: %b", alu_tx_exp, alu_tx_data);
            end
        end 
    endtask

    task automatic wait_par_error();
        begin
            fork: parity_checker
                begin
                    @(parity_error);
                    $display("Parity error asserted successfully");    
                end
                begin
                    @(par_error_done)
                    $display("Parity error did not asserted");
                end
            join_any
            disable parity_checker;
        end
    endtask

    task automatic wait_stop_error();
        begin
            fork: stop_checker
                begin
                    @(stop_error);
                    $display("Stop error asserted successfully");    
                end
                begin
                    @(stop_error_done)
                    $display("Stop error did not asserted");
                end
            join_any
            disable stop_checker;
        end
    endtask

    // ------------------------------------------------
    // Test sequence
    // ------------------------------------------------
    initial begin
        $dumpfile("SYS.vcd");
        $dumpvars;

        // handle of alu operands class
        alu_cc = new();


        // Test case 1: Reset Functionality
        $display("========================================");
        $display("******** TEST CASE 1 ********");
        $display("========================================");
        $display("  Reset functionality");
        $display("----------------------------------------");
        testcase = "Test Case 1";
        RX_IN = 1'b1;
        RST = 1'b0;
        repeat(1) @(negedge UART_CLK);
        config_regs();
        check_reset();
        RST = 1'b1;

        // Test case 2: Writing operation
        $display("========================================");
        $display("******** TEST CASE 2 ********");
        $display("========================================");
        $display("   Writing operation");
        $display("----------------------------------------");
        // Address -> Data
        // 5 -> 0x55 "0101_0101"
        // 8 -> 0x88 "1000_1000"
        // d "13" -> 0xDD "1101_1101"
        testcase = "Test Case 2";
        rf_write_default_config(4'h5, 8'h55);
        rf_write_default_config(4'h8, 8'h88);
        rf_write_default_config(4'hD, 8'h0D);
        // Wait for DUT to Write in RF
        #(BIT_TIME_32 * 20);
        $display("Expected: ");
        $display("  Addr: 5     -> Data: 0101_0101");
        $display("  Addr: 8     -> Data: 1000_1000");
        $display("  Addr: 13    -> Data: 1101_1101");
        $display("  Addr: other -> Data: 0000_0000");
        check_writing();
        
        // Test case 3: Reading operation
        $display("========================================");
        $display("******** TEST CASE 3 ********");
        $display("========================================");
        $display("   Reading operation");
        $display("----------------------------------------");
        testcase = "Test Case 3";
        fork
            begin
                rf_read_default_config(4'h5);
                rf_read_default_config(4'h6);
                rf_read_default_config(4'h8);
                rf_read_default_config(4'hD);
            end
            begin
                check_read(even_parity ,4'h5); 
                check_read(even_parity ,4'h6);
                check_read(even_parity ,4'h8);
                check_read(even_parity ,4'hD); 
            end    
        join
        
        // Test case 4: ALU operations with operands
        $display("========================================");
        $display("******** TEST CASE 4 ********");
        $display("========================================");
        $display("   ALU operations with operands");
        $display("----------------------------------------");
        testcase = "Test Case 4";
        repeat(50) begin
            randomization_0: assert (alu_cc.randomize)
                else $error("Assertion randomization failed!");
            A = alu_cc.A_c;
            B = alu_cc.B_c;
            func = alu_cc.func_c;
            ALU_OP_default_cfg(1);
            check_ALU(even_parity,1,A,B,func);
        end
        #(BIT_TIME_32 * 20);

        // Test case 5: ALU operations without operands
        $display("========================================");
        $display("******** TEST CASE 5 ********");
        $display("========================================");
        $display("   ALU operations without operands");
        $display("----------------------------------------");
        testcase = "Test Case 5";
        repeat(20) begin
            randomization_1: assert (alu_cc.randomize)
                else $error("Assertion randomization failed!");
            func = alu_cc.func_c;
            ALU_OP_default_cfg(0);
            check_ALU(even_parity,0,A,B,func);
        end        
        #(BIT_TIME_32 * 20);

        // Test case 6: Wrong parity sending
        $display("========================================");
        $display("******** TEST CASE 6 ********");
        $display("========================================");
        $display("   Wrong parity sending");
        $display("----------------------------------------");
        par_error_done = 0;
        testcase = "Test Case 6";
        fork
            begin
                wait_par_error();    
            end
            begin
                uart_send_byte_errored(8'hff,1,1,1,BIT_TIME_32);    
            end
        join_any
        #(BIT_TIME_32 * 5);
        par_error_done = 1;

        // Test case 6: Wrong stop bit sending
        $display("========================================");
        $display("******** TEST CASE 6 ********");
        $display("========================================");
        $display("   Wrong stop bit sending");
        $display("----------------------------------------");
        stop_error_done = 0;
        testcase = "Test Case 7";
        fork
            begin
                wait_stop_error();    
            end
            begin
                uart_send_byte_errored(8'hff,1,0,0,BIT_TIME_32);   
            end
        join_any
        #(BIT_TIME_32 * 5);
        stop_error_done = 1;
        
        $display("==================================");
        $display("       TEST FINISHED");
        $display("==================================");

        $stop;

    end

endmodule