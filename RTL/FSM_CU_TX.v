module FSM_TX (
    input clk,
    input rst_n,
    input valid,
    input ser_done,
    input parity_en,
    output reg [1:0] mux_sel,
    output ser_en,
    output busy
);
    
//states
localparam IDLE = 3'd0,
           START = 3'd1,
           DATA = 3'd2,
           PARITY = 3'd3,
           STOP = 3'd4;

//states
reg [2:0] ns,cs;

    // ================================================
    //state transation
    // ================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cs <= IDLE;
        end else begin
            cs <= ns;
        end
    end         


    // ================================================
    //next state logic
    // ================================================
    always @(*) begin
        case (cs)
            
            IDLE: begin
                if (valid) begin
                    ns = START;
                end else begin
                    ns = IDLE;
                end
            end

            START: begin
                ns = DATA;
            end

            DATA: begin
                if (ser_done) begin
                    if (!parity_en)
                        ns = STOP;
                    else 
                        ns = PARITY;
                end 
                else begin
                    ns = DATA;
                end
            end

            PARITY: begin
                ns = STOP;
            end

            STOP: begin
                ns = IDLE;
            end

            default: ns = IDLE;

        endcase
    end  
    
    // ================================================
    //output logic
    // ================================================
    //busy flag
    assign busy = (cs == IDLE)? 0:1;
    //mux selection
    always @(*) begin
        case (cs)
            IDLE: mux_sel = 0;
            START: mux_sel = 1;
            DATA: mux_sel = 2;
            PARITY: mux_sel = 3;
            STOP: mux_sel = 0; 
            default: mux_sel = 0;
        endcase
    end
    //serializer enable
    assign ser_en = (((cs == START) || (cs == DATA)) && !(ser_done))? 1:0;

endmodule