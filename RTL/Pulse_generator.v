module Pulse_generator (
    input in,
    input clk,
    input rst_n,
    output pulse
);

reg in_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            in_reg <= 0;
        end 
        else begin
            in_reg <= in;
        end
    end

    assign pulse = !in_reg & in;
    
endmodule