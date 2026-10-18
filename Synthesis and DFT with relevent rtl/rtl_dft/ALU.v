module ALU
#(
     parameter DATA_IN_WIDTH = 8,
     parameter FUNC_WIDTH = 4,
     parameter DATA_OUT_WIDTH = 16
) (
    input [DATA_IN_WIDTH-1:0] A,B,
    input [FUNC_WIDTH-1:0] ALU_FUN,
    input clk,
    input rst_n,
    input enable,
    output reg [DATA_OUT_WIDTH-1:0] ALU_OUT,
    output reg out_valid
);

    reg [DATA_OUT_WIDTH-1:0] ALU_OUT_comb;
    reg out_valid_comb;

    //registering the output
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ALU_OUT <= 0;
            out_valid <= 0;
        end 
        else begin
                ALU_OUT <= ALU_OUT_comb;
                out_valid <= out_valid_comb;
        end
        
    end

    //combinational logic 
    always @(*) begin
        if (enable) begin
            case (ALU_FUN)
                
                4'b0000 : begin
                ALU_OUT_comb = A + B;
                out_valid_comb = 1;
                end

                4'b0001 : begin
                    ALU_OUT_comb = A - B;
                    out_valid_comb = 1;
                end

                4'b0010 : begin
                    ALU_OUT_comb = A*B;
                    out_valid_comb = 1;
                end

                4'b0011 : begin
                    if (B == 0) begin
                        ALU_OUT_comb = 16'hffff;   
                    end
                    else begin
                        ALU_OUT_comb = A / B;
                    end
                    out_valid_comb = 1;
                end

                4'b0100 : begin
                    ALU_OUT_comb = A & B;
                    out_valid_comb = 1;
                end

                4'b0101 : begin
                    ALU_OUT_comb = A | B;
                    out_valid_comb = 1;
                end

                4'b0110 : begin
                    ALU_OUT_comb = ~(A & B);
                    out_valid_comb = 1;
                end

                4'b0111 : begin
                    ALU_OUT_comb = ~(A | B);
                    out_valid_comb = 1;
                end

                4'b1000 : begin
                    ALU_OUT_comb = A ^ B;
                    out_valid_comb = 1;
                end

                4'b1001 : begin
                    ALU_OUT_comb = A ~^ B;
                    out_valid_comb = 1;
                end

                4'b1010 : begin
                    if (A == B) begin
                        ALU_OUT_comb = 1;
                    end 
                    else begin
                        ALU_OUT_comb = 0;
                    end
                    out_valid_comb = 1;
                end

                4'b1011 : begin
                    if (A > B) begin
                        ALU_OUT_comb = 2;
                    end 
                    else begin
                        ALU_OUT_comb = 0;
                    end
                    out_valid_comb = 1;
                end

                4'b1100 : begin
                    if (A < B) begin
                        ALU_OUT_comb = 3;
                    end 
                    else begin
                        ALU_OUT_comb = 0;
                    end
                    out_valid_comb = 1;
                end

                4'b1101 : begin
                    ALU_OUT_comb = A>>1;
                    out_valid_comb = 1;
                end

                4'b1110 : begin
                    ALU_OUT_comb = A << 1;
                    out_valid_comb = 1;
                end

                default: begin
                    ALU_OUT_comb = 0;
                    out_valid_comb = 0;
                end
                    
            endcase
        end
        else begin
            ALU_OUT_comb = 0;
            out_valid_comb = 0;
        end
    end

endmodule
