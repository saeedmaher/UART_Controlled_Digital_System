module Parity_check_RX (
    input rst_n,
    input clk,
    input en,
    input type,
    input data,
    input valid_bit,
    output par_err
);

reg count;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= 0;
        end
        else if(valid_bit && data && en) begin
            count <= count + 1;
        end
        else if (!en && valid_bit) begin
            count <= 0;
        end
    end
    
    assign par_err = (type)? !count:count;  

    
endmodule