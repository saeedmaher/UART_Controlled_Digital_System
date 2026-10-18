module MUX_TX (
    input in0,
    input in1,
    input in2,
    input in3,
    input [1:0] sel,
    output reg out
);

    always @(*) begin
        case (sel)
            2'b00: begin
                out = in0;
            end
            2'b01: begin
                out = in1;
            end
            2'b10: begin
                out = in2;
            end
            2'b11: begin
                out = in3;
            end
            default: out = 0;
        endcase
    end
    
endmodule