module edge_bit_counter_RX (
    input clk,
    input rst_n,
    input en,
    input PAR_EN,
    input [5:0] presscale,
    output reg [4:0] edge_count,
    output reg [3:0] bit_count
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            edge_count <= 0;
        end
        else if (en) begin
            if (edge_count == presscale -1) begin
                edge_count <= 0;
            end
            else begin
                edge_count <= edge_count + 1;
            end
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            bit_count <= 0;
        end 
        else begin
            if (edge_count == presscale - 1) begin
                if (PAR_EN) begin
                    if (bit_count == 10) begin
                        bit_count <= 0;
                    end 
                    else begin
                        bit_count <= bit_count + 1;
                    end
                end
                else begin
                    if (bit_count == 9) begin
                        bit_count <= 0;
                    end 
                    else begin
                        bit_count <= bit_count + 1;
                    end
                end
            end
        end
    end
    
endmodule