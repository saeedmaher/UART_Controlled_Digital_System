module Serial_2_parallel_RX 
#(
    parameter DATA_WIDTH = 8
)(
    input rst_n,
    input clk,
    input bit_in,
    input en,
    input valid,
    output [DATA_WIDTH-1:0] P_data
);

reg [DATA_WIDTH-1:0] shift_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift_reg <= 0;
        end 
        else if (valid && en) begin
            shift_reg <= {bit_in,shift_reg[7:1]};
        end
    end

    assign P_data = shift_reg;

    
endmodule