module UART_RX 
#(parameter DATA_WIDTH = 8)(
    input RX_IN,
    input clk,
    input rst_n, 
    input [5:0] presscale,
    input PAR_EN,
    input PAR_TYPE,
    output [DATA_WIDTH-1:0] P_data,
    output parity_error,
    output stop_error,
    output data_valid
);

//===========================================================
// internal
//===========================================================

// -----------------------------------------------------------
//  Counter <-> CU
// -----------------------------------------------------------
wire [3:0] bit_count_counter_cu;
wire enable_counter_cu;

// -----------------------------------------------------------
//  sampler <-> counter <-> CU
// -----------------------------------------------------------
wire [4:0] edge_count;

// -----------------------------------------------------------
//  stop check <-> CU
// -----------------------------------------------------------
wire stop_en_cu_checker;
wire stop_err_cu_checker;

// -----------------------------------------------------------
//  start check <-> CU
// -----------------------------------------------------------
wire start_en_cu_checker;
wire start_err_cu_checker;

// -----------------------------------------------------------
//  parity check <-> CU
// -----------------------------------------------------------
wire parity_en_cu_checker;
wire parity_err_cu_checker;

// -----------------------------------------------------------
//  sampler <-> CU
// -----------------------------------------------------------
wire data_samp_en;

// -----------------------------------------------------------
//  serializer <-> CU
// -----------------------------------------------------------
wire data_ser_en;

// -----------------------------------------------------------
//  sampler -> all blocks
// -----------------------------------------------------------
wire data_bit;
wire valid_data_bit;

    // ========================================================
    // FSM control unit
    // ========================================================
    FSM_CU_RX C0 (
        .clk(clk),
        .rst_n(rst_n),
        .RX_IN(RX_IN),
        .PAR_EN(PAR_EN),
        .edge_count(edge_count),
        .bit_count(bit_count_counter_cu),
        .start_glitch(start_err_cu_checker),
        .par_err(parity_err_cu_checker),
        .stop_err(stop_err_cu_checker),
        .start_chk_en(start_en_cu_checker),
        .presscale(presscale),
        .par_chk_en(parity_en_cu_checker),
        .stop_chk_en(stop_en_cu_checker),
        .enable_counter(enable_counter_cu),
        .sampling_en(data_samp_en),
        .serial_en(data_ser_en),
        .data_valid(data_valid),
        .stop_error(stop_error),
        .parity_error(parity_error)
    );

    // ========================================================
    // Counter
    // ========================================================
    edge_bit_counter_RX counter0 (
        .clk(clk),
        .rst_n(rst_n),
        .en(enable_counter_cu),
        .PAR_EN(PAR_EN),
        .presscale(presscale),
        .edge_count(edge_count),
        .bit_count(bit_count_counter_cu)
    );

    // ========================================================
    // Parity checker
    // ========================================================
    Parity_check_RX PAR_CHKER0 (
        .clk(clk),
        .rst_n(rst_n),
        .en(parity_en_cu_checker),
        .type(PAR_TYPE),
        .data(data_bit),
        .valid_bit(valid_data_bit),
        .par_err(parity_err_cu_checker)
    );

    // ========================================================
    // Start checker
    // ========================================================
    Start_check_RX STAR_CHECKER0 (
        .clk(clk),
        .rst_n(rst_n),
        .en(start_en_cu_checker),
        .data(data_bit),
        .valid(valid_data_bit),
        .glitch(start_err_cu_checker)
    );

    // ========================================================
    // Stop checker
    // ========================================================
    Stop_check_RX STOP_CHECKER0 (
        .clk(clk),
        .rst_n(rst_n),
        .en(stop_en_cu_checker),
        .data(data_bit),
        .valid(valid_data_bit),
        .err(stop_err_cu_checker)
    );

    // ========================================================
    // Serializer
    // ========================================================
    Serial_2_parallel_RX #(.DATA_WIDTH(DATA_WIDTH)) S2P (
        .rst_n(rst_n),
        .clk(clk),
        .bit_in(data_bit),
        .en(data_ser_en),
        .valid(valid_data_bit),
        .P_data(P_data)
    );

    // ========================================================
    // sampler
    // ========================================================
    sampler_RX DATA_SAMPLE0 (
        .clk(clk),
        .rst_n(rst_n),
        .en(data_samp_en),
        .edge_count(edge_count),
        .RX_IN(RX_IN),
        .presscale(presscale),
        .bit_out(data_bit),
        .valid_bit(valid_data_bit)
    );


endmodule