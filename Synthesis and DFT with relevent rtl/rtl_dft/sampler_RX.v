module sampler_RX (
    input clk,
    input rst_n,
    input en,
    input [4:0] edge_count,
    input RX_IN,
    input [5:0] presscale,
    output bit,
    output reg valid_bit
);

reg [2:0]data_cmp;

    // Prescale is just a signal need in future work to determin 
    // the bit scale now when it is high it is doig the job when 
    // low it gives zero outputs

    always @(posedge clk or negedge rst_n) begin
            if (!rst_n) begin
                data_cmp <= 0;
                valid_bit <= 0;
            end
            else if (presscale == 8 || presscale == 16 || presscale == 32) begin
                if (en) begin 
                    if (edge_count == ((presscale/2)-1)) begin
                        data_cmp[0] <= RX_IN;
                        valid_bit <= 0;
                    end
                    else if (edge_count == ((presscale/2))) begin
                        data_cmp[1] <= RX_IN;
                        valid_bit <= 0;
                    end
                    else if (edge_count == ((presscale/2)+1)) begin
                        data_cmp[2] <= RX_IN;
                        valid_bit <= 1;
                    end
                    else begin
                        valid_bit <= 0;
                    end
                end
            end
            else begin
                valid_bit <= 0;
                data_cmp <= 0;    
            end            
    end

    assign bit = (data_cmp[0] == data_cmp[1])? data_cmp[0]:
                 (data_cmp[1] == data_cmp[2])? data_cmp[1]:data_cmp[0];
                   
    
endmodule