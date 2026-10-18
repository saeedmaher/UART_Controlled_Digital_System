module parallel_2_serial_TX 
#(parameter WIDTH = 8)
(
    input rst_n,
    input clk,
    input en,
    input [WIDTH-1:0] data,
    output reg done,
    output reg S_data
);

//internal counter
localparam COUNTER_WIDTH =$clog2(WIDTH) ;
reg [COUNTER_WIDTH-1:0] counter;


    //serailizing data
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            S_data <= 0;
        end 
        else begin
            if (en) begin
                S_data <= data[counter];
            end
        end
    end

    //done flag
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            done <= 0;
        end
        else if (counter == 7) begin
            done <= 1;
        end 
        else begin
            done <= 0;
        end
    end

    //counter 
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 0;
        end 
        else begin
            if (en) begin
                counter <= counter + 1;
            end
        end
    end
    
endmodule