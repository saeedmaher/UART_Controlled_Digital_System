module UART_TOP 
#(parameter DATA_WIDTH = 8)
(
    // control signals & configs
    input rst_n,
    input par_en,
    input par_type,

    // TX ports
    input tx_clk,
    input [DATA_WIDTH-1:0] tx_in_p_data,
    input tx_in_v,
    output tx_out_s,
    output tx_busy,

    // RX ports
    input rx_clk,
    input rx_in_S,
    input [5:0] presscale,
    output [DATA_WIDTH-1:0] rx_out_p,
    output rx_par_err,
    output rx_stop_err,
    output rx_data_val
);


    // ========================================
    // UART_TX
    // ========================================
    UART_TX #(.DATA_WIDTH(DATA_WIDTH)) TX0 (
        .clk(tx_clk),
        .rst_n(rst_n),
        .P_data(tx_in_p_data),
        .data_valid(tx_in_v),
        .par_en(par_en),
        .par_type(par_type),
        .tx_out(tx_out_s),
        .busy(tx_busy)
    );

    // ========================================
    // UART_RX
    // ========================================
    UART_RX #(.DATA_WIDTH(DATA_WIDTH)) RX0 (
        .clk(rx_clk),
        .rst_n(rst_n),
        .RX_IN(rx_in_S),
        .presscale(presscale),
        .PAR_EN(par_en),
        .PAR_TYPE(par_type),
        .P_data(rx_out_p),
        .parity_error(rx_par_err),
        .stop_error(rx_stop_err),
        .data_valid(rx_data_val)
    );  


endmodule