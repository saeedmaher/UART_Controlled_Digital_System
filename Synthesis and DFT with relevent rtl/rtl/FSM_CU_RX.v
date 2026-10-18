module FSM_CU_RX (
    input clk,
    input rst_n,
    input RX_IN,
    input PAR_EN,
    input [4:0] edge_count,
    input [3:0] bit_count,
    input start_glitch,
    input par_err,
    input stop_err,
    input [5:0] presscale,
    output reg start_chk_en,
    output reg par_chk_en,
    output reg stop_chk_en,
    output reg enable_counter,
    output reg sampling_en,
    output reg serial_en,
    output reg data_valid,
    output reg stop_error,
    output reg parity_error
);

// states
localparam IDLE                 = 3'd0,
            START_CHK           = 3'd1,
            NORMAL_DATA         = 3'd2,
            PARTIY_CHK          = 3'd3,
            STOP_CHK            = 3'd4,
            PAR_ERR_STOP_CHK    = 3'd5;


// Current and Next states
reg [2:0] cs,ns;

    // Next state transation
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            cs <= IDLE;
        else
            cs <= ns;
    end

    // Next state logic
    always @(*) begin
        case (cs)
            
            IDLE: begin
                if (!RX_IN) begin
                    ns = START_CHK;
                end 
                else begin
                   ns = IDLE; 
                end
            end

            START_CHK: begin
                if (edge_count == presscale - 1) begin
                    if (start_glitch) begin
                        ns = IDLE;
                    end 
                    else begin
                        ns = NORMAL_DATA;
                    end
                end else begin
                    ns = START_CHK;
                end
            end

            NORMAL_DATA: begin
                if (bit_count == 8) begin
                    if (edge_count == presscale - 1) begin
                        if (PAR_EN) begin
                            ns = PARTIY_CHK;
                        end
                        else begin
                            ns = STOP_CHK;
                        end
                    end
                    else begin
                        ns = NORMAL_DATA;
                    end
                end 
                else begin
                    ns = NORMAL_DATA;
                end
            end

            PARTIY_CHK: begin
                if(edge_count == presscale - 1) begin
                    if (par_err) begin
                        ns = PAR_ERR_STOP_CHK;
                    end else begin
                        ns = STOP_CHK;
                    end
                end
                else begin
                    ns = PARTIY_CHK;
                end
            end

            PAR_ERR_STOP_CHK: begin
                if (edge_count == presscale - 1) begin
                    if (!RX_IN) begin
                        ns = START_CHK;
                    end 
                    else begin
                        ns = IDLE; 
                    end
                end else begin
                    ns = PAR_ERR_STOP_CHK;
                end
            end

            STOP_CHK: begin
                if (edge_count == presscale - 1) begin
                    if (!RX_IN) begin
                        ns = START_CHK;
                    end 
                    else begin
                        ns = IDLE; 
                    end
                end else begin
                    ns = STOP_CHK;
                end
            end

            default: ns = IDLE;

        endcase
    end

    // O/P logic
    // stop check enable
    always @(*) begin
        if(cs == STOP_CHK || cs == PAR_ERR_STOP_CHK) begin
            stop_chk_en = 1;
        end
        else begin
            stop_chk_en = 0;
        end
    end
    // parity check enable
    always @(*) begin
        if (cs == PARTIY_CHK || cs == NORMAL_DATA) begin
            par_chk_en = 1;
        end 
        else begin
            par_chk_en = 0;
        end
    end
    // start check enable
    always @(*) begin
        if (cs == START_CHK) begin
            start_chk_en = 1;
        end 
        else begin
            start_chk_en = 0;
        end
    end
    // counter enable + sampling enable
    always @(*) begin
        if (cs != IDLE) begin
            enable_counter = 1;
            sampling_en = 1;    
        end 
        else begin
            enable_counter = 0;
            sampling_en = 0;
        end
    end
    // parity & stop error
    always @(*) begin
        if(cs == PARTIY_CHK) begin
            parity_error = 0;
            stop_error = 0;
        end
        else if (cs == PAR_ERR_STOP_CHK) begin
            parity_error = 1;
            stop_error = stop_err;
        end
        else if (cs == STOP_CHK) begin
            parity_error = 0;
            stop_error = stop_err;
        end
        else begin
            parity_error = 0;
            stop_error = 0;
        end
    end
    // data valid
    // kept for 1 cycle for integrating with other parts
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            data_valid <= 0;
        end
        else begin
            if (cs == STOP_CHK) begin
                if(edge_count == presscale - 2) begin
                    data_valid <= ~stop_error; 
                end
            end 
            else begin
               data_valid <= 0;
            end
        end
    end
    //serializer enable
    always @(*) begin
        if(cs == NORMAL_DATA) begin
            serial_en = 1;
        end
        else begin
            serial_en = 0;
        end
    end

endmodule