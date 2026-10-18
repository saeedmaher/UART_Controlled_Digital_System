module SYS_CTRL 
#(
    parameter OPERANDS_WIDTH = 8, // ALU operands
    parameter ALU_OUT_WIDTH = 16,
    parameter ALU_FUNC_WIDTH = 4,
    parameter REG_WIDTH = 8,
    parameter ADDR_WIDTH = 4,
    parameter UART_DATA_WIDTH = 8
) (
    input clk,
    input rst_n,
    // ALU signals interface
    input [ALU_OUT_WIDTH-1:0] ALU_out,
    input ALU_out_valid,
    output reg [ALU_FUNC_WIDTH-1:0] ALU_func,
    output reg ALU_en,
    // ICG signals interface
    output reg clk_en,
    // Reg File signals interface
    input [REG_WIDTH-1:0] RD_data,
    input RD_valid,
    output reg [REG_WIDTH-1:0] WR_data_regfile,
    output reg [ADDR_WIDTH-1:0] addr,
    output reg WR_en_regfile,
    output reg RD_en_regfile, 
    // FIFO signals interface "TX interface after sync"
    input fifo_full_flag,
    output reg [UART_DATA_WIDTH-1:0] WR_data_fifo,
    output reg WR_inc_fifo,
    // RX with sync signals interface
    input [UART_DATA_WIDTH-1:0] rx_data,
    input rx_data_valid,
    // CLK DIV enable
    output reg clk_div_en
);

// states
localparam IDLE = 4'd0,
           WR_ADDR = 4'd1,
           WR_DATA = 4'd2,
           REG_WR = 4'd3,
           RD_ADDR = 4'd4,
           REG_RD = 4'd5,
           WRITE_IN_FIFO = 4'd6,
           ALU_A = 4'd7,
           ALU_B = 4'd8,
           ALU_FUN = 4'd9,
           ALU_EXECUTION = 4'd10;
    
reg [3:0] cs,ns;

// internal signals
reg op_sel; // 0 for read op & 1 for ALU op 
reg ALU_part; // select upper or lower part turn to be sent

    //===============================================
    //  nest state trans
    //===============================================    
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            cs <= IDLE;
        end
        else begin
            cs <= ns;
        end
    end

    //===============================================
    //  nest state logic
    //===============================================    
    always@(*) begin
        case (cs)
            
            IDLE: begin
                if (rx_data_valid) begin
                    if(rx_data == 170)
                        ns = WR_ADDR;
                    else if(rx_data == 187)
                        ns = RD_ADDR;
                    else if(rx_data == 204)
                        ns = ALU_A;
                    else if(rx_data == 221)
                        ns = ALU_FUN;
                    else 
                        ns = IDLE;
                end 
                else begin
                    ns = IDLE;
                end
            end
        
            WR_ADDR: begin
                if (rx_data_valid) begin
                    ns = WR_DATA;
                end 
                else begin
                    ns = WR_ADDR;
                end
            end

            WR_DATA: begin
                if (rx_data_valid) begin
                    ns = REG_WR;
                end 
                else begin
                    ns = WR_DATA;
                end
            end

            REG_WR: begin
                ns = IDLE;
            end

            RD_ADDR: begin
                if (rx_data_valid) begin
                    ns = REG_RD;
                end 
                else begin
                    ns = RD_ADDR;
                end
            end

            REG_RD: begin
                if (RD_valid) begin
                    ns = WRITE_IN_FIFO;
                end 
                else begin
                    ns = REG_RD;
                end
            end

            WRITE_IN_FIFO: begin
                if(fifo_full_flag) begin
                    ns = WRITE_IN_FIFO;
                end
                else if (op_sel && !ALU_part) begin
                    ns = WRITE_IN_FIFO;
                end
                else begin
                    ns = IDLE;
                end
            end

            ALU_A: begin
                if (rx_data_valid) begin
                    ns = ALU_B;
                end 
                else begin
                    ns = ALU_A;
                end
            end

            ALU_B: begin
                if (rx_data_valid) begin
                    ns = ALU_FUN;
                end 
                else begin
                    ns = ALU_B;
                end
            end

            ALU_FUN: begin
                if (rx_data_valid) begin
                    ns = ALU_EXECUTION;
                end 
                else begin
                    ns = ALU_FUN;
                end
            end

            ALU_EXECUTION: begin
                if (ALU_out_valid) begin
                    ns = WRITE_IN_FIFO;
                end 
                else begin
                    ns = ALU_EXECUTION;
                end
            end

            default: ns = IDLE;
                
        endcase
    end

    //===============================================
    //  Address Reg to keep it while getting data
    //=============================================== 
    reg [ADDR_WIDTH-1:0] addr_reg;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            addr_reg <= 0;
        end 
        else begin
            if (cs == WR_ADDR && rx_data_valid) begin
                addr_reg <= rx_data[ADDR_WIDTH-1:0];
            end
        end
    end

    //===============================================
    //  Reg for the operation ALU/Read
    //=============================================== 
    reg [UART_DATA_WIDTH-1:0] fifo_data_sel;
    // select which operation will be done
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            op_sel <= 0;
        end 
        else begin
            if (cs == RD_ADDR || cs == ALU_FUN) begin
                op_sel <= (cs == ALU_FUN);
            end
        end
    end
    // divide the ALU output reg into 2 segments as the data will be twice the UART width
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ALU_part <= 0;
        end 
        else begin
            if (cs == WRITE_IN_FIFO && !fifo_full_flag && op_sel) begin
                ALU_part <= ~ALU_part;
            end
        end
    end

    //===============================================
    //  ALU OUR Reg
    //=============================================== 
    reg [ALU_OUT_WIDTH-1:0] ALU_out_lat;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ALU_out_lat <= 0;
        end 
        else if (cs == ALU_EXECUTION && ALU_out_valid) begin
            ALU_out_lat <= ALU_out;
        end
    end


    //===============================================
    //  O/P logic
    //===============================================    
    always@(*) begin
        clk_div_en = 1;
        case (cs)

            IDLE: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = 0;
                addr = 0;
                WR_en_regfile = 0;
                RD_en_regfile = 0;
                clk_en = 0;
            end
        
            WR_ADDR: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = 0;
                addr = addr_reg;
                WR_en_regfile = 0;
                RD_en_regfile = 0;
                clk_en = 0;
            end

            WR_DATA: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = 0;
                addr = addr_reg;
                WR_en_regfile = 0;
                RD_en_regfile = 0;
                clk_en = 0;
            end

            REG_WR: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = rx_data;
                addr = addr_reg;
                WR_en_regfile = 1;
                RD_en_regfile = 0;
                clk_en = 0;
            end

            RD_ADDR: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = 0;
                addr = 0;
                WR_en_regfile = 0;
                RD_en_regfile = 0;
                clk_en = 0;
            end

            REG_RD: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = 0;
                addr = rx_data[ADDR_WIDTH-1:0];
                WR_en_regfile = 0;
                RD_en_regfile = 1;
                clk_en = 0;
            end

            WRITE_IN_FIFO: begin
                if (!op_sel) begin
                    WR_data_fifo = RD_data;
                end 
                else begin
                    WR_data_fifo = ALU_part ? ALU_out_lat[ALU_OUT_WIDTH-1:ALU_OUT_WIDTH/2]
                                            : ALU_out_lat[(ALU_OUT_WIDTH/2)-1:0];
                end
                WR_inc_fifo = 1;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = 0;
                addr = 0;
                WR_en_regfile = 0;
                RD_en_regfile = 0;
                clk_en = 1;
            end

            ALU_A: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = rx_data;
                addr = 0;
                if (rx_data_valid) begin
                    WR_en_regfile = 1;
                end else begin
                    WR_en_regfile = 0;
                end
                RD_en_regfile = 0;
                clk_en = 0;
            end

            ALU_B: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = rx_data;
                addr = 1;
                if (rx_data_valid) begin
                    WR_en_regfile = 1;
                end else begin
                    WR_en_regfile = 0;
                end
                RD_en_regfile = 0;
                clk_en = 0;
            end

            ALU_FUN: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_func = rx_data[ALU_FUNC_WIDTH-1:0];
                WR_data_regfile = 0;
                addr = 0;
                if (rx_data_valid) begin
                    ALU_en = 1;
                end else begin
                    ALU_en = 0;
                end
                WR_en_regfile = 0;
                RD_en_regfile = 0;
                clk_en = 1;
            end

            ALU_EXECUTION: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = 0;
                addr = 0;
                WR_en_regfile = 0;
                RD_en_regfile = 0;
                clk_en = 1; 
            end

            default: begin
                WR_data_fifo = 0;
                WR_inc_fifo = 0;
                ALU_en = 0;
                ALU_func = 0;
                WR_data_regfile = 0;
                addr = 0;
                WR_en_regfile = 0;
                RD_en_regfile = 0;
                clk_en = 0;
            end
                
        endcase
    end

endmodule
