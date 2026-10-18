module RST_SYNC 
#(parameter NUM_STAGES = 2)
(
    input RST,
    input CLK,
    output SYNC_RST
);

// register
reg  [NUM_STAGES-1:0] rst_sync_reg;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            rst_sync_reg <= {NUM_STAGES{1'b0}};
        end
        else begin
            {rst_sync_reg} <= {rst_sync_reg[NUM_STAGES-2:0],1'b1};
        end
    end

    assign SYNC_RST = rst_sync_reg[NUM_STAGES-1];

endmodule
