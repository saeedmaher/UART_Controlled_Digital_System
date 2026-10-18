module FIFO_Mem 
#(
    parameter DATA_WIDTH = 8,
    parameter FIFO_DEPTH = 8,
    parameter ADDR_WIDTH = $clog2(FIFO_DEPTH)
)
(
    input rst_n,
    input clk,
    input [DATA_WIDTH-1:0] wdata,
    input wclken,
    input [ADDR_WIDTH-1:0]waddr,
    input [ADDR_WIDTH-1:0] raddr,
    output [DATA_WIDTH-1:0] rdata
);

integer i;

// Memory
reg [DATA_WIDTH-1:0] mem [FIFO_DEPTH-1:0];

    // Write operation seq
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            for (i=0; i<FIFO_DEPTH; i = i + 1) begin
                mem[i] <= 0;
            end
        end
        else begin
            if(wclken) begin
                mem [waddr] <= wdata;
            end
        end
    end

    // Read operation comb
    assign rdata = mem[raddr];

    
endmodule