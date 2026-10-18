module Double_FF 
#(
    parameter FIFO_DEPTH = 8,
    parameter POINTER_WIDTH = $clog2(FIFO_DEPTH) +1
)
(
    input rst_n,
    input clk,
    input [POINTER_WIDTH-1:0] unsync_data,
    output reg [POINTER_WIDTH-1:0] sync_data
);

// Double FF
reg [POINTER_WIDTH-1:0] D_FF;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            D_FF <= 0;
            sync_data <= 0;
        end
        else begin
            D_FF <= unsync_data;
            sync_data <= D_FF;
        end
    end
    
endmodule
