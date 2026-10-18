module bin_2_gray 
#(parameter WIDTH = 5)
(
    input [WIDTH-1:0] bin_in,
    output reg [WIDTH-1:0] gray_out
);

integer i;

    always @(*) begin
        gray_out[WIDTH-1] = bin_in [WIDTH-1];
        for (i=WIDTH-2; i>=0; i = i -1) begin
            gray_out [i] = bin_in[i+1]^bin_in[i];
        end
    end

endmodule