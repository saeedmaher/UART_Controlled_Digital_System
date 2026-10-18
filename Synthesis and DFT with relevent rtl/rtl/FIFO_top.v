module FIFO_top 
#(
    parameter DATA_WIDTH = 8,
    parameter FIFO_DEPTH = 8
)
(
    input w_clk,
    input w_rst,
    input w_inc,
    input r_clk,
    input r_rst,
    input r_inc,
    input [DATA_WIDTH-1:0] wr_data,
    output full,
    output empty,
    output [DATA_WIDTH-1:0] rd_data
);
localparam ADDR_WIDTH = $clog2(FIFO_DEPTH);

    //=========================================================
    // internal signals
    //=========================================================
   
    //--------------------------------------------------------
    // WPTR <-> MEMORY
    //--------------------------------------------------------
    wire [ADDR_WIDTH-1:0] wr_addr;

    //--------------------------------------------------------
    // Enable of the memory to write
    //--------------------------------------------------------
    wire wr_en;

    //--------------------------------------------------------
    // RPTR <-> MEMORY
    //--------------------------------------------------------
    wire [ADDR_WIDTH-1:0] rd_addr;

    //--------------------------------------------------------
    // UNSYNC & SYNC pointer
    //--------------------------------------------------------
    wire [ADDR_WIDTH:0] wptr_unsync;
    wire [ADDR_WIDTH:0] wptr_sync;
    wire [ADDR_WIDTH:0] rptr_unsync;
    wire [ADDR_WIDTH:0] rptr_sync;

    //--------------------------------------------------------
    // Full & Empty
    //--------------------------------------------------------
    wire wr_full;
    wire rd_empty;


    //=========================================================
    // Blocks
    //=========================================================

    //--------------------------------------------------------
    // Memory
    //--------------------------------------------------------    
    FIFO_Mem #(.DATA_WIDTH(DATA_WIDTH), .FIFO_DEPTH(FIFO_DEPTH)) MEM0 (
        .clk(w_clk),
        .rst_n(w_rst),
        .wdata(wr_data),
        .waddr(wr_addr), // from WPTR block
        .wclken(wr_en), // logic for enable
        .raddr(rd_addr), // from RPTR block
        .rdata(rd_data)
        );


    //--------------------------------------------------------
    // WRPTR
    //--------------------------------------------------------    
    FIFO_WR #(.FIFO_DEPTH(FIFO_DEPTH)) WR0 (
        .clk(w_clk),
        .wrst_n(w_rst),
        .winc(w_inc),
        .wq2_rptr(rptr_sync), // output form the RD2WR_ sync
        .wfull(wr_full),
        .waddr(wr_addr),
        .wptr_reg(wptr_unsync)
    );

    //--------------------------------------------------------
    // RDPTR
    //--------------------------------------------------------    
    FIFO_RD #(.FIFO_DEPTH(FIFO_DEPTH)) RD0 (
        .clk(r_clk),
        .rrst_n(r_rst),
        .rinc(r_inc),
        .rq2_wptr(wptr_sync), // output form the WR2RD_ sync
        .rempty(rd_empty),
        .raddr(rd_addr),
        .rptr_reg(rptr_unsync)
    );

    //--------------------------------------------------------
    // WR2RD SYNC
    //--------------------------------------------------------    
    Double_FF #(.FIFO_DEPTH(FIFO_DEPTH)) wr2rd_sync (
        .clk(r_clk),
        .rst_n(r_rst),
        .unsync_data(wptr_unsync),
        .sync_data(wptr_sync)
    );

    //--------------------------------------------------------
    // RD2WR SYNC
    //--------------------------------------------------------    
    Double_FF #(.FIFO_DEPTH(FIFO_DEPTH)) rd2rwrsync (
        .clk(w_clk),
        .rst_n(w_rst),
        .unsync_data(rptr_unsync),
        .sync_data(rptr_sync)
    );

    // Enable logic 
    assign wr_en = w_inc & ~wr_full;    

    // Full and empty to ports
    assign full = wr_full;
    assign empty = rd_empty;

endmodule
