module Stop_check_RX (
    input rst_n,
    input clk,
    input en,
    input data,
    input valid,
    output reg err
);

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            err <= 0;
        end
        else if (!en) begin
            err <= 0;
        end
        else if (valid) begin
            err <= ~data; 
        end
    end

endmodule