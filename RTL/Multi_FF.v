module Multi_FF 
#(parameter NUM_STAGES = 2)
(
    input bus_en,
    input clk,
    input rst_n,
    output en_sync
);

reg [NUM_STAGES-1:0] sync_reg;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sync_reg <= {NUM_STAGES{1'b0}};
        end 
        else begin
            sync_reg <= {sync_reg[NUM_STAGES-2:0],bus_en};
        end
    end

    assign en_sync = sync_reg[NUM_STAGES-1];
    
endmodule