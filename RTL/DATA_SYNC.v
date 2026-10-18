module DATA_SYNC 
#(
    parameter NUMBER_STAGES = 2,
    parameter BUS_WIDTH = 8
)
(
    input [BUS_WIDTH-1:0] unsync_bus,
    input bus_enable,   
    input clk,
    input rst_n,
    output reg [BUS_WIDTH-1:0] sync_bus,
    output reg enable_pulse
);

// ======================================
// Internal signals
// ======================================
wire pulse_gen_out;
wire MFF_out;
wire [BUS_WIDTH-1:0] MUX_out;


    // ======================================
    // Multi flipflop
    // ======================================
    Multi_FF #(.NUM_STAGES(NUMBER_STAGES)) MFF0(
        .clk(clk),
        .rst_n(rst_n),
        .bus_en(bus_enable),
        .en_sync(MFF_out) // o/p MFF & i/p of PG
    );

    // ======================================
    // Pulse generator
    // ======================================
    Pulse_generator PG0 (
        .clk(clk),
        .rst_n(rst_n),
        .in(MFF_out), // o/p of multi FF
        .pulse(pulse_gen_out) // o/p of pulses gen
    );

    // ================================================
    // MUX
    // ================================================
    assign MUX_out = (pulse_gen_out)? unsync_bus:sync_bus;

    // =================================================
    // Registering sync bus and enable pulse
    // =================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sync_bus <= 0;
            enable_pulse <= 0;
        end 
        else begin
            sync_bus <= MUX_out;
            enable_pulse <= pulse_gen_out;
        end
    end

endmodule