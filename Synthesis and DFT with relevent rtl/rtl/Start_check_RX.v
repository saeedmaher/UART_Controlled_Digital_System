module Start_check_RX (
    input rst_n,
    input clk,
    input en,
    input data,
    input valid,
    output reg glitch
);

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            glitch <= 0;
        end
        else if (!en) begin
            glitch <= 0;
        end
        else if (valid) begin
            glitch <= data; 
        end
    end

endmodule