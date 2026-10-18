module CLK_gate (
    input clk_en,
    input clk,
    output gated_clk
);

// for RTL sim
reg en_latched;

    always @(clk_en or clk) begin
        if(!clk) begin
            en_latched <= clk_en;
        end
    end

    assign gated_clk = clk & en_latched;

// for synthesis
/*
TLATNCAX12M U0_TLATNCAX12M (
.E(clk_en),
.CK(clk),
.ECK(gated_clk)
);
*/
endmodule