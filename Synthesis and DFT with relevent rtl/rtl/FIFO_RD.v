module FIFO_RD 
#(
    parameter FIFO_DEPTH = 8,
    parameter ADDR_WIDTH = $clog2(FIFO_DEPTH)
)
(
    input clk,
    input rrst_n,
    input rinc,
    input [ADDR_WIDTH:0] rq2_wptr, // ADDR WIDTH + 1
    output reg rempty,
    output [ADDR_WIDTH-1:0] raddr,
    output reg [ADDR_WIDTH:0] rptr_reg // ADDR WIDTH + 1
);

//Read pointer Reg in binary
reg [ADDR_WIDTH:0] rptr_bin;
//Read pointer after gray encoding
wire [ADDR_WIDTH:0] rptr; 
    always @(posedge clk or negedge rrst_n) begin
        if(!rrst_n) begin 
            rptr_bin <= 0;
        end
        else begin
            if(rinc && !rempty) begin
                rptr_bin <= rptr_bin + 1;
            end
        end
    end

    //convert binary into grey
    bin_2_gray #(.WIDTH(ADDR_WIDTH+1)) B2G(
        .bin_in(rptr_bin),
        .gray_out(rptr)
    );

    // Register he output conn to synchronizer for glitches
    always @(posedge clk or negedge rrst_n) begin
        if (!rrst_n) begin
            rptr_reg <= 0;
        end 
        else begin
            rptr_reg <= rptr;
        end
    end

    // Read address 
    assign raddr = rptr_bin[ADDR_WIDTH-1:0];

    // Empty flag logic
    always @(*) begin
        if (rptr == rq2_wptr) begin
            rempty = 1;
        end
        else begin
            rempty = 0;
        end
    end
    
endmodule
