module UART_TX 
#(parameter DATA_WIDTH = 8)
(
    input clk,
    input rst_n,
    input [DATA_WIDTH-1:0] P_data,
    input data_valid,
    input par_en,
    input par_type,
    output tx_out,
    output busy
);

// bits values
localparam IDLE_STOP_BIT = 1'b1;
localparam START_BIT = 1'b0;

// internal connections

//=================================
//  FSM <-> Seriallizer   
//=================================
wire ser_done;
wire ser_en;

//=================================
//  FSM -> MUX   
//=================================
wire [1:0]mux_sel;

//=================================
//  Seriallizer -> MUX   
//=================================
wire data_serial;

//=================================
//  Parity -> MUX   
//=================================
wire parity;

//=================================
//  Parallel Data registered   
//=================================
reg [DATA_WIDTH-1:0] P_data_reg;

    //Register of p_data
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            P_data_reg <=0;
        end 
        else begin
            if (data_valid && !ser_en) begin
                P_data_reg <= P_data;
            end
        end
    end

    // FSM block
    FSM_TX FSM0 (
        .clk(clk),
        .rst_n(rst_n),
        .valid(data_valid),
        .ser_done(ser_done), // connection between p2s -> fsm
        .parity_en(par_en),
        .mux_sel(mux_sel), // connection between fsm -> mux
        .ser_en(ser_en), // connection between fsm -> p2s
        .busy(busy)
    );

    // MUX
    MUX_TX M0 (
        .in0(IDLE_STOP_BIT),
        .in1(START_BIT),
        .in2(data_serial),
        .in3(parity),
        .sel(mux_sel),
        .out(tx_out)
    );

    // Seriallizer
    parallel_2_serial_TX #(.WIDTH(DATA_WIDTH)) 
        P2S_0 (
            .rst_n(rst_n),
            .clk(clk),
            .en(ser_en),
            .data(P_data_reg),
            .done(ser_done),
            .S_data(data_serial)
        );

    // Parity Generator
    Parity_gen_TX #(.WIDTH(DATA_WIDTH)) 
        P0 (
            .clk(clk),
            .rst_n(rst_n),
            .parity(parity),
            .type(par_type),
            .valid(data_valid),
            .data(P_data_reg)
        );

endmodule