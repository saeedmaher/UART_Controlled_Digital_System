module FIFO_WR 
#(
    parameter FIFO_DEPTH = 8,
    parameter ADDR_WIDTH = $clog2(FIFO_DEPTH)
)
(
    input clk,
    input wrst_n,
    input winc,
    input [ADDR_WIDTH:0]wq2_rptr, // ADDR WIDTH + 1
    output reg wfull,
    output [ADDR_WIDTH-1:0] waddr,
    output reg [ADDR_WIDTH:0] wptr_reg // ADDR WIDTH + 1
);
//Write pointer Reg in binary
reg [ADDR_WIDTH:0] wptr_bin;
// Write pointer after gray encoding
wire [ADDR_WIDTH:0] wptr;

    always @(posedge clk or negedge wrst_n) begin
        if(!wrst_n) begin 
            wptr_bin <= 0;
        end
        else begin
            if(winc && !wfull) begin
                wptr_bin <= wptr_bin + 1;
            end
        end
    end

    //convert binary into grey
    bin_2_gray #(.WIDTH(ADDR_WIDTH+1)) B2G(
        .bin_in(wptr_bin),
        .gray_out(wptr)
    );

    // Register he output conn to synchronizer for glitches
    always @(posedge clk or negedge wrst_n) begin
        if (!wrst_n) begin
            wptr_reg <= 0;
        end 
        else begin
            wptr_reg <= wptr;
        end
    end

    // Wrtie address 
    assign waddr = wptr_bin[ADDR_WIDTH-1:0];

    // Full flag logic
    always @(*) begin
        if (wptr[ADDR_WIDTH] != wq2_rptr[ADDR_WIDTH] &&
            wptr[ADDR_WIDTH-1] != wq2_rptr[ADDR_WIDTH-1] &&
            wptr[ADDR_WIDTH-2:0] == wq2_rptr[ADDR_WIDTH-2:0]) begin
            wfull = 1;
        end
        else begin
            wfull = 0;
        end
    end

    
endmodule