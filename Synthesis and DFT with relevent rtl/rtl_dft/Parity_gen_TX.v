module Parity_gen_TX 
# (parameter WIDTH = 8)
(
    input [WIDTH-1:0] data,
    input type,
    input valid,
    input clk,
    input rst_n,
    output reg parity
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            parity <= 0;
        end
        else begin
            if (valid) begin
                if (type == 0)
                begin
                    parity <= ^ data;    
                end
                else
                begin
                    parity <= ~^ data;
                end
            end 
        end
    end
    
endmodule