module Integer_CLK_DIV (
    input i_ref_clk,
    input i_rst_n,
    input i_clk_en,
    input [7:0] i_div_ratio,
    output o_div_clk
);

// internal counter 
reg [7:0] counter;
// internal enable for divsion
wire CLK_DIV_EN;
// internal clock divided
reg clk_div_reg;

    // enabling division
    assign CLK_DIV_EN = i_clk_en && (i_div_ratio != 0) && (i_div_ratio != 1);
    // division logic
    always @(posedge i_ref_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            counter <= 0;
            clk_div_reg <= 0;
        end 
        else begin
            if (counter == 0) begin
                counter <= i_div_ratio - 1;
                clk_div_reg <= ~clk_div_reg;
            end 
            else if (counter == (i_div_ratio >> 1)) begin
                clk_div_reg <= ~clk_div_reg;
                counter <= counter - 1;
            end 
            else begin
                counter <= counter - 1;
            end
        end 
    end

    // enable to get the divided or the reference
    assign o_div_clk = (CLK_DIV_EN)? clk_div_reg:i_ref_clk;

    
endmodule
