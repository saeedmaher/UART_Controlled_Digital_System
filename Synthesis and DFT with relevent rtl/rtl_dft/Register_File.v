module Register_File #(
    parameter WIDTH = 8, DEPTH = 16 , ADDR = $clog2(DEPTH)
)
(
    input [WIDTH-1:0] WrData,
    input [ADDR-1:0] Address,
    input WrEn,RdEn,CLK,RST,
    output reg [WIDTH-1:0] RdData,
    output reg rd_valid,
    output [WIDTH-1:0] DIV_ratio,
    output [WIDTH-1:0] op_A,
    output [WIDTH-1:0] op_B,
    output [WIDTH-1:0] UART_CON
);

// loop var
integer i;
// register file
reg [WIDTH-1:0] reg_file [DEPTH-1:0];

    always @(posedge CLK or negedge RST) begin
        //reset
        if(!RST) begin
            for (i=0; i<DEPTH; i= i + 1) begin
                if (i == 2) begin
                    reg_file[i] <= 129; //'b1000_0001
                end
                else if (i == 3) begin
                    reg_file[i] <= 32; //'b0010_0000
                end
                else begin
                    reg_file[i] <= 0;
                end
            end
            RdData <= 0;		
            rd_valid <= 0;
        end
        // read-write operations
        else begin
            rd_valid <= 0;
            //write op
            if (WrEn && !RdEn) begin
                reg_file[Address] <= WrData;
            end
            //read op
            else if (RdEn && !WrEn) begin
                RdData <= reg_file[Address];
                rd_valid <= 1;
            end  
        end
    end

    // configs regs
    assign op_A = reg_file[0];
    assign op_B = reg_file[1];
    assign UART_CON = reg_file[2];
    assign DIV_ratio = reg_file[3];
endmodule
