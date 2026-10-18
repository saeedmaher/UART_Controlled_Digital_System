module SYS_TOP 
#( 
    parameter DATA_WIDTH = 8,
    parameter RF_ADDR = 4,
    parameter ALU_OUTPUT_WIDTH = 16,
    parameter ALU_FUNC_WIDTH = 4,
    parameter DATA_SYNC_STAGES = 2,
    parameter RST_SYNC_STAGES = 2
) (
    input RST_N,
    input UART_CLK,
    input REF_CLK,
    input UART_RX_IN,
    output UART_TX_OUT,
    output parity_error,
    output stop_error
);

    //=========================================================
    // Internal signals
    //=========================================================
    
    // Reset SYNC O/P
    //---------------------------------------------------------
    wire REF_SYNC_RST_n; //REF CLK domain
    wire UART_SYNC_RST_n; // UART CLK domain

    // Configs
    //---------------------------------------------------------
    wire [DATA_WIDTH-1:0] UART_CONFIG;
    wire [DATA_WIDTH-1:0] DIV_ratio_wire;     

    // CTRL <-> ALU
    //---------------------------------------------------------
    wire [ALU_FUNC_WIDTH-1:0] ALU_function;
    wire ALU_enable;
    wire [ALU_OUTPUT_WIDTH-1:0] ALU_out_data;
    wire ALU_out_valid;

    // CTRL <-> Reg File
    //---------------------------------------------------------
    wire [DATA_WIDTH-1:0] RD_data_wire;
    wire RD_valid_wire;
    wire [DATA_WIDTH-1:0] WR_data_regfile_wire;
    wire [RF_ADDR-1:0] addr_wire;
    wire RD_en_wire;
    wire WR_en_wire;

    // CTRL <-> FIFO
    //---------------------------------------------------------
    wire [DATA_WIDTH-1:0] fifio_wr_data_wire;
    wire fifo_full_wire;
    wire fifo_wr_inc_wire;

    // CTRL <-> CLK divider
    //---------------------------------------------------------
    wire div_en_wire;

    // CTRL <-> Data Sync
    //---------------------------------------------------------
    wire sync_en;
    wire [DATA_WIDTH-1:0] sync_data;

    // ICG
    //---------------------------------------------------------
    wire clk_gated;
    wire gated_clk_en;

    // ALU <-> Reg File
    //---------------------------------------------------------
    wire [DATA_WIDTH-1:0] OP_A_wire;
    wire [DATA_WIDTH-1:0] OP_B_wire;

    // CLK DIV TX & RX
    //---------------------------------------------------------
    wire TX_CLK;
    wire RX_CLK;
    wire [DATA_WIDTH-1:0] RX_DIV_ratio;
    assign RX_DIV_ratio = (UART_CONFIG[7:2] == 8)? 4:
                          (UART_CONFIG[7:2] == 16)? 2:1; //else is 32

    // UART <-> FIFO
    //---------------------------------------------------------
    wire [DATA_WIDTH-1:0] fifio_rd_data_wire;
    wire fifo_empty_wire;
    wire fifo_rd_inc_wire;

    // UART <-> DATA SYNC
    //---------------------------------------------------------
    wire [DATA_WIDTH-1:0] data_unsync;
    wire en_data;

     // UART <-> DATA SYNC
    //---------------------------------------------------------
    wire busy_sig;

    //=========================================================
    // Blocks
    //=========================================================

    // RST SYNC REF domain
    //---------------------------------------------------------
    RST_SYNC #(.NUM_STAGES(RST_SYNC_STAGES)) RST_SYNC0(
        .CLK(REF_CLK),
        .RST(RST_N),
        .SYNC_RST(REF_SYNC_RST_n)
    );

    // RST SYNC UART domain
    //---------------------------------------------------------
    RST_SYNC #(.NUM_STAGES(RST_SYNC_STAGES)) RST_SYNC1(
        .CLK(UART_CLK),
        .RST(RST_N),
        .SYNC_RST(UART_SYNC_RST_n)
    );

    // ICG
    //---------------------------------------------------------
    CLK_gate ICG0(
        .clk_en(gated_clk_en),
        .clk(REF_CLK),
        .gated_clk(clk_gated)
    );

    // CLK divider TX
    //---------------------------------------------------------
    Integer_CLK_DIV CLK_DIV0 (
        .i_ref_clk(UART_CLK),
        .i_rst_n(UART_SYNC_RST_n),
        .i_clk_en(div_en_wire),
        .i_div_ratio(DIV_ratio_wire),
        .o_div_clk(TX_CLK)
    );

    // CLK divider RX
    //---------------------------------------------------------
    Integer_CLK_DIV CLK_DIV1 (
        .i_ref_clk(UART_CLK),
        .i_rst_n(UART_SYNC_RST_n),
        .i_clk_en(div_en_wire),
        .i_div_ratio(RX_DIV_ratio),
        .o_div_clk(RX_CLK)
    );

    // System CTRL
    //---------------------------------------------------------
    SYS_CTRL #(.OPERANDS_WIDTH(DATA_WIDTH),
                .ALU_FUNC_WIDTH(ALU_FUNC_WIDTH),
                .ALU_OUT_WIDTH(ALU_OUTPUT_WIDTH),
                .REG_WIDTH(DATA_WIDTH),
                .ADDR_WIDTH(RF_ADDR),
                .UART_DATA_WIDTH(DATA_WIDTH)) 
        CTRL0 (
            .clk(REF_CLK),
            .rst_n(REF_SYNC_RST_n),
            .ALU_out(ALU_out_data),
            .ALU_out_valid(ALU_out_valid),
            .ALU_func(ALU_function),
            .ALU_en(ALU_enable),
            .clk_en(gated_clk_en), //ICG enable 
            .RD_data(RD_data_wire),
            .RD_valid(RD_valid_wire),
            .WR_data_regfile(WR_data_regfile_wire),
            .WR_en_regfile(WR_en_wire),
            .RD_en_regfile(RD_en_wire),
            .addr(addr_wire),
            .fifo_full_flag(fifo_full_wire),
            .WR_inc_fifo(fifo_wr_inc_wire),
            .WR_data_fifo(fifio_wr_data_wire),
            .rx_data(sync_data),
            .rx_data_valid(sync_en),
            .clk_div_en(div_en_wire)
        );

    // ALU
    //---------------------------------------------------------
    ALU #(.DATA_IN_WIDTH(DATA_WIDTH), 
          .FUNC_WIDTH(ALU_FUNC_WIDTH), 
          .DATA_OUT_WIDTH(ALU_OUTPUT_WIDTH))
        ALU0 (
            .clk(clk_gated),
            .rst_n(REF_SYNC_RST_n),
            .enable(ALU_enable),
            .A(OP_A_wire),
            .B(OP_B_wire),
            .ALU_FUN(ALU_function),
            .ALU_OUT(ALU_out_data),
            .out_valid(ALU_out_valid)
        );

    // Reg File
    //---------------------------------------------------------
    Register_File #(.WIDTH(DATA_WIDTH), .DEPTH(16)) RF0(
        .WrData(WR_data_regfile_wire),
        .Address(addr_wire),
        .WrEn(WR_en_wire),
        .RdEn(RD_en_wire),
        .CLK(REF_CLK),
        .RST(REF_SYNC_RST_n),
        .RdData(RD_data_wire),
        .rd_valid(RD_valid_wire),
        .DIV_ratio(DIV_ratio_wire),
        .op_A(OP_A_wire),
        .op_B(OP_B_wire),
        .UART_CON(UART_CONFIG)
    );

    // FIFO
    //---------------------------------------------------------
    FIFO_top #(.DATA_WIDTH(DATA_WIDTH), .FIFO_DEPTH(8)) FIFO0(
        .w_clk(REF_CLK),
        .w_rst(REF_SYNC_RST_n),
        .w_inc(fifo_wr_inc_wire),
        .r_clk(TX_CLK),
        .r_inc(fifo_rd_inc_wire),
        .r_rst(UART_SYNC_RST_n),
        .wr_data(fifio_wr_data_wire),
        .full(fifo_full_wire),
        .empty(fifo_empty_wire),
        .rd_data(fifio_rd_data_wire)
    );

    // Pulse generator
    //---------------------------------------------------------
    Pulse_generator Pgen0 (
        .in(busy_sig),
        .clk(TX_CLK),
        .rst_n(UART_SYNC_RST_n),
        .pulse(fifo_rd_inc_wire)
    );

    // Data SYNC
    //---------------------------------------------------------
    DATA_SYNC #(.NUMBER_STAGES(DATA_SYNC_STAGES),
                 .BUS_WIDTH(DATA_WIDTH))
        D_SYNC0(
            .unsync_bus(data_unsync),
            .bus_enable(en_data),
            .clk(REF_CLK),
            .rst_n(REF_SYNC_RST_n),
            .sync_bus(sync_data),
            .enable_pulse(sync_en)
        );

    // UART
    //---------------------------------------------------------
    UART_TOP #(.DATA_WIDTH(DATA_WIDTH))
        UART0(
            .rst_n(UART_SYNC_RST_n),
            .par_en(UART_CONFIG[0]),
            .par_type(UART_CONFIG[1]),
            .presscale(UART_CONFIG[7:2]),
            .tx_clk(TX_CLK),
            .tx_in_p_data(fifio_rd_data_wire),
            .tx_in_v(~fifo_empty_wire),
            .tx_out_s(UART_TX_OUT),
            .tx_busy(busy_sig),
            .rx_clk(RX_CLK),
            .rx_in_S(UART_RX_IN),
            .rx_out_p(data_unsync),
            .rx_par_err(parity_error),
            .rx_stop_err(stop_error),
            .rx_data_val(en_data)
        );

endmodule