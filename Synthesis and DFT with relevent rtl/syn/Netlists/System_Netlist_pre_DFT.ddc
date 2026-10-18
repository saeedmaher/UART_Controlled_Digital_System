/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Fri Oct  2 04:02:17 2026
/////////////////////////////////////////////////////////////


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \rst_sync_reg[0] ;

  DFFRQX2M \rst_sync_reg_reg[1]  ( .D(\rst_sync_reg[0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \rst_sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \rst_sync_reg[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \rst_sync_reg[0] ;

  DFFRQX2M \rst_sync_reg_reg[1]  ( .D(\rst_sync_reg[0] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \rst_sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \rst_sync_reg[0] ) );
endmodule


module CLK_gate ( clk_en, clk, gated_clk );
  input clk_en, clk;
  output gated_clk;


  TLATNCAX12M U0_TLATNCAX12Mv ( .E(clk_en), .CK(clk), .ECK(gated_clk) );
endmodule


module Integer_CLK_DIV_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, clk_div_reg, N6, N9, N10, N11, N12, N13, N14, N15, N16, N18, N19,
         N20, N21, N22, N23, N24, N25, N34, N35, N36, N37, N38, N39, N40, N41,
         n4, n5, n6, n7, n8, n9, n10, n1, n2, n3, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33;
  wire   [7:0] counter;

  DFFRQX2M clk_div_reg_reg ( .D(n10), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        clk_div_reg) );
  DFFRQX2M \counter_reg[3]  ( .D(N37), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[7]  ( .D(N41), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M \counter_reg[6]  ( .D(N40), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[4]  ( .D(N38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[5]  ( .D(N39), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[2]  ( .D(N36), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N35), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(N34), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  INVX2M U3 ( .A(n5), .Y(n33) );
  AO22X1M U4 ( .A0(N14), .A1(n33), .B0(N23), .B1(n5), .Y(N39) );
  AO22X1M U5 ( .A0(N9), .A1(n33), .B0(N18), .B1(n5), .Y(N34) );
  MX2X2M U6 ( .A(i_ref_clk), .B(clk_div_reg), .S0(N1), .Y(o_div_clk) );
  AO22X1M U7 ( .A0(N16), .A1(n33), .B0(N25), .B1(n5), .Y(N41) );
  AO22X1M U8 ( .A0(N15), .A1(n33), .B0(N24), .B1(n5), .Y(N40) );
  INVX2M U9 ( .A(counter[0]), .Y(N18) );
  XNOR2X2M U10 ( .A(clk_div_reg), .B(n4), .Y(n10) );
  NOR2X2M U11 ( .A(N6), .B(n33), .Y(n4) );
  NAND2X2M U12 ( .A(n6), .B(n7), .Y(n5) );
  NOR4X1M U13 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n7) );
  NOR4X1M U14 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n6) );
  AO22X1M U15 ( .A0(N13), .A1(n33), .B0(N22), .B1(n5), .Y(N38) );
  AO22X1M U16 ( .A0(N12), .A1(n33), .B0(N21), .B1(n5), .Y(N37) );
  AO22X1M U17 ( .A0(N11), .A1(n33), .B0(N20), .B1(n5), .Y(N36) );
  AO22X1M U18 ( .A0(N10), .A1(n33), .B0(N19), .B1(n5), .Y(N35) );
  INVX2M U19 ( .A(counter[5]), .Y(n14) );
  INVX2M U20 ( .A(i_div_ratio[5]), .Y(n21) );
  AOI21BX2M U21 ( .A0(n8), .A1(n9), .B0N(i_clk_en), .Y(N1) );
  NOR3X2M U22 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n8) );
  NOR4X1M U23 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n9) );
  INVX2M U24 ( .A(i_div_ratio[0]), .Y(N9) );
  NAND2BX1M U25 ( .AN(counter[1]), .B(N18), .Y(n1) );
  OAI2BB1X1M U26 ( .A0N(counter[0]), .A1N(counter[1]), .B0(n1), .Y(N19) );
  OR2X1M U27 ( .A(n1), .B(counter[2]), .Y(n2) );
  OAI2BB1X1M U28 ( .A0N(n1), .A1N(counter[2]), .B0(n2), .Y(N20) );
  OR2X1M U29 ( .A(n2), .B(counter[3]), .Y(n3) );
  OAI2BB1X1M U30 ( .A0N(n2), .A1N(counter[3]), .B0(n3), .Y(N21) );
  NOR2X1M U31 ( .A(n3), .B(counter[4]), .Y(n11) );
  AO21XLM U32 ( .A0(n3), .A1(counter[4]), .B0(n11), .Y(N22) );
  CLKNAND2X2M U33 ( .A(n11), .B(n14), .Y(n12) );
  OAI21X1M U34 ( .A0(n11), .A1(n14), .B0(n12), .Y(N23) );
  XNOR2X1M U35 ( .A(counter[6]), .B(n12), .Y(N24) );
  NOR2X1M U36 ( .A(counter[6]), .B(n12), .Y(n13) );
  CLKXOR2X2M U37 ( .A(counter[7]), .B(n13), .Y(N25) );
  NAND2BX1M U38 ( .AN(i_div_ratio[1]), .B(N9), .Y(n15) );
  OAI2BB1X1M U39 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n15), .Y(
        N10) );
  OR2X1M U40 ( .A(n15), .B(i_div_ratio[2]), .Y(n16) );
  OAI2BB1X1M U41 ( .A0N(n15), .A1N(i_div_ratio[2]), .B0(n16), .Y(N11) );
  OR2X1M U42 ( .A(n16), .B(i_div_ratio[3]), .Y(n17) );
  OAI2BB1X1M U43 ( .A0N(n16), .A1N(i_div_ratio[3]), .B0(n17), .Y(N12) );
  NOR2X1M U44 ( .A(n17), .B(i_div_ratio[4]), .Y(n18) );
  AO21XLM U45 ( .A0(n17), .A1(i_div_ratio[4]), .B0(n18), .Y(N13) );
  CLKNAND2X2M U46 ( .A(n18), .B(n21), .Y(n19) );
  OAI21X1M U47 ( .A0(n18), .A1(n21), .B0(n19), .Y(N14) );
  XNOR2X1M U48 ( .A(i_div_ratio[6]), .B(n19), .Y(N15) );
  NOR2X1M U49 ( .A(i_div_ratio[6]), .B(n19), .Y(n20) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(n20), .Y(N16) );
  NOR2BX1M U51 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n22) );
  OAI2B2X1M U52 ( .A1N(i_div_ratio[2]), .A0(n22), .B0(counter[1]), .B1(n22), 
        .Y(n26) );
  XNOR2X1M U53 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n25) );
  NOR2BX1M U54 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n23) );
  OAI2B2X1M U55 ( .A1N(counter[1]), .A0(n23), .B0(i_div_ratio[2]), .B1(n23), 
        .Y(n24) );
  NAND4BX1M U56 ( .AN(counter[7]), .B(n26), .C(n25), .D(n24), .Y(n32) );
  XNOR2X1M U57 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n30) );
  XNOR2X1M U58 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n29) );
  XNOR2X1M U59 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n28) );
  XNOR2X1M U60 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n27) );
  NAND4X1M U61 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(n31) );
  NOR2X1M U62 ( .A(n32), .B(n31), .Y(N6) );
endmodule


module Integer_CLK_DIV_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, clk_div_reg, N6, N9, N10, N11, N12, N13, N14, N15, N16, N18, N19,
         N20, N21, N22, N23, N24, N25, N34, N35, N36, N37, N38, N39, N40, N41,
         n1, n2, n3, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40;
  wire   [7:0] counter;

  DFFRQX2M clk_div_reg_reg ( .D(n34), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        clk_div_reg) );
  DFFRQX2M \counter_reg[3]  ( .D(N37), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[7]  ( .D(N41), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M \counter_reg[6]  ( .D(N40), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  DFFRQX2M \counter_reg[4]  ( .D(N38), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[5]  ( .D(N39), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[2]  ( .D(N36), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[1]  ( .D(N35), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(N34), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  INVX2M U3 ( .A(i_div_ratio[0]), .Y(N9) );
  INVX2M U4 ( .A(n39), .Y(n33) );
  AO22X1M U5 ( .A0(N14), .A1(n33), .B0(N23), .B1(n39), .Y(N39) );
  AO22X1M U6 ( .A0(N9), .A1(n33), .B0(N18), .B1(n39), .Y(N34) );
  MX2X2M U7 ( .A(i_ref_clk), .B(clk_div_reg), .S0(N1), .Y(o_div_clk) );
  AO22X1M U8 ( .A0(N16), .A1(n33), .B0(N25), .B1(n39), .Y(N41) );
  AO22X1M U9 ( .A0(N15), .A1(n33), .B0(N24), .B1(n39), .Y(N40) );
  INVX2M U10 ( .A(counter[0]), .Y(N18) );
  XNOR2X2M U11 ( .A(clk_div_reg), .B(n40), .Y(n34) );
  NOR2X2M U12 ( .A(N6), .B(n33), .Y(n40) );
  NAND2X2M U13 ( .A(n38), .B(n37), .Y(n39) );
  NOR4X1M U14 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n37) );
  NOR4X1M U15 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n38) );
  AO22X1M U16 ( .A0(N13), .A1(n33), .B0(N22), .B1(n39), .Y(N38) );
  AO22X1M U17 ( .A0(N12), .A1(n33), .B0(N21), .B1(n39), .Y(N37) );
  AO22X1M U18 ( .A0(N11), .A1(n33), .B0(N20), .B1(n39), .Y(N36) );
  AO22X1M U19 ( .A0(N10), .A1(n33), .B0(N19), .B1(n39), .Y(N35) );
  INVX2M U20 ( .A(counter[5]), .Y(n14) );
  AOI21BX2M U21 ( .A0(n36), .A1(n35), .B0N(i_clk_en), .Y(N1) );
  NOR4X1M U22 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n35) );
  NOR3X2M U23 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n36) );
  INVX2M U24 ( .A(i_div_ratio[5]), .Y(n21) );
  NAND2BX1M U25 ( .AN(counter[1]), .B(N18), .Y(n1) );
  OAI2BB1X1M U26 ( .A0N(counter[0]), .A1N(counter[1]), .B0(n1), .Y(N19) );
  OR2X1M U27 ( .A(n1), .B(counter[2]), .Y(n2) );
  OAI2BB1X1M U28 ( .A0N(n1), .A1N(counter[2]), .B0(n2), .Y(N20) );
  OR2X1M U29 ( .A(n2), .B(counter[3]), .Y(n3) );
  OAI2BB1X1M U30 ( .A0N(n2), .A1N(counter[3]), .B0(n3), .Y(N21) );
  NOR2X1M U31 ( .A(n3), .B(counter[4]), .Y(n11) );
  AO21XLM U32 ( .A0(n3), .A1(counter[4]), .B0(n11), .Y(N22) );
  CLKNAND2X2M U33 ( .A(n11), .B(n14), .Y(n12) );
  OAI21X1M U34 ( .A0(n11), .A1(n14), .B0(n12), .Y(N23) );
  XNOR2X1M U35 ( .A(counter[6]), .B(n12), .Y(N24) );
  NOR2X1M U36 ( .A(counter[6]), .B(n12), .Y(n13) );
  CLKXOR2X2M U37 ( .A(counter[7]), .B(n13), .Y(N25) );
  NAND2BX1M U38 ( .AN(i_div_ratio[1]), .B(N9), .Y(n15) );
  OAI2BB1X1M U39 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n15), .Y(
        N10) );
  OR2X1M U40 ( .A(n15), .B(i_div_ratio[2]), .Y(n16) );
  OAI2BB1X1M U41 ( .A0N(n15), .A1N(i_div_ratio[2]), .B0(n16), .Y(N11) );
  OR2X1M U42 ( .A(n16), .B(i_div_ratio[3]), .Y(n17) );
  OAI2BB1X1M U43 ( .A0N(n16), .A1N(i_div_ratio[3]), .B0(n17), .Y(N12) );
  NOR2X1M U44 ( .A(n17), .B(i_div_ratio[4]), .Y(n18) );
  AO21XLM U45 ( .A0(n17), .A1(i_div_ratio[4]), .B0(n18), .Y(N13) );
  CLKNAND2X2M U46 ( .A(n18), .B(n21), .Y(n19) );
  OAI21X1M U47 ( .A0(n18), .A1(n21), .B0(n19), .Y(N14) );
  XNOR2X1M U48 ( .A(i_div_ratio[6]), .B(n19), .Y(N15) );
  NOR2X1M U49 ( .A(i_div_ratio[6]), .B(n19), .Y(n20) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(n20), .Y(N16) );
  NOR2BX1M U51 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n22) );
  OAI2B2X1M U52 ( .A1N(i_div_ratio[2]), .A0(n22), .B0(counter[1]), .B1(n22), 
        .Y(n26) );
  XNOR2X1M U53 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n25) );
  NOR2BX1M U54 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n23) );
  OAI2B2X1M U55 ( .A1N(counter[1]), .A0(n23), .B0(i_div_ratio[2]), .B1(n23), 
        .Y(n24) );
  NAND4BX1M U56 ( .AN(counter[7]), .B(n26), .C(n25), .D(n24), .Y(n32) );
  XNOR2X1M U57 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n30) );
  XNOR2X1M U58 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n29) );
  XNOR2X1M U59 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n28) );
  XNOR2X1M U60 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n27) );
  NAND4X1M U61 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(n31) );
  NOR2X1M U62 ( .A(n32), .B(n31), .Y(N6) );
endmodule



    module SYS_CTRL_OPERANDS_WIDTH8_ALU_OUT_WIDTH16_ALU_FUNC_WIDTH4_REG_WIDTH8_ADDR_WIDTH4_UART_DATA_WIDTH8 ( 
        clk, rst_n, ALU_out, ALU_out_valid, ALU_func, ALU_en, clk_en, RD_data, 
        RD_valid, WR_data_regfile, addr, WR_en_regfile, RD_en_regfile, 
        fifo_full_flag, WR_data_fifo, WR_inc_fifo, rx_data, rx_data_valid, 
        clk_div_en );
  input [15:0] ALU_out;
  output [3:0] ALU_func;
  input [7:0] RD_data;
  output [7:0] WR_data_regfile;
  output [3:0] addr;
  output [7:0] WR_data_fifo;
  input [7:0] rx_data;
  input clk, rst_n, ALU_out_valid, RD_valid, fifo_full_flag, rx_data_valid;
  output ALU_en, clk_en, WR_en_regfile, RD_en_regfile, WR_inc_fifo, clk_div_en;
  wire   ALU_part, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n36, n37, n38, n39, n42, n52, n53, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n96, n13, n16, n17, n32, n33, n34, n35, n40, n41, n43, n44,
         n45, n46, n47, n48, n50, n54, n55, n56, n94, n95, n97, n98;
  wire   [3:0] cs;
  wire   [3:0] ns;
  wire   [3:0] addr_reg;
  wire   [15:0] ALU_out_lat;
  assign clk_div_en = 1'b1;

  DFFRQX2M \ALU_out_lat_reg[15]  ( .D(n88), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[15]) );
  DFFRQX2M \ALU_out_lat_reg[14]  ( .D(n87), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[14]) );
  DFFRQX2M \ALU_out_lat_reg[13]  ( .D(n86), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[13]) );
  DFFRQX2M \ALU_out_lat_reg[12]  ( .D(n85), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[12]) );
  DFFRQX2M \ALU_out_lat_reg[11]  ( .D(n84), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[11]) );
  DFFRQX2M \ALU_out_lat_reg[10]  ( .D(n83), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[10]) );
  DFFRQX2M \ALU_out_lat_reg[9]  ( .D(n82), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[9]) );
  DFFRQX2M \ALU_out_lat_reg[8]  ( .D(n81), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[8]) );
  DFFRQX2M \ALU_out_lat_reg[7]  ( .D(n80), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[7]) );
  DFFRQX2M \ALU_out_lat_reg[6]  ( .D(n79), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[6]) );
  DFFRQX2M \ALU_out_lat_reg[5]  ( .D(n78), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[5]) );
  DFFRQX2M \ALU_out_lat_reg[4]  ( .D(n77), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[4]) );
  DFFRQX2M \ALU_out_lat_reg[3]  ( .D(n76), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[3]) );
  DFFRQX2M \ALU_out_lat_reg[2]  ( .D(n75), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[2]) );
  DFFRQX2M \ALU_out_lat_reg[1]  ( .D(n74), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[1]) );
  DFFRQX2M \ALU_out_lat_reg[0]  ( .D(n73), .CK(clk), .RN(rst_n), .Q(
        ALU_out_lat[0]) );
  DFFRQX2M ALU_part_reg ( .D(n93), .CK(clk), .RN(rst_n), .Q(ALU_part) );
  DFFRQX2M \addr_reg_reg[3]  ( .D(n91), .CK(clk), .RN(rst_n), .Q(addr_reg[3])
         );
  DFFRQX2M \addr_reg_reg[2]  ( .D(n90), .CK(clk), .RN(rst_n), .Q(addr_reg[2])
         );
  DFFRQX2M \addr_reg_reg[1]  ( .D(n89), .CK(clk), .RN(rst_n), .Q(addr_reg[1])
         );
  DFFRX1M op_sel_reg ( .D(n96), .CK(clk), .RN(rst_n), .Q(n72), .QN(n98) );
  DFFRQX2M \addr_reg_reg[0]  ( .D(n92), .CK(clk), .RN(rst_n), .Q(addr_reg[0])
         );
  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(rst_n), .Q(cs[0]) );
  DFFRQX2M \cs_reg[3]  ( .D(ns[3]), .CK(clk), .RN(rst_n), .Q(cs[3]) );
  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(clk), .RN(rst_n), .Q(cs[2]) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(rst_n), .Q(cs[1]) );
  OAI221X1M U3 ( .A0(n57), .A1(n56), .B0(n44), .B1(n11), .C0(n1), .Y(addr[0])
         );
  OAI22X1M U4 ( .A0(n40), .A1(n11), .B0(n57), .B1(n94), .Y(addr[3]) );
  OAI22X1M U5 ( .A0(n43), .A1(n11), .B0(n57), .B1(n97), .Y(addr[1]) );
  NOR2X2M U6 ( .A(n40), .B(n2), .Y(ALU_func[3]) );
  NOR2X2M U7 ( .A(n43), .B(n2), .Y(ALU_func[1]) );
  OAI22X1M U8 ( .A0(n41), .A1(n11), .B0(n57), .B1(n95), .Y(addr[2]) );
  NOR2BX2M U9 ( .AN(rx_data_valid), .B(n28), .Y(n21) );
  INVX2M U10 ( .A(n16), .Y(WR_inc_fifo) );
  AND3X2M U11 ( .A(n19), .B(n28), .C(n59), .Y(n57) );
  NOR2X2M U12 ( .A(n44), .B(n2), .Y(ALU_func[0]) );
  NOR2X2M U13 ( .A(n41), .B(n2), .Y(ALU_func[2]) );
  NAND3X2M U14 ( .A(n50), .B(n55), .C(n58), .Y(n28) );
  NAND2X2M U15 ( .A(n62), .B(n54), .Y(n1) );
  AND3X2M U16 ( .A(n8), .B(n1), .C(n59), .Y(n61) );
  NOR3X2M U17 ( .A(n32), .B(n40), .C(n7), .Y(n37) );
  NOR2X2M U18 ( .A(n61), .B(n44), .Y(WR_data_regfile[0]) );
  NOR2X2M U19 ( .A(n61), .B(n43), .Y(WR_data_regfile[1]) );
  NOR2X2M U20 ( .A(n61), .B(n41), .Y(WR_data_regfile[2]) );
  NOR2X2M U21 ( .A(n61), .B(n40), .Y(WR_data_regfile[3]) );
  NOR2X2M U22 ( .A(n61), .B(n35), .Y(WR_data_regfile[4]) );
  NOR2X2M U23 ( .A(n61), .B(n34), .Y(WR_data_regfile[5]) );
  NOR2X2M U24 ( .A(n61), .B(n33), .Y(WR_data_regfile[6]) );
  NOR2X2M U25 ( .A(n61), .B(n32), .Y(WR_data_regfile[7]) );
  NAND3X2M U26 ( .A(n50), .B(n55), .C(n42), .Y(n7) );
  INVX2M U27 ( .A(n11), .Y(RD_en_regfile) );
  BUFX2M U28 ( .A(n52), .Y(n16) );
  NAND2X2M U29 ( .A(n22), .B(n23), .Y(n15) );
  OAI21X2M U30 ( .A0(n24), .A1(fifo_full_flag), .B0(WR_inc_fifo), .Y(n23) );
  OAI32X1M U31 ( .A0(n48), .A1(fifo_full_flag), .A2(n16), .B0(n53), .B1(n47), 
        .Y(n93) );
  INVX2M U32 ( .A(n24), .Y(n48) );
  NOR3X2M U33 ( .A(n13), .B(fifo_full_flag), .C(n98), .Y(n53) );
  NOR2X2M U34 ( .A(n47), .B(n98), .Y(n64) );
  OAI22X1M U35 ( .A0(n21), .A1(n97), .B0(n43), .B1(n45), .Y(n89) );
  OAI22X1M U36 ( .A0(n21), .A1(n95), .B0(n41), .B1(n45), .Y(n90) );
  OAI22X1M U37 ( .A0(n21), .A1(n94), .B0(n40), .B1(n45), .Y(n91) );
  OAI22X1M U38 ( .A0(n21), .A1(n56), .B0(n44), .B1(n45), .Y(n92) );
  INVX2M U39 ( .A(n21), .Y(n45) );
  INVX2M U40 ( .A(n9), .Y(n46) );
  NAND3X2M U41 ( .A(n5), .B(n13), .C(n2), .Y(clk_en) );
  BUFX2M U42 ( .A(n52), .Y(n13) );
  NOR2X2M U43 ( .A(n54), .B(cs[3]), .Y(n58) );
  NOR2X2M U44 ( .A(cs[0]), .B(cs[3]), .Y(n42) );
  NAND2X2M U45 ( .A(cs[0]), .B(n62), .Y(n2) );
  NAND3X2M U46 ( .A(n58), .B(n50), .C(cs[2]), .Y(n11) );
  INVX2M U47 ( .A(rx_data[0]), .Y(n44) );
  AND3X2M U48 ( .A(cs[3]), .B(n50), .C(n55), .Y(n62) );
  INVX2M U49 ( .A(cs[2]), .Y(n55) );
  INVX2M U50 ( .A(cs[1]), .Y(n50) );
  NAND3X2M U51 ( .A(n58), .B(n55), .C(cs[1]), .Y(n59) );
  INVX2M U52 ( .A(rx_data[1]), .Y(n43) );
  NAND3X2M U53 ( .A(n42), .B(n55), .C(cs[1]), .Y(n19) );
  INVX2M U54 ( .A(cs[0]), .Y(n54) );
  INVX2M U55 ( .A(addr_reg[0]), .Y(n56) );
  OAI32X1M U56 ( .A0(rx_data[0]), .A1(rx_data[4]), .A2(n18), .B0(n7), .B1(n6), 
        .Y(n29) );
  NOR2X2M U57 ( .A(n98), .B(ALU_part), .Y(n24) );
  OAI211X2M U58 ( .A0(RD_valid), .A1(n11), .B0(n22), .C0(n25), .Y(ns[0]) );
  AOI21X2M U59 ( .A0(rx_data_valid), .A1(n26), .B0(n27), .Y(n25) );
  AOI21X2M U60 ( .A0(n2), .A1(n28), .B0(rx_data_valid), .Y(n27) );
  NAND4BX1M U61 ( .AN(n29), .B(n1), .C(n10), .D(n19), .Y(n26) );
  INVX2M U62 ( .A(rx_data[3]), .Y(n40) );
  NAND4X2M U63 ( .A(rx_data[5]), .B(rx_data[1]), .C(n36), .D(n37), .Y(n18) );
  NOR2X2M U64 ( .A(rx_data[6]), .B(rx_data[2]), .Y(n36) );
  INVX2M U65 ( .A(rx_data[2]), .Y(n41) );
  NOR2X2M U66 ( .A(n71), .B(n16), .Y(WR_data_fifo[0]) );
  AOI222X1M U67 ( .A0(RD_data[0]), .A1(n98), .B0(n64), .B1(ALU_out_lat[8]), 
        .C0(n24), .C1(ALU_out_lat[0]), .Y(n71) );
  NOR2X2M U68 ( .A(n70), .B(n13), .Y(WR_data_fifo[1]) );
  AOI222X1M U69 ( .A0(RD_data[1]), .A1(n98), .B0(n64), .B1(ALU_out_lat[9]), 
        .C0(n24), .C1(ALU_out_lat[1]), .Y(n70) );
  NOR2X2M U70 ( .A(n69), .B(n16), .Y(WR_data_fifo[2]) );
  AOI222X1M U71 ( .A0(RD_data[2]), .A1(n98), .B0(n64), .B1(ALU_out_lat[10]), 
        .C0(n24), .C1(ALU_out_lat[2]), .Y(n69) );
  NOR2X2M U72 ( .A(n68), .B(n13), .Y(WR_data_fifo[3]) );
  AOI222X1M U73 ( .A0(RD_data[3]), .A1(n98), .B0(n64), .B1(ALU_out_lat[11]), 
        .C0(n24), .C1(ALU_out_lat[3]), .Y(n68) );
  NOR2X2M U74 ( .A(n67), .B(n16), .Y(WR_data_fifo[4]) );
  AOI222X1M U75 ( .A0(RD_data[4]), .A1(n98), .B0(n64), .B1(ALU_out_lat[12]), 
        .C0(n24), .C1(ALU_out_lat[4]), .Y(n67) );
  NOR2X2M U76 ( .A(n66), .B(n13), .Y(WR_data_fifo[5]) );
  AOI222X1M U77 ( .A0(RD_data[5]), .A1(n98), .B0(n64), .B1(ALU_out_lat[13]), 
        .C0(n24), .C1(ALU_out_lat[5]), .Y(n66) );
  NOR2X2M U78 ( .A(n65), .B(n16), .Y(WR_data_fifo[6]) );
  AOI222X1M U79 ( .A0(RD_data[6]), .A1(n98), .B0(n64), .B1(ALU_out_lat[14]), 
        .C0(n24), .C1(ALU_out_lat[6]), .Y(n65) );
  NOR2X2M U80 ( .A(n63), .B(n13), .Y(WR_data_fifo[7]) );
  AOI222X1M U81 ( .A0(RD_data[7]), .A1(n98), .B0(n64), .B1(ALU_out_lat[15]), 
        .C0(n24), .C1(ALU_out_lat[7]), .Y(n63) );
  NAND3X2M U82 ( .A(cs[1]), .B(n42), .C(cs[2]), .Y(n52) );
  NAND3X2M U83 ( .A(cs[1]), .B(n58), .C(cs[2]), .Y(n8) );
  NAND4X2M U84 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(ns[2]) );
  AOI31X2M U85 ( .A0(n17), .A1(rx_data_valid), .A2(n14), .B0(n15), .Y(n12) );
  NOR2X2M U86 ( .A(n44), .B(n35), .Y(n14) );
  INVX2M U87 ( .A(n18), .Y(n17) );
  OA22X2M U88 ( .A0(rx_data_valid), .A1(n8), .B0(n38), .B1(n39), .Y(n22) );
  NAND4X2M U89 ( .A(n44), .B(n43), .C(n35), .D(n34), .Y(n38) );
  NAND4X2M U90 ( .A(n37), .B(rx_data_valid), .C(rx_data[6]), .D(rx_data[2]), 
        .Y(n39) );
  NAND4BX1M U91 ( .AN(ALU_en), .B(n5), .C(n19), .D(n20), .Y(ns[1]) );
  AOI211X2M U92 ( .A0(RD_valid), .A1(RD_en_regfile), .B0(n15), .C0(n21), .Y(
        n20) );
  NAND2X2M U93 ( .A(n59), .B(n60), .Y(WR_en_regfile) );
  OAI2BB1X2M U94 ( .A0N(n8), .A1N(n1), .B0(rx_data_valid), .Y(n60) );
  INVX2M U95 ( .A(addr_reg[1]), .Y(n97) );
  INVX2M U96 ( .A(addr_reg[2]), .Y(n95) );
  INVX2M U97 ( .A(addr_reg[3]), .Y(n94) );
  NAND2BX2M U98 ( .AN(n5), .B(ALU_out_valid), .Y(n9) );
  NAND4X2M U99 ( .A(cs[1]), .B(cs[3]), .C(n54), .D(n55), .Y(n5) );
  NOR2BX2M U100 ( .AN(rx_data_valid), .B(n2), .Y(ALU_en) );
  NAND3X2M U101 ( .A(n42), .B(n50), .C(cs[2]), .Y(n10) );
  INVX2M U102 ( .A(rx_data[4]), .Y(n35) );
  NAND2X2M U103 ( .A(n30), .B(n31), .Y(n6) );
  NOR4X1M U104 ( .A(n40), .B(n35), .C(n33), .D(n32), .Y(n30) );
  NOR4X1M U105 ( .A(rx_data[5]), .B(rx_data[1]), .C(n44), .D(n41), .Y(n31) );
  INVX2M U106 ( .A(rx_data[7]), .Y(n32) );
  INVX2M U107 ( .A(rx_data[6]), .Y(n33) );
  INVX2M U108 ( .A(rx_data[5]), .Y(n34) );
  NAND3X2M U109 ( .A(n1), .B(n2), .C(n3), .Y(ns[3]) );
  AOI2BB2XLM U110 ( .B0(rx_data_valid), .B1(n4), .A0N(n5), .A1N(ALU_out_valid), 
        .Y(n3) );
  OAI21X2M U111 ( .A0(n6), .A1(n7), .B0(n8), .Y(n4) );
  OAI2BB1X2M U112 ( .A0N(n10), .A1N(n72), .B0(n2), .Y(n96) );
  INVX2M U113 ( .A(ALU_part), .Y(n47) );
  AO22X1M U114 ( .A0(n9), .A1(ALU_out_lat[0]), .B0(ALU_out[0]), .B1(n46), .Y(
        n73) );
  AO22X1M U115 ( .A0(n9), .A1(ALU_out_lat[1]), .B0(ALU_out[1]), .B1(n46), .Y(
        n74) );
  AO22X1M U116 ( .A0(n9), .A1(ALU_out_lat[2]), .B0(ALU_out[2]), .B1(n46), .Y(
        n75) );
  AO22X1M U117 ( .A0(n9), .A1(ALU_out_lat[3]), .B0(ALU_out[3]), .B1(n46), .Y(
        n76) );
  AO22X1M U118 ( .A0(n9), .A1(ALU_out_lat[4]), .B0(ALU_out[4]), .B1(n46), .Y(
        n77) );
  AO22X1M U119 ( .A0(n9), .A1(ALU_out_lat[5]), .B0(ALU_out[5]), .B1(n46), .Y(
        n78) );
  AO22X1M U120 ( .A0(n9), .A1(ALU_out_lat[6]), .B0(ALU_out[6]), .B1(n46), .Y(
        n79) );
  AO22X1M U121 ( .A0(n9), .A1(ALU_out_lat[7]), .B0(ALU_out[7]), .B1(n46), .Y(
        n80) );
  AO22X1M U122 ( .A0(n9), .A1(ALU_out_lat[8]), .B0(ALU_out[8]), .B1(n46), .Y(
        n81) );
  AO22X1M U123 ( .A0(n9), .A1(ALU_out_lat[9]), .B0(ALU_out[9]), .B1(n46), .Y(
        n82) );
  AO22X1M U124 ( .A0(n9), .A1(ALU_out_lat[10]), .B0(ALU_out[10]), .B1(n46), 
        .Y(n83) );
  AO22X1M U125 ( .A0(n9), .A1(ALU_out_lat[11]), .B0(ALU_out[11]), .B1(n46), 
        .Y(n84) );
  AO22X1M U126 ( .A0(n9), .A1(ALU_out_lat[12]), .B0(ALU_out[12]), .B1(n46), 
        .Y(n85) );
  AO22X1M U127 ( .A0(n9), .A1(ALU_out_lat[13]), .B0(ALU_out[13]), .B1(n46), 
        .Y(n86) );
  AO22X1M U128 ( .A0(n9), .A1(ALU_out_lat[14]), .B0(ALU_out[14]), .B1(n46), 
        .Y(n87) );
  AO22X1M U129 ( .A0(n9), .A1(ALU_out_lat[15]), .B0(ALU_out[15]), .B1(n46), 
        .Y(n88) );
endmodule


module ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW_div_uns_0 ( a, b, 
        quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n16), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n17), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n18), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n15), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n18), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n18), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n18), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n18), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n18), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n17), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n17), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n13), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n14), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  INVX2M U1 ( .A(b[0]), .Y(n19) );
  XNOR2X2M U2 ( .A(n19), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n19), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n19), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n19), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n19), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n19), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U10 ( .A(a[5]), .Y(n4) );
  INVX2M U11 ( .A(n19), .Y(n3) );
  NAND2X2M U12 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U13 ( .A(a[4]), .Y(n6) );
  INVX2M U14 ( .A(n19), .Y(n5) );
  NAND2X2M U15 ( .A(n7), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U16 ( .A(a[3]), .Y(n8) );
  INVX2M U17 ( .A(n19), .Y(n7) );
  NAND2X2M U18 ( .A(n7), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U19 ( .A(a[2]), .Y(n9) );
  NAND2X2M U20 ( .A(n7), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U21 ( .A(a[1]), .Y(n10) );
  NAND2X2M U22 ( .A(n7), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U23 ( .A(a[0]), .Y(n11) );
  INVX2M U24 ( .A(b[5]), .Y(n14) );
  NAND2X2M U25 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n2) );
  INVX2M U27 ( .A(n19), .Y(n1) );
  INVX2M U28 ( .A(b[6]), .Y(n13) );
  XNOR2X2M U29 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U30 ( .A(b[7]), .Y(n12) );
  INVX2M U31 ( .A(b[1]), .Y(n18) );
  INVX2M U32 ( .A(b[2]), .Y(n17) );
  INVX2M U33 ( .A(b[3]), .Y(n16) );
  INVX2M U34 ( .A(b[4]), .Y(n15) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U41 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U47 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U59 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n18), .D(n17), .Y(
        quotient[7]) );
  AND3X1M U64 ( .A(n20), .B(n17), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U65 ( .A(\u_div/CryTmp[5][3] ), .B(n20), .Y(quotient[5]) );
  AND2X1M U66 ( .A(n21), .B(n16), .Y(n20) );
  AND2X1M U67 ( .A(\u_div/CryTmp[4][4] ), .B(n21), .Y(quotient[4]) );
  AND3X1M U68 ( .A(n22), .B(n15), .C(n14), .Y(n21) );
  AND3X1M U69 ( .A(n22), .B(n14), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U70 ( .A(\u_div/CryTmp[2][6] ), .B(n22), .Y(quotient[2]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n22) );
  AND2X1M U72 ( .A(\u_div/CryTmp[1][7] ), .B(n12), .Y(quotient[1]) );
endmodule


module ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW01_sub_0 ( A, B, CI, 
        DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  INVX2M U1 ( .A(carry[8]), .Y(DIFF[8]) );
  INVX2M U2 ( .A(B[7]), .Y(n3) );
  INVX2M U3 ( .A(B[5]), .Y(n5) );
  INVX2M U4 ( .A(B[6]), .Y(n4) );
  XNOR2X2M U5 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U6 ( .A(B[0]), .Y(n10) );
  INVX2M U7 ( .A(B[2]), .Y(n8) );
  INVX2M U8 ( .A(B[3]), .Y(n7) );
  INVX2M U9 ( .A(B[4]), .Y(n6) );
  INVX2M U10 ( .A(B[1]), .Y(n9) );
  NAND2X2M U11 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U12 ( .A(A[0]), .Y(n1) );
endmodule


module ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW01_add_0 ( A, B, CI, 
        SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW01_add_1 ( A, B, CI, 
        SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20
;
  assign SUM[6] = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AOI21BX2M U2 ( .A0(n11), .A1(A[12]), .B0N(n12), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n8) );
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n2), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n2) );
  XNOR2X1M U7 ( .A(n3), .B(n4), .Y(SUM[9]) );
  NOR2X1M U8 ( .A(n5), .B(n6), .Y(n4) );
  CLKXOR2X2M U9 ( .A(n7), .B(n8), .Y(SUM[8]) );
  NAND2BX1M U10 ( .AN(n9), .B(n10), .Y(n7) );
  OAI21X1M U11 ( .A0(A[12]), .A1(n11), .B0(B[12]), .Y(n12) );
  XOR3XLM U12 ( .A(B[12]), .B(A[12]), .C(n11), .Y(SUM[12]) );
  OAI21BX1M U13 ( .A0(n13), .A1(n14), .B0N(n15), .Y(n11) );
  XNOR2X1M U14 ( .A(n14), .B(n16), .Y(SUM[11]) );
  NOR2X1M U15 ( .A(n15), .B(n13), .Y(n16) );
  NOR2X1M U16 ( .A(B[11]), .B(A[11]), .Y(n13) );
  AND2X1M U17 ( .A(B[11]), .B(A[11]), .Y(n15) );
  OA21X1M U18 ( .A0(n17), .A1(n18), .B0(n19), .Y(n14) );
  CLKXOR2X2M U19 ( .A(n20), .B(n18), .Y(SUM[10]) );
  AOI2BB1X1M U20 ( .A0N(n3), .A1N(n6), .B0(n5), .Y(n18) );
  AND2X1M U21 ( .A(B[9]), .B(A[9]), .Y(n5) );
  NOR2X1M U22 ( .A(B[9]), .B(A[9]), .Y(n6) );
  OA21X1M U23 ( .A0(n8), .A1(n9), .B0(n10), .Y(n3) );
  CLKNAND2X2M U24 ( .A(B[8]), .B(A[8]), .Y(n10) );
  NOR2X1M U25 ( .A(B[8]), .B(A[8]), .Y(n9) );
  NAND2BX1M U26 ( .AN(n17), .B(n19), .Y(n20) );
  CLKNAND2X2M U27 ( .A(B[10]), .B(A[10]), .Y(n19) );
  NOR2X1M U28 ( .A(B[10]), .B(A[10]), .Y(n17) );
endmodule


module ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW02_mult_0 ( A, B, TC, 
        PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , 
        \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, 
        n11, n15, n16, n14, n12, n13, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n8), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n7), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  AND2X2M U2 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U11 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U12 ( .A(\ab[0][7] ), .Y(n23) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U15 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n11) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U18 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U19 ( .A(\ab[0][3] ), .Y(n19) );
  XNOR2X2M U20 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  AND2X2M U21 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U22 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n13) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  INVX2M U24 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  AND2X2M U26 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U28 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n16) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U35 ( .A(A[1]), .Y(n38) );
  INVX2M U36 ( .A(B[6]), .Y(n25) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  INVX2M U38 ( .A(B[7]), .Y(n24) );
  INVX2M U39 ( .A(B[5]), .Y(n26) );
  XNOR2X2M U40 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[4]), .Y(n35) );
  XNOR2X2M U44 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U45 ( .A(A[7]), .Y(n32) );
  INVX2M U46 ( .A(A[6]), .Y(n33) );
  INVX2M U47 ( .A(A[5]), .Y(n34) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[4]), .Y(n27) );
  INVX2M U50 ( .A(B[0]), .Y(n31) );
  INVX2M U51 ( .A(B[2]), .Y(n29) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
endmodule


module ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16 ( A, B, ALU_FUN, clk, 
        rst_n, enable, ALU_OUT, out_valid );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, rst_n, enable;
  output out_valid;
  wire   out_valid_comb, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N128, N129, N130, N131, N132, N133, N134, N135, N176,
         N177, N178, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152;
  wire   [15:0] ALU_OUT_comb;

  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW_div_uns_0 div_57 ( .a({
        n15, n14, n13, n12, n11, n10, n9, n8}), .b({n7, n6, n5, B[4:0]}), 
        .quotient({N135, N134, N133, N132, N131, N130, N129, N128}) );
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW01_sub_0 sub_43 ( .A({1'b0, 
        n15, n14, n13, n12, n11, n10, n9, n8}), .B({1'b0, n7, n6, n5, B[4:0]}), 
        .CI(1'b0), .DIFF({N110, N109, N108, N107, N106, N105, N104, N103, N102}) );
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW01_add_0 add_38 ( .A({1'b0, 
        n15, n14, n13, n12, n11, n10, n9, n8}), .B({1'b0, n7, n6, n5, B[4:0]}), 
        .CI(1'b0), .SUM({N101, N100, N99, N98, N97, N96, N95, N94, N93}) );
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW02_mult_0 mult_48 ( .A({
        n15, n14, n13, n12, n11, n10, n9, n8}), .B({n7, n6, n5, B[4:0]}), .TC(
        1'b0), .PRODUCT({N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111}) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_comb[15]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_comb[14]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_comb[13]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_comb[12]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_comb[11]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_comb[10]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_comb[9]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_comb[8]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_comb[7]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_comb[6]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_comb[5]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_comb[4]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_comb[3]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_comb[2]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_comb[1]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_comb[0]), .CK(clk), .RN(rst_n), .Q(
        ALU_OUT[0]) );
  DFFRQX2M out_valid_reg ( .D(out_valid_comb), .CK(clk), .RN(rst_n), .Q(
        out_valid) );
  BUFX2M U3 ( .A(ALU_FUN[0]), .Y(n3) );
  BUFX2M U4 ( .A(ALU_FUN[2]), .Y(n4) );
  BUFX2M U5 ( .A(A[7]), .Y(n15) );
  BUFX2M U8 ( .A(A[6]), .Y(n14) );
  INVX2M U9 ( .A(n55), .Y(n132) );
  OAI2BB1X2M U10 ( .A0N(N126), .A1N(n36), .B0(n37), .Y(ALU_OUT_comb[15]) );
  OAI2BB1X2M U11 ( .A0N(N125), .A1N(n36), .B0(n37), .Y(ALU_OUT_comb[14]) );
  OAI2BB1X2M U12 ( .A0N(N123), .A1N(n36), .B0(n37), .Y(ALU_OUT_comb[12]) );
  OAI2BB1X2M U13 ( .A0N(N124), .A1N(n36), .B0(n37), .Y(ALU_OUT_comb[13]) );
  OAI2BB1X2M U14 ( .A0N(N120), .A1N(n36), .B0(n37), .Y(ALU_OUT_comb[9]) );
  OAI2BB1X2M U15 ( .A0N(N121), .A1N(n36), .B0(n37), .Y(ALU_OUT_comb[10]) );
  OAI2BB1X2M U16 ( .A0N(N122), .A1N(n36), .B0(n37), .Y(ALU_OUT_comb[11]) );
  OAI21X2M U17 ( .A0(n138), .A1(n115), .B0(n116), .Y(n54) );
  NOR3X2M U18 ( .A(n137), .B(n138), .C(n134), .Y(n35) );
  NAND2X2M U19 ( .A(n35), .B(n139), .Y(n55) );
  BUFX2M U20 ( .A(n53), .Y(n16) );
  NOR2BX2M U21 ( .AN(n114), .B(n115), .Y(n53) );
  AND3X2M U22 ( .A(n114), .B(n137), .C(n134), .Y(n56) );
  INVX2M U23 ( .A(n110), .Y(n135) );
  NOR3X2M U24 ( .A(n138), .B(n3), .C(n115), .Y(n46) );
  NOR4X1M U25 ( .A(n134), .B(n3), .C(ALU_FUN[1]), .D(n4), .Y(n51) );
  AOI211X2M U26 ( .A0(N110), .A1(n56), .B0(n136), .C0(n54), .Y(n38) );
  OAI21X2M U27 ( .A0(ALU_FUN[1]), .A1(n115), .B0(n116), .Y(n52) );
  NOR3X2M U28 ( .A(n4), .B(ALU_FUN[3]), .C(n138), .Y(n117) );
  NOR4X1M U29 ( .A(n111), .B(n138), .C(n4), .D(n3), .Y(n106) );
  NAND2X2M U30 ( .A(N176), .B(ALU_FUN[3]), .Y(n111) );
  NOR2X2M U31 ( .A(n139), .B(ALU_FUN[1]), .Y(n114) );
  INVX2M U32 ( .A(ALU_FUN[1]), .Y(n138) );
  INVX2M U33 ( .A(ALU_FUN[3]), .Y(n134) );
  NAND3X2M U34 ( .A(ALU_FUN[3]), .B(n137), .C(n114), .Y(n116) );
  NAND2X2M U35 ( .A(n117), .B(n3), .Y(n110) );
  NAND2X2M U36 ( .A(n4), .B(n134), .Y(n115) );
  AND4X2M U37 ( .A(N178), .B(ALU_FUN[3]), .C(n107), .D(n4), .Y(n98) );
  NOR2X2M U38 ( .A(ALU_FUN[1]), .B(n3), .Y(n107) );
  OR2X2M U39 ( .A(n38), .B(n140), .Y(n37) );
  INVX2M U40 ( .A(n3), .Y(n139) );
  NOR4X1M U41 ( .A(n3), .B(ALU_FUN[1]), .C(n4), .D(ALU_FUN[3]), .Y(n42) );
  NOR2BX2M U42 ( .AN(n117), .B(n3), .Y(n41) );
  NAND3X2M U43 ( .A(ALU_FUN[3]), .B(n4), .C(n114), .Y(n62) );
  OAI22X1M U44 ( .A0(n62), .A1(n149), .B0(n55), .B1(n151), .Y(n90) );
  OAI22X1M U45 ( .A0(n62), .A1(n148), .B0(n55), .B1(n150), .Y(n83) );
  OAI22X1M U46 ( .A0(n147), .A1(n62), .B0(n55), .B1(n149), .Y(n76) );
  OAI22X1M U47 ( .A0(n146), .A1(n62), .B0(n55), .B1(n148), .Y(n69) );
  OAI22X1M U48 ( .A0(n145), .A1(n62), .B0(n55), .B1(n147), .Y(n61) );
  NOR2BX2M U49 ( .AN(n41), .B(n140), .Y(n36) );
  AOI21X2M U50 ( .A0(n3), .A1(n35), .B0(n140), .Y(out_valid_comb) );
  INVX2M U51 ( .A(n4), .Y(n137) );
  AOI31X2M U52 ( .A0(n102), .A1(n103), .A2(n104), .B0(n140), .Y(
        ALU_OUT_comb[0]) );
  AOI222X1M U53 ( .A0(N93), .A1(n42), .B0(N111), .B1(n41), .C0(N102), .C1(n56), 
        .Y(n102) );
  NOR4X1M U54 ( .A(n105), .B(n106), .C(n136), .D(n98), .Y(n104) );
  AOI222X1M U55 ( .A0(N128), .A1(n135), .B0(n46), .B1(n152), .C0(n8), .C1(n16), 
        .Y(n103) );
  AOI31X2M U56 ( .A0(n93), .A1(n94), .A2(n95), .B0(n140), .Y(ALU_OUT_comb[1])
         );
  AOI222X1M U57 ( .A0(N94), .A1(n42), .B0(N112), .B1(n41), .C0(N103), .C1(n56), 
        .Y(n93) );
  NOR4BX1M U58 ( .AN(n96), .B(n97), .C(n136), .D(n98), .Y(n95) );
  AOI222X1M U59 ( .A0(N129), .A1(n135), .B0(n46), .B1(n151), .C0(n9), .C1(n16), 
        .Y(n94) );
  AOI31X2M U60 ( .A0(n86), .A1(n87), .A2(n88), .B0(n140), .Y(ALU_OUT_comb[2])
         );
  AOI22X1M U61 ( .A0(N104), .A1(n56), .B0(N95), .B1(n42), .Y(n86) );
  AOI211X2M U62 ( .A0(n46), .A1(n150), .B0(n89), .C0(n90), .Y(n88) );
  AOI222X1M U63 ( .A0(N113), .A1(n41), .B0(n10), .B1(n16), .C0(N130), .C1(n135), .Y(n87) );
  AOI31X2M U64 ( .A0(n79), .A1(n80), .A2(n81), .B0(n140), .Y(ALU_OUT_comb[3])
         );
  AOI22X1M U65 ( .A0(N105), .A1(n56), .B0(N96), .B1(n42), .Y(n79) );
  AOI211X2M U66 ( .A0(n46), .A1(n149), .B0(n82), .C0(n83), .Y(n81) );
  AOI222X1M U67 ( .A0(N114), .A1(n41), .B0(n11), .B1(n16), .C0(N131), .C1(n135), .Y(n80) );
  AOI31X2M U68 ( .A0(n72), .A1(n73), .A2(n74), .B0(n140), .Y(ALU_OUT_comb[4])
         );
  AOI22X1M U69 ( .A0(N106), .A1(n56), .B0(N97), .B1(n42), .Y(n72) );
  AOI211X2M U70 ( .A0(n46), .A1(n148), .B0(n75), .C0(n76), .Y(n74) );
  AOI222X1M U71 ( .A0(N115), .A1(n41), .B0(n12), .B1(n16), .C0(N132), .C1(n135), .Y(n73) );
  AOI31X2M U72 ( .A0(n57), .A1(n58), .A2(n59), .B0(n140), .Y(ALU_OUT_comb[6])
         );
  AOI22X1M U73 ( .A0(N108), .A1(n56), .B0(N99), .B1(n42), .Y(n57) );
  AOI211X2M U74 ( .A0(n46), .A1(n146), .B0(n60), .C0(n61), .Y(n59) );
  AOI222X1M U75 ( .A0(N117), .A1(n41), .B0(n16), .B1(n14), .C0(N134), .C1(n135), .Y(n58) );
  AOI31X2M U76 ( .A0(n43), .A1(n44), .A2(n45), .B0(n140), .Y(ALU_OUT_comb[7])
         );
  AOI22X1M U77 ( .A0(N109), .A1(n56), .B0(N100), .B1(n42), .Y(n43) );
  AOI221XLM U78 ( .A0(n14), .A1(n132), .B0(n46), .B1(n145), .C0(n47), .Y(n45)
         );
  AOI222X1M U79 ( .A0(N118), .A1(n41), .B0(n16), .B1(n15), .C0(N135), .C1(n135), .Y(n44) );
  AOI31X2M U80 ( .A0(n65), .A1(n66), .A2(n67), .B0(n140), .Y(ALU_OUT_comb[5])
         );
  AOI22X1M U81 ( .A0(N107), .A1(n56), .B0(N98), .B1(n42), .Y(n65) );
  AOI211X2M U82 ( .A0(n46), .A1(n147), .B0(n68), .C0(n69), .Y(n67) );
  AOI222X1M U83 ( .A0(N116), .A1(n41), .B0(n13), .B1(n16), .C0(N133), .C1(n135), .Y(n66) );
  AOI31X2M U84 ( .A0(n38), .A1(n39), .A2(n40), .B0(n140), .Y(ALU_OUT_comb[8])
         );
  NAND2X2M U85 ( .A(N101), .B(n42), .Y(n39) );
  AOI22X1M U86 ( .A0(n15), .A1(n132), .B0(N119), .B1(n41), .Y(n40) );
  OAI222X1M U87 ( .A0(n55), .A1(n152), .B0(n99), .B1(n144), .C0(n62), .C1(n150), .Y(n97) );
  AOI221XLM U88 ( .A0(n51), .A1(n151), .B0(n9), .B1(n52), .C0(n16), .Y(n99) );
  OAI221X1M U89 ( .A0(n7), .A1(n48), .B0(n49), .B1(n141), .C0(n50), .Y(n47) );
  INVX2M U90 ( .A(n7), .Y(n141) );
  AOI221XLM U91 ( .A0(n51), .A1(n15), .B0(n54), .B1(n145), .C0(n46), .Y(n48)
         );
  AOI221XLM U92 ( .A0(n51), .A1(n145), .B0(n15), .B1(n52), .C0(n16), .Y(n49)
         );
  OAI221X1M U93 ( .A0(n5), .A1(n70), .B0(n71), .B1(n142), .C0(n50), .Y(n68) );
  INVX2M U94 ( .A(n5), .Y(n142) );
  AOI221XLM U95 ( .A0(n13), .A1(n51), .B0(n54), .B1(n147), .C0(n46), .Y(n70)
         );
  AOI221XLM U96 ( .A0(n51), .A1(n147), .B0(n13), .B1(n52), .C0(n16), .Y(n71)
         );
  OAI221X1M U97 ( .A0(n6), .A1(n63), .B0(n64), .B1(n131), .C0(n50), .Y(n60) );
  AOI221XLM U98 ( .A0(n14), .A1(n51), .B0(n54), .B1(n146), .C0(n46), .Y(n63)
         );
  AOI221XLM U99 ( .A0(n51), .A1(n146), .B0(n14), .B1(n52), .C0(n16), .Y(n64)
         );
  AOI32X1M U100 ( .A0(N177), .A1(n3), .A2(n100), .B0(n133), .B1(n144), .Y(n96)
         );
  NOR3X2M U101 ( .A(n134), .B(n4), .C(n138), .Y(n100) );
  INVX2M U102 ( .A(n101), .Y(n133) );
  AOI221XLM U103 ( .A0(n151), .A1(n54), .B0(n51), .B1(n9), .C0(n46), .Y(n101)
         );
  INVX2M U104 ( .A(n28), .Y(n129) );
  INVX2M U105 ( .A(n125), .Y(N177) );
  INVX2M U106 ( .A(n6), .Y(n131) );
  INVX2M U107 ( .A(n50), .Y(n136) );
  INVX2M U108 ( .A(enable), .Y(n140) );
  INVX2M U109 ( .A(n13), .Y(n147) );
  INVX2M U110 ( .A(n11), .Y(n149) );
  INVX2M U111 ( .A(n12), .Y(n148) );
  INVX2M U112 ( .A(n9), .Y(n151) );
  INVX2M U113 ( .A(n10), .Y(n150) );
  INVX2M U114 ( .A(n14), .Y(n146) );
  INVX2M U115 ( .A(n15), .Y(n145) );
  INVX2M U116 ( .A(n8), .Y(n152) );
  BUFX2M U117 ( .A(B[6]), .Y(n6) );
  BUFX2M U118 ( .A(B[7]), .Y(n7) );
  BUFX2M U119 ( .A(B[5]), .Y(n5) );
  BUFX2M U120 ( .A(A[5]), .Y(n13) );
  BUFX2M U121 ( .A(A[4]), .Y(n12) );
  BUFX2M U122 ( .A(A[3]), .Y(n11) );
  BUFX2M U123 ( .A(A[2]), .Y(n10) );
  BUFX2M U124 ( .A(A[1]), .Y(n9) );
  BUFX2M U125 ( .A(A[0]), .Y(n8) );
  OAI222X1M U126 ( .A0(n112), .A1(n126), .B0(B[0]), .B1(n113), .C0(n62), .C1(
        n151), .Y(n105) );
  AOI221XLM U127 ( .A0(n51), .A1(n152), .B0(n8), .B1(n52), .C0(n16), .Y(n112)
         );
  AOI221XLM U128 ( .A0(n8), .A1(n51), .B0(n54), .B1(n152), .C0(n46), .Y(n113)
         );
  OAI221X1M U129 ( .A0(B[2]), .A1(n91), .B0(n92), .B1(n128), .C0(n50), .Y(n89)
         );
  AOI221XLM U130 ( .A0(n10), .A1(n51), .B0(n54), .B1(n150), .C0(n46), .Y(n91)
         );
  AOI221XLM U131 ( .A0(n51), .A1(n150), .B0(n10), .B1(n52), .C0(n16), .Y(n92)
         );
  OAI221X1M U132 ( .A0(B[3]), .A1(n84), .B0(n85), .B1(n130), .C0(n50), .Y(n82)
         );
  AOI221XLM U133 ( .A0(n11), .A1(n51), .B0(n54), .B1(n149), .C0(n46), .Y(n84)
         );
  AOI221XLM U134 ( .A0(n51), .A1(n149), .B0(n11), .B1(n52), .C0(n16), .Y(n85)
         );
  OAI221X1M U135 ( .A0(B[4]), .A1(n77), .B0(n78), .B1(n143), .C0(n50), .Y(n75)
         );
  AOI221XLM U136 ( .A0(n12), .A1(n51), .B0(n54), .B1(n148), .C0(n46), .Y(n77)
         );
  AOI221XLM U137 ( .A0(n51), .A1(n148), .B0(n12), .B1(n52), .C0(n16), .Y(n78)
         );
  INVX2M U138 ( .A(n17), .Y(n127) );
  NAND4X2M U139 ( .A(n130), .B(n143), .C(n108), .D(n109), .Y(n50) );
  NOR3X2M U140 ( .A(n5), .B(n7), .C(n6), .Y(n108) );
  NOR4X1M U141 ( .A(B[2]), .B(B[1]), .C(B[0]), .D(n110), .Y(n109) );
  INVX2M U142 ( .A(B[0]), .Y(n126) );
  INVX2M U143 ( .A(B[2]), .Y(n128) );
  INVX2M U144 ( .A(B[3]), .Y(n130) );
  INVX2M U145 ( .A(B[4]), .Y(n143) );
  INVX2M U146 ( .A(B[1]), .Y(n144) );
  NOR2X1M U147 ( .A(n145), .B(n7), .Y(n122) );
  NAND2BX1M U148 ( .AN(B[4]), .B(n12), .Y(n32) );
  NAND2BX1M U149 ( .AN(n12), .B(B[4]), .Y(n21) );
  CLKNAND2X2M U150 ( .A(n32), .B(n21), .Y(n34) );
  NOR2X1M U151 ( .A(n130), .B(n11), .Y(n29) );
  NOR2X1M U152 ( .A(n128), .B(n10), .Y(n20) );
  NOR2X1M U153 ( .A(n126), .B(n8), .Y(n17) );
  CLKNAND2X2M U154 ( .A(n10), .B(n128), .Y(n31) );
  NAND2BX1M U155 ( .AN(n20), .B(n31), .Y(n26) );
  AOI21X1M U156 ( .A0(n17), .A1(n151), .B0(B[1]), .Y(n18) );
  AOI211X1M U157 ( .A0(n9), .A1(n127), .B0(n26), .C0(n18), .Y(n19) );
  CLKNAND2X2M U158 ( .A(n11), .B(n130), .Y(n30) );
  OAI31X1M U159 ( .A0(n29), .A1(n20), .A2(n19), .B0(n30), .Y(n22) );
  NAND2BX1M U160 ( .AN(n13), .B(n5), .Y(n120) );
  OAI211X1M U161 ( .A0(n34), .A1(n22), .B0(n21), .C0(n120), .Y(n23) );
  NAND2BX1M U162 ( .AN(n5), .B(n13), .Y(n33) );
  XNOR2X1M U163 ( .A(n14), .B(n6), .Y(n119) );
  AOI32X1M U164 ( .A0(n23), .A1(n33), .A2(n119), .B0(n6), .B1(n146), .Y(n24)
         );
  CLKNAND2X2M U165 ( .A(n7), .B(n145), .Y(n123) );
  OAI21X1M U166 ( .A0(n122), .A1(n24), .B0(n123), .Y(N178) );
  CLKNAND2X2M U167 ( .A(n8), .B(n126), .Y(n27) );
  OA21X1M U168 ( .A0(n27), .A1(n151), .B0(B[1]), .Y(n25) );
  AOI211X1M U169 ( .A0(n27), .A1(n151), .B0(n26), .C0(n25), .Y(n28) );
  AOI31X1M U170 ( .A0(n129), .A1(n31), .A2(n30), .B0(n29), .Y(n118) );
  OAI2B11X1M U171 ( .A1N(n118), .A0(n34), .B0(n33), .C0(n32), .Y(n121) );
  AOI32X1M U172 ( .A0(n121), .A1(n120), .A2(n119), .B0(n14), .B1(n131), .Y(
        n124) );
  AOI2B1X1M U173 ( .A1N(n124), .A0(n123), .B0(n122), .Y(n125) );
  NOR2X1M U174 ( .A(N178), .B(N177), .Y(N176) );
endmodule


module Register_File_WIDTH8_DEPTH16 ( WrData, Address, WrEn, RdEn, CLK, RST, 
        RdData, rd_valid, DIV_ratio, op_A, op_B, UART_CON );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] DIV_ratio;
  output [7:0] op_A;
  output [7:0] op_B;
  output [7:0] UART_CON;
  input WrEn, RdEn, CLK, RST;
  output rd_valid;
  wire   N11, N12, N13, N14, \reg_file[15][7] , \reg_file[15][6] ,
         \reg_file[15][5] , \reg_file[15][4] , \reg_file[15][3] ,
         \reg_file[15][2] , \reg_file[15][1] , \reg_file[15][0] ,
         \reg_file[14][7] , \reg_file[14][6] , \reg_file[14][5] ,
         \reg_file[14][4] , \reg_file[14][3] , \reg_file[14][2] ,
         \reg_file[14][1] , \reg_file[14][0] , \reg_file[13][7] ,
         \reg_file[13][6] , \reg_file[13][5] , \reg_file[13][4] ,
         \reg_file[13][3] , \reg_file[13][2] , \reg_file[13][1] ,
         \reg_file[13][0] , \reg_file[12][7] , \reg_file[12][6] ,
         \reg_file[12][5] , \reg_file[12][4] , \reg_file[12][3] ,
         \reg_file[12][2] , \reg_file[12][1] , \reg_file[12][0] ,
         \reg_file[11][7] , \reg_file[11][6] , \reg_file[11][5] ,
         \reg_file[11][4] , \reg_file[11][3] , \reg_file[11][2] ,
         \reg_file[11][1] , \reg_file[11][0] , \reg_file[10][7] ,
         \reg_file[10][6] , \reg_file[10][5] , \reg_file[10][4] ,
         \reg_file[10][3] , \reg_file[10][2] , \reg_file[10][1] ,
         \reg_file[10][0] , \reg_file[9][7] , \reg_file[9][6] ,
         \reg_file[9][5] , \reg_file[9][4] , \reg_file[9][3] ,
         \reg_file[9][2] , \reg_file[9][1] , \reg_file[9][0] ,
         \reg_file[8][7] , \reg_file[8][6] , \reg_file[8][5] ,
         \reg_file[8][4] , \reg_file[8][3] , \reg_file[8][2] ,
         \reg_file[8][1] , \reg_file[8][0] , \reg_file[7][7] ,
         \reg_file[7][6] , \reg_file[7][5] , \reg_file[7][4] ,
         \reg_file[7][3] , \reg_file[7][2] , \reg_file[7][1] ,
         \reg_file[7][0] , \reg_file[6][7] , \reg_file[6][6] ,
         \reg_file[6][5] , \reg_file[6][4] , \reg_file[6][3] ,
         \reg_file[6][2] , \reg_file[6][1] , \reg_file[6][0] ,
         \reg_file[5][7] , \reg_file[5][6] , \reg_file[5][5] ,
         \reg_file[5][4] , \reg_file[5][3] , \reg_file[5][2] ,
         \reg_file[5][1] , \reg_file[5][0] , \reg_file[4][7] ,
         \reg_file[4][6] , \reg_file[4][5] , \reg_file[4][4] ,
         \reg_file[4][3] , \reg_file[4][2] , \reg_file[4][1] ,
         \reg_file[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \reg_file_reg[15][7]  ( .D(n168), .CK(CLK), .RN(n279), .Q(
        \reg_file[15][7] ) );
  DFFRQX2M \reg_file_reg[15][6]  ( .D(n167), .CK(CLK), .RN(n279), .Q(
        \reg_file[15][6] ) );
  DFFRQX2M \reg_file_reg[15][5]  ( .D(n166), .CK(CLK), .RN(n279), .Q(
        \reg_file[15][5] ) );
  DFFRQX2M \reg_file_reg[15][4]  ( .D(n165), .CK(CLK), .RN(n279), .Q(
        \reg_file[15][4] ) );
  DFFRQX2M \reg_file_reg[15][3]  ( .D(n164), .CK(CLK), .RN(n279), .Q(
        \reg_file[15][3] ) );
  DFFRQX2M \reg_file_reg[15][2]  ( .D(n163), .CK(CLK), .RN(n279), .Q(
        \reg_file[15][2] ) );
  DFFRQX2M \reg_file_reg[15][1]  ( .D(n162), .CK(CLK), .RN(n279), .Q(
        \reg_file[15][1] ) );
  DFFRQX2M \reg_file_reg[15][0]  ( .D(n161), .CK(CLK), .RN(n279), .Q(
        \reg_file[15][0] ) );
  DFFRQX2M \reg_file_reg[13][7]  ( .D(n152), .CK(CLK), .RN(n280), .Q(
        \reg_file[13][7] ) );
  DFFRQX2M \reg_file_reg[13][6]  ( .D(n151), .CK(CLK), .RN(n280), .Q(
        \reg_file[13][6] ) );
  DFFRQX2M \reg_file_reg[13][5]  ( .D(n150), .CK(CLK), .RN(n280), .Q(
        \reg_file[13][5] ) );
  DFFRQX2M \reg_file_reg[13][4]  ( .D(n149), .CK(CLK), .RN(n280), .Q(
        \reg_file[13][4] ) );
  DFFRQX2M \reg_file_reg[13][3]  ( .D(n148), .CK(CLK), .RN(n280), .Q(
        \reg_file[13][3] ) );
  DFFRQX2M \reg_file_reg[13][2]  ( .D(n147), .CK(CLK), .RN(n280), .Q(
        \reg_file[13][2] ) );
  DFFRQX2M \reg_file_reg[13][1]  ( .D(n146), .CK(CLK), .RN(n280), .Q(
        \reg_file[13][1] ) );
  DFFRQX2M \reg_file_reg[13][0]  ( .D(n145), .CK(CLK), .RN(n280), .Q(
        \reg_file[13][0] ) );
  DFFRQX2M \reg_file_reg[11][7]  ( .D(n136), .CK(CLK), .RN(n281), .Q(
        \reg_file[11][7] ) );
  DFFRQX2M \reg_file_reg[11][6]  ( .D(n135), .CK(CLK), .RN(n281), .Q(
        \reg_file[11][6] ) );
  DFFRQX2M \reg_file_reg[11][5]  ( .D(n134), .CK(CLK), .RN(n281), .Q(
        \reg_file[11][5] ) );
  DFFRQX2M \reg_file_reg[11][4]  ( .D(n133), .CK(CLK), .RN(n281), .Q(
        \reg_file[11][4] ) );
  DFFRQX2M \reg_file_reg[11][3]  ( .D(n132), .CK(CLK), .RN(n281), .Q(
        \reg_file[11][3] ) );
  DFFRQX2M \reg_file_reg[11][2]  ( .D(n131), .CK(CLK), .RN(n281), .Q(
        \reg_file[11][2] ) );
  DFFRQX2M \reg_file_reg[11][1]  ( .D(n130), .CK(CLK), .RN(n281), .Q(
        \reg_file[11][1] ) );
  DFFRQX2M \reg_file_reg[11][0]  ( .D(n129), .CK(CLK), .RN(n281), .Q(
        \reg_file[11][0] ) );
  DFFRQX2M \reg_file_reg[9][7]  ( .D(n120), .CK(CLK), .RN(n282), .Q(
        \reg_file[9][7] ) );
  DFFRQX2M \reg_file_reg[9][6]  ( .D(n119), .CK(CLK), .RN(n282), .Q(
        \reg_file[9][6] ) );
  DFFRQX2M \reg_file_reg[9][5]  ( .D(n118), .CK(CLK), .RN(n282), .Q(
        \reg_file[9][5] ) );
  DFFRQX2M \reg_file_reg[9][4]  ( .D(n117), .CK(CLK), .RN(n282), .Q(
        \reg_file[9][4] ) );
  DFFRQX2M \reg_file_reg[9][3]  ( .D(n116), .CK(CLK), .RN(n282), .Q(
        \reg_file[9][3] ) );
  DFFRQX2M \reg_file_reg[9][2]  ( .D(n115), .CK(CLK), .RN(n282), .Q(
        \reg_file[9][2] ) );
  DFFRQX2M \reg_file_reg[9][1]  ( .D(n114), .CK(CLK), .RN(n282), .Q(
        \reg_file[9][1] ) );
  DFFRQX2M \reg_file_reg[9][0]  ( .D(n113), .CK(CLK), .RN(n284), .Q(
        \reg_file[9][0] ) );
  DFFRQX2M \reg_file_reg[7][7]  ( .D(n104), .CK(CLK), .RN(n283), .Q(
        \reg_file[7][7] ) );
  DFFRQX2M \reg_file_reg[7][6]  ( .D(n103), .CK(CLK), .RN(n283), .Q(
        \reg_file[7][6] ) );
  DFFRQX2M \reg_file_reg[7][5]  ( .D(n102), .CK(CLK), .RN(n283), .Q(
        \reg_file[7][5] ) );
  DFFRQX2M \reg_file_reg[7][4]  ( .D(n101), .CK(CLK), .RN(n283), .Q(
        \reg_file[7][4] ) );
  DFFRQX2M \reg_file_reg[7][3]  ( .D(n100), .CK(CLK), .RN(n283), .Q(
        \reg_file[7][3] ) );
  DFFRQX2M \reg_file_reg[7][2]  ( .D(n99), .CK(CLK), .RN(n285), .Q(
        \reg_file[7][2] ) );
  DFFRQX2M \reg_file_reg[7][1]  ( .D(n98), .CK(CLK), .RN(n285), .Q(
        \reg_file[7][1] ) );
  DFFRQX2M \reg_file_reg[7][0]  ( .D(n97), .CK(CLK), .RN(n285), .Q(
        \reg_file[7][0] ) );
  DFFRQX2M \reg_file_reg[5][7]  ( .D(n88), .CK(CLK), .RN(n284), .Q(
        \reg_file[5][7] ) );
  DFFRQX2M \reg_file_reg[5][6]  ( .D(n87), .CK(CLK), .RN(n284), .Q(
        \reg_file[5][6] ) );
  DFFRQX2M \reg_file_reg[5][5]  ( .D(n86), .CK(CLK), .RN(n284), .Q(
        \reg_file[5][5] ) );
  DFFRQX2M \reg_file_reg[5][4]  ( .D(n85), .CK(CLK), .RN(n284), .Q(
        \reg_file[5][4] ) );
  DFFRQX2M \reg_file_reg[5][3]  ( .D(n84), .CK(CLK), .RN(n286), .Q(
        \reg_file[5][3] ) );
  DFFRQX2M \reg_file_reg[5][2]  ( .D(n83), .CK(CLK), .RN(n286), .Q(
        \reg_file[5][2] ) );
  DFFRQX2M \reg_file_reg[5][1]  ( .D(n82), .CK(CLK), .RN(n286), .Q(
        \reg_file[5][1] ) );
  DFFRQX2M \reg_file_reg[5][0]  ( .D(n81), .CK(CLK), .RN(n286), .Q(
        \reg_file[5][0] ) );
  DFFRQX2M \reg_file_reg[14][7]  ( .D(n160), .CK(CLK), .RN(n279), .Q(
        \reg_file[14][7] ) );
  DFFRQX2M \reg_file_reg[14][6]  ( .D(n159), .CK(CLK), .RN(n279), .Q(
        \reg_file[14][6] ) );
  DFFRQX2M \reg_file_reg[14][5]  ( .D(n158), .CK(CLK), .RN(n281), .Q(
        \reg_file[14][5] ) );
  DFFRQX2M \reg_file_reg[14][4]  ( .D(n157), .CK(CLK), .RN(n281), .Q(
        \reg_file[14][4] ) );
  DFFRQX2M \reg_file_reg[14][3]  ( .D(n156), .CK(CLK), .RN(n281), .Q(
        \reg_file[14][3] ) );
  DFFRQX2M \reg_file_reg[14][2]  ( .D(n155), .CK(CLK), .RN(n281), .Q(
        \reg_file[14][2] ) );
  DFFRQX2M \reg_file_reg[14][1]  ( .D(n154), .CK(CLK), .RN(n281), .Q(
        \reg_file[14][1] ) );
  DFFRQX2M \reg_file_reg[14][0]  ( .D(n153), .CK(CLK), .RN(n280), .Q(
        \reg_file[14][0] ) );
  DFFRQX2M \reg_file_reg[12][7]  ( .D(n144), .CK(CLK), .RN(n280), .Q(
        \reg_file[12][7] ) );
  DFFRQX2M \reg_file_reg[12][6]  ( .D(n143), .CK(CLK), .RN(n282), .Q(
        \reg_file[12][6] ) );
  DFFRQX2M \reg_file_reg[12][5]  ( .D(n142), .CK(CLK), .RN(n282), .Q(
        \reg_file[12][5] ) );
  DFFRQX2M \reg_file_reg[12][4]  ( .D(n141), .CK(CLK), .RN(n282), .Q(
        \reg_file[12][4] ) );
  DFFRQX2M \reg_file_reg[12][3]  ( .D(n140), .CK(CLK), .RN(n282), .Q(
        \reg_file[12][3] ) );
  DFFRQX2M \reg_file_reg[12][2]  ( .D(n139), .CK(CLK), .RN(n282), .Q(
        \reg_file[12][2] ) );
  DFFRQX2M \reg_file_reg[12][1]  ( .D(n138), .CK(CLK), .RN(n281), .Q(
        \reg_file[12][1] ) );
  DFFRQX2M \reg_file_reg[12][0]  ( .D(n137), .CK(CLK), .RN(n281), .Q(
        \reg_file[12][0] ) );
  DFFRQX2M \reg_file_reg[10][7]  ( .D(n128), .CK(CLK), .RN(n283), .Q(
        \reg_file[10][7] ) );
  DFFRQX2M \reg_file_reg[10][6]  ( .D(n127), .CK(CLK), .RN(n283), .Q(
        \reg_file[10][6] ) );
  DFFRQX2M \reg_file_reg[10][5]  ( .D(n126), .CK(CLK), .RN(n283), .Q(
        \reg_file[10][5] ) );
  DFFRQX2M \reg_file_reg[10][4]  ( .D(n125), .CK(CLK), .RN(n283), .Q(
        \reg_file[10][4] ) );
  DFFRQX2M \reg_file_reg[10][3]  ( .D(n124), .CK(CLK), .RN(n283), .Q(
        \reg_file[10][3] ) );
  DFFRQX2M \reg_file_reg[10][2]  ( .D(n123), .CK(CLK), .RN(n282), .Q(
        \reg_file[10][2] ) );
  DFFRQX2M \reg_file_reg[10][1]  ( .D(n122), .CK(CLK), .RN(n282), .Q(
        \reg_file[10][1] ) );
  DFFRQX2M \reg_file_reg[10][0]  ( .D(n121), .CK(CLK), .RN(n282), .Q(
        \reg_file[10][0] ) );
  DFFRQX2M \reg_file_reg[8][7]  ( .D(n112), .CK(CLK), .RN(n284), .Q(
        \reg_file[8][7] ) );
  DFFRQX2M \reg_file_reg[8][6]  ( .D(n111), .CK(CLK), .RN(n284), .Q(
        \reg_file[8][6] ) );
  DFFRQX2M \reg_file_reg[8][5]  ( .D(n110), .CK(CLK), .RN(n284), .Q(
        \reg_file[8][5] ) );
  DFFRQX2M \reg_file_reg[8][4]  ( .D(n109), .CK(CLK), .RN(n284), .Q(
        \reg_file[8][4] ) );
  DFFRQX2M \reg_file_reg[8][3]  ( .D(n108), .CK(CLK), .RN(n284), .Q(
        \reg_file[8][3] ) );
  DFFRQX2M \reg_file_reg[8][2]  ( .D(n107), .CK(CLK), .RN(n283), .Q(
        \reg_file[8][2] ) );
  DFFRQX2M \reg_file_reg[8][1]  ( .D(n106), .CK(CLK), .RN(n283), .Q(
        \reg_file[8][1] ) );
  DFFRQX2M \reg_file_reg[8][0]  ( .D(n105), .CK(CLK), .RN(n283), .Q(
        \reg_file[8][0] ) );
  DFFRQX2M \reg_file_reg[6][7]  ( .D(n96), .CK(CLK), .RN(n285), .Q(
        \reg_file[6][7] ) );
  DFFRQX2M \reg_file_reg[6][6]  ( .D(n95), .CK(CLK), .RN(n285), .Q(
        \reg_file[6][6] ) );
  DFFRQX2M \reg_file_reg[6][5]  ( .D(n94), .CK(CLK), .RN(n285), .Q(
        \reg_file[6][5] ) );
  DFFRQX2M \reg_file_reg[6][4]  ( .D(n93), .CK(CLK), .RN(n284), .Q(
        \reg_file[6][4] ) );
  DFFRQX2M \reg_file_reg[6][3]  ( .D(n92), .CK(CLK), .RN(n284), .Q(
        \reg_file[6][3] ) );
  DFFRQX2M \reg_file_reg[6][2]  ( .D(n91), .CK(CLK), .RN(n284), .Q(
        \reg_file[6][2] ) );
  DFFRQX2M \reg_file_reg[6][1]  ( .D(n90), .CK(CLK), .RN(n284), .Q(
        \reg_file[6][1] ) );
  DFFRQX2M \reg_file_reg[6][0]  ( .D(n89), .CK(CLK), .RN(n284), .Q(
        \reg_file[6][0] ) );
  DFFRQX2M \reg_file_reg[4][7]  ( .D(n80), .CK(CLK), .RN(n286), .Q(
        \reg_file[4][7] ) );
  DFFRQX2M \reg_file_reg[4][6]  ( .D(n79), .CK(CLK), .RN(n286), .Q(
        \reg_file[4][6] ) );
  DFFRQX2M \reg_file_reg[4][5]  ( .D(n78), .CK(CLK), .RN(n285), .Q(
        \reg_file[4][5] ) );
  DFFRQX2M \reg_file_reg[4][4]  ( .D(n77), .CK(CLK), .RN(n285), .Q(
        \reg_file[4][4] ) );
  DFFRQX2M \reg_file_reg[4][3]  ( .D(n76), .CK(CLK), .RN(n285), .Q(
        \reg_file[4][3] ) );
  DFFRQX2M \reg_file_reg[4][2]  ( .D(n75), .CK(CLK), .RN(n285), .Q(
        \reg_file[4][2] ) );
  DFFRQX2M \reg_file_reg[4][1]  ( .D(n74), .CK(CLK), .RN(n285), .Q(
        \reg_file[4][1] ) );
  DFFRQX2M \reg_file_reg[4][0]  ( .D(n73), .CK(CLK), .RN(n285), .Q(
        \reg_file[4][0] ) );
  DFFRQX2M \RdData_reg[7]  ( .D(n176), .CK(CLK), .RN(n287), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n175), .CK(CLK), .RN(n279), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n174), .CK(CLK), .RN(n283), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n173), .CK(CLK), .RN(n280), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n172), .CK(CLK), .RN(n280), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n171), .CK(CLK), .RN(n280), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n170), .CK(CLK), .RN(n280), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n169), .CK(CLK), .RN(n280), .Q(RdData[0]) );
  DFFRQX2M rd_valid_reg ( .D(n302), .CK(CLK), .RN(n283), .Q(rd_valid) );
  DFFRQX2M \reg_file_reg[2][1]  ( .D(n58), .CK(CLK), .RN(n286), .Q(UART_CON[1]) );
  DFFRQX2M \reg_file_reg[3][0]  ( .D(n65), .CK(CLK), .RN(n287), .Q(
        DIV_ratio[0]) );
  DFFRQX2M \reg_file_reg[3][3]  ( .D(n68), .CK(CLK), .RN(n287), .Q(
        DIV_ratio[3]) );
  DFFRQX2M \reg_file_reg[3][1]  ( .D(n66), .CK(CLK), .RN(n287), .Q(
        DIV_ratio[1]) );
  DFFRQX2M \reg_file_reg[3][2]  ( .D(n67), .CK(CLK), .RN(n287), .Q(
        DIV_ratio[2]) );
  DFFRQX2M \reg_file_reg[3][7]  ( .D(n72), .CK(CLK), .RN(n285), .Q(
        DIV_ratio[7]) );
  DFFRQX2M \reg_file_reg[3][6]  ( .D(n71), .CK(CLK), .RN(n285), .Q(
        DIV_ratio[6]) );
  DFFRQX2M \reg_file_reg[3][4]  ( .D(n69), .CK(CLK), .RN(n285), .Q(
        DIV_ratio[4]) );
  DFFSQX2M \reg_file_reg[3][5]  ( .D(n70), .CK(CLK), .SN(n279), .Q(
        DIV_ratio[5]) );
  DFFSQX2M \reg_file_reg[2][0]  ( .D(n57), .CK(CLK), .SN(n279), .Q(UART_CON[0]) );
  DFFRQX2M \reg_file_reg[2][6]  ( .D(n63), .CK(CLK), .RN(n287), .Q(UART_CON[6]) );
  DFFRQX2M \reg_file_reg[2][2]  ( .D(n59), .CK(CLK), .RN(n286), .Q(UART_CON[2]) );
  DFFRQX2M \reg_file_reg[2][5]  ( .D(n62), .CK(CLK), .RN(n287), .Q(UART_CON[5]) );
  DFFRQX2M \reg_file_reg[2][4]  ( .D(n61), .CK(CLK), .RN(n286), .Q(UART_CON[4]) );
  DFFSQX2M \reg_file_reg[2][7]  ( .D(n64), .CK(CLK), .SN(n279), .Q(UART_CON[7]) );
  DFFRQX2M \reg_file_reg[2][3]  ( .D(n60), .CK(CLK), .RN(n286), .Q(UART_CON[3]) );
  DFFRQX2M \reg_file_reg[0][1]  ( .D(n42), .CK(CLK), .RN(n287), .Q(op_A[1]) );
  DFFRQX2M \reg_file_reg[0][0]  ( .D(n41), .CK(CLK), .RN(n287), .Q(op_A[0]) );
  DFFRQX2M \reg_file_reg[0][2]  ( .D(n43), .CK(CLK), .RN(n287), .Q(op_A[2]) );
  DFFRQX2M \reg_file_reg[0][3]  ( .D(n44), .CK(CLK), .RN(n287), .Q(op_A[3]) );
  DFFRQX2M \reg_file_reg[0][4]  ( .D(n45), .CK(CLK), .RN(n287), .Q(op_A[4]) );
  DFFRQX2M \reg_file_reg[0][5]  ( .D(n46), .CK(CLK), .RN(n287), .Q(op_A[5]) );
  DFFRQX2M \reg_file_reg[0][7]  ( .D(n48), .CK(CLK), .RN(n287), .Q(op_A[7]) );
  DFFRQX2M \reg_file_reg[0][6]  ( .D(n47), .CK(CLK), .RN(n279), .Q(op_A[6]) );
  DFFRQX2M \reg_file_reg[1][7]  ( .D(n56), .CK(CLK), .RN(n286), .Q(op_B[7]) );
  DFFRQX2M \reg_file_reg[1][6]  ( .D(n55), .CK(CLK), .RN(n286), .Q(op_B[6]) );
  DFFRQX2M \reg_file_reg[1][5]  ( .D(n54), .CK(CLK), .RN(n286), .Q(op_B[5]) );
  DFFRQX2M \reg_file_reg[1][4]  ( .D(n53), .CK(CLK), .RN(n286), .Q(op_B[4]) );
  DFFRQX2M \reg_file_reg[1][3]  ( .D(n52), .CK(CLK), .RN(n286), .Q(op_B[3]) );
  DFFRQX2M \reg_file_reg[1][1]  ( .D(n50), .CK(CLK), .RN(n288), .Q(op_B[1]) );
  DFFRQX2M \reg_file_reg[1][2]  ( .D(n51), .CK(CLK), .RN(n288), .Q(op_B[2]) );
  DFFRQX2M \reg_file_reg[1][0]  ( .D(n49), .CK(CLK), .RN(n287), .Q(op_B[0]) );
  NOR2X2M U3 ( .A(n270), .B(N13), .Y(n19) );
  NOR2X2M U4 ( .A(N12), .B(N13), .Y(n14) );
  INVX2M U5 ( .A(n273), .Y(n274) );
  BUFX2M U6 ( .A(n1), .Y(n273) );
  INVX2M U7 ( .A(n275), .Y(n276) );
  OR2X2M U8 ( .A(n270), .B(n269), .Y(n1) );
  BUFX2M U9 ( .A(n4), .Y(n275) );
  INVX2M U10 ( .A(n2), .Y(n278) );
  INVX2M U11 ( .A(n3), .Y(n277) );
  NAND2X2M U12 ( .A(n19), .B(n15), .Y(n18) );
  NAND2X2M U13 ( .A(n19), .B(n17), .Y(n20) );
  NAND2X2M U14 ( .A(n22), .B(n15), .Y(n21) );
  NAND2X2M U15 ( .A(n22), .B(n17), .Y(n23) );
  NAND2X2M U16 ( .A(n25), .B(n15), .Y(n24) );
  NAND2X2M U17 ( .A(n25), .B(n17), .Y(n27) );
  NAND2X2M U18 ( .A(n30), .B(n22), .Y(n35) );
  NAND2X2M U19 ( .A(n32), .B(n22), .Y(n36) );
  NAND2X2M U20 ( .A(n30), .B(n25), .Y(n37) );
  NAND2X2M U21 ( .A(n32), .B(n25), .Y(n39) );
  NAND2X2M U22 ( .A(n17), .B(n14), .Y(n16) );
  NAND2X2M U23 ( .A(n30), .B(n14), .Y(n29) );
  NAND2X2M U24 ( .A(n32), .B(n14), .Y(n31) );
  NAND2X2M U25 ( .A(n30), .B(n19), .Y(n33) );
  NAND2X2M U26 ( .A(n32), .B(n19), .Y(n34) );
  NAND2X2M U27 ( .A(n14), .B(n15), .Y(n13) );
  AND2X2M U28 ( .A(n26), .B(n269), .Y(n15) );
  AND2X2M U29 ( .A(n38), .B(n269), .Y(n30) );
  OR2X2M U30 ( .A(N11), .B(N12), .Y(n2) );
  OR2X2M U31 ( .A(n269), .B(N12), .Y(n3) );
  OR2X2M U32 ( .A(n270), .B(N11), .Y(n4) );
  INVX2M U33 ( .A(N11), .Y(n269) );
  INVX2M U34 ( .A(N12), .Y(n270) );
  AND2X2M U35 ( .A(n26), .B(N11), .Y(n17) );
  AND2X2M U36 ( .A(n38), .B(N11), .Y(n32) );
  AND2X2M U37 ( .A(N13), .B(n270), .Y(n22) );
  AND2X2M U38 ( .A(N13), .B(N12), .Y(n25) );
  NOR2BX2M U39 ( .AN(n28), .B(N14), .Y(n26) );
  INVX2M U40 ( .A(N13), .Y(n271) );
  INVX2M U41 ( .A(n40), .Y(n302) );
  INVX2M U42 ( .A(N14), .Y(n272) );
  AND2X2M U43 ( .A(N14), .B(n28), .Y(n38) );
  BUFX2M U44 ( .A(n293), .Y(n279) );
  BUFX2M U45 ( .A(n290), .Y(n286) );
  BUFX2M U46 ( .A(n290), .Y(n285) );
  BUFX2M U47 ( .A(n291), .Y(n284) );
  BUFX2M U48 ( .A(n292), .Y(n282) );
  BUFX2M U49 ( .A(n292), .Y(n281) );
  BUFX2M U50 ( .A(n293), .Y(n280) );
  BUFX2M U51 ( .A(n291), .Y(n283) );
  BUFX2M U52 ( .A(n289), .Y(n287) );
  BUFX2M U53 ( .A(n289), .Y(n288) );
  INVX2M U54 ( .A(WrData[0]), .Y(n301) );
  INVX2M U55 ( .A(WrData[1]), .Y(n300) );
  INVX2M U56 ( .A(WrData[2]), .Y(n299) );
  INVX2M U57 ( .A(WrData[3]), .Y(n298) );
  INVX2M U58 ( .A(WrData[4]), .Y(n297) );
  INVX2M U59 ( .A(WrData[5]), .Y(n296) );
  INVX2M U60 ( .A(WrData[6]), .Y(n295) );
  INVX2M U61 ( .A(WrData[7]), .Y(n294) );
  NAND2X2M U62 ( .A(RdEn), .B(n303), .Y(n40) );
  NOR2X2M U63 ( .A(n303), .B(RdEn), .Y(n28) );
  BUFX2M U64 ( .A(RST), .Y(n290) );
  BUFX2M U65 ( .A(RST), .Y(n292) );
  BUFX2M U66 ( .A(RST), .Y(n291) );
  BUFX2M U67 ( .A(RST), .Y(n293) );
  BUFX2M U68 ( .A(RST), .Y(n289) );
  AO22X1M U69 ( .A0(N42), .A1(n302), .B0(RdData[1]), .B1(n40), .Y(n170) );
  AO22X1M U70 ( .A0(N40), .A1(n302), .B0(RdData[3]), .B1(n40), .Y(n172) );
  AO22X1M U71 ( .A0(N39), .A1(n302), .B0(RdData[4]), .B1(n40), .Y(n173) );
  AO22X1M U72 ( .A0(N38), .A1(n302), .B0(RdData[5]), .B1(n40), .Y(n174) );
  AO22X1M U73 ( .A0(N37), .A1(n302), .B0(RdData[6]), .B1(n40), .Y(n175) );
  AO22X1M U74 ( .A0(N36), .A1(n302), .B0(RdData[7]), .B1(n40), .Y(n176) );
  AO22X1M U75 ( .A0(N43), .A1(n302), .B0(RdData[0]), .B1(n40), .Y(n169) );
  AO22X1M U76 ( .A0(N41), .A1(n302), .B0(RdData[2]), .B1(n40), .Y(n171) );
  OAI2BB2X1M U77 ( .B0(n13), .B1(n301), .A0N(op_A[0]), .A1N(n13), .Y(n41) );
  OAI2BB2X1M U78 ( .B0(n13), .B1(n300), .A0N(op_A[1]), .A1N(n13), .Y(n42) );
  OAI2BB2X1M U79 ( .B0(n13), .B1(n299), .A0N(op_A[2]), .A1N(n13), .Y(n43) );
  OAI2BB2X1M U80 ( .B0(n13), .B1(n298), .A0N(op_A[3]), .A1N(n13), .Y(n44) );
  OAI2BB2X1M U81 ( .B0(n13), .B1(n297), .A0N(op_A[4]), .A1N(n13), .Y(n45) );
  OAI2BB2X1M U82 ( .B0(n13), .B1(n296), .A0N(op_A[5]), .A1N(n13), .Y(n46) );
  OAI2BB2X1M U83 ( .B0(n13), .B1(n295), .A0N(op_A[6]), .A1N(n13), .Y(n47) );
  OAI2BB2X1M U84 ( .B0(n13), .B1(n294), .A0N(op_A[7]), .A1N(n13), .Y(n48) );
  OAI2BB2X1M U85 ( .B0(n300), .B1(n18), .A0N(UART_CON[1]), .A1N(n18), .Y(n58)
         );
  OAI2BB2X1M U86 ( .B0(n299), .B1(n18), .A0N(UART_CON[2]), .A1N(n18), .Y(n59)
         );
  OAI2BB2X1M U87 ( .B0(n298), .B1(n18), .A0N(UART_CON[3]), .A1N(n18), .Y(n60)
         );
  OAI2BB2X1M U88 ( .B0(n297), .B1(n18), .A0N(UART_CON[4]), .A1N(n18), .Y(n61)
         );
  OAI2BB2X1M U89 ( .B0(n296), .B1(n18), .A0N(UART_CON[5]), .A1N(n18), .Y(n62)
         );
  OAI2BB2X1M U90 ( .B0(n295), .B1(n18), .A0N(UART_CON[6]), .A1N(n18), .Y(n63)
         );
  OAI2BB2X1M U91 ( .B0(n301), .B1(n20), .A0N(DIV_ratio[0]), .A1N(n20), .Y(n65)
         );
  OAI2BB2X1M U92 ( .B0(n300), .B1(n20), .A0N(DIV_ratio[1]), .A1N(n20), .Y(n66)
         );
  OAI2BB2X1M U93 ( .B0(n299), .B1(n20), .A0N(DIV_ratio[2]), .A1N(n20), .Y(n67)
         );
  OAI2BB2X1M U94 ( .B0(n298), .B1(n20), .A0N(DIV_ratio[3]), .A1N(n20), .Y(n68)
         );
  OAI2BB2X1M U95 ( .B0(n297), .B1(n20), .A0N(DIV_ratio[4]), .A1N(n20), .Y(n69)
         );
  OAI2BB2X1M U96 ( .B0(n295), .B1(n20), .A0N(DIV_ratio[6]), .A1N(n20), .Y(n71)
         );
  OAI2BB2X1M U97 ( .B0(n294), .B1(n20), .A0N(DIV_ratio[7]), .A1N(n20), .Y(n72)
         );
  OAI2BB2X1M U98 ( .B0(n301), .B1(n16), .A0N(op_B[0]), .A1N(n16), .Y(n49) );
  OAI2BB2X1M U99 ( .B0(n300), .B1(n16), .A0N(op_B[1]), .A1N(n16), .Y(n50) );
  OAI2BB2X1M U100 ( .B0(n299), .B1(n16), .A0N(op_B[2]), .A1N(n16), .Y(n51) );
  OAI2BB2X1M U101 ( .B0(n298), .B1(n16), .A0N(op_B[3]), .A1N(n16), .Y(n52) );
  OAI2BB2X1M U102 ( .B0(n297), .B1(n16), .A0N(op_B[4]), .A1N(n16), .Y(n53) );
  OAI2BB2X1M U103 ( .B0(n296), .B1(n16), .A0N(op_B[5]), .A1N(n16), .Y(n54) );
  OAI2BB2X1M U104 ( .B0(n295), .B1(n16), .A0N(op_B[6]), .A1N(n16), .Y(n55) );
  OAI2BB2X1M U105 ( .B0(n294), .B1(n16), .A0N(op_B[7]), .A1N(n16), .Y(n56) );
  OAI2BB2X1M U106 ( .B0(n301), .B1(n29), .A0N(\reg_file[8][0] ), .A1N(n29), 
        .Y(n105) );
  OAI2BB2X1M U107 ( .B0(n300), .B1(n29), .A0N(\reg_file[8][1] ), .A1N(n29), 
        .Y(n106) );
  OAI2BB2X1M U108 ( .B0(n299), .B1(n29), .A0N(\reg_file[8][2] ), .A1N(n29), 
        .Y(n107) );
  OAI2BB2X1M U109 ( .B0(n298), .B1(n29), .A0N(\reg_file[8][3] ), .A1N(n29), 
        .Y(n108) );
  OAI2BB2X1M U110 ( .B0(n297), .B1(n29), .A0N(\reg_file[8][4] ), .A1N(n29), 
        .Y(n109) );
  OAI2BB2X1M U111 ( .B0(n296), .B1(n29), .A0N(\reg_file[8][5] ), .A1N(n29), 
        .Y(n110) );
  OAI2BB2X1M U112 ( .B0(n295), .B1(n29), .A0N(\reg_file[8][6] ), .A1N(n29), 
        .Y(n111) );
  OAI2BB2X1M U113 ( .B0(n294), .B1(n29), .A0N(\reg_file[8][7] ), .A1N(n29), 
        .Y(n112) );
  OAI2BB2X1M U114 ( .B0(n301), .B1(n31), .A0N(\reg_file[9][0] ), .A1N(n31), 
        .Y(n113) );
  OAI2BB2X1M U115 ( .B0(n300), .B1(n31), .A0N(\reg_file[9][1] ), .A1N(n31), 
        .Y(n114) );
  OAI2BB2X1M U116 ( .B0(n299), .B1(n31), .A0N(\reg_file[9][2] ), .A1N(n31), 
        .Y(n115) );
  OAI2BB2X1M U117 ( .B0(n298), .B1(n31), .A0N(\reg_file[9][3] ), .A1N(n31), 
        .Y(n116) );
  OAI2BB2X1M U118 ( .B0(n297), .B1(n31), .A0N(\reg_file[9][4] ), .A1N(n31), 
        .Y(n117) );
  OAI2BB2X1M U119 ( .B0(n296), .B1(n31), .A0N(\reg_file[9][5] ), .A1N(n31), 
        .Y(n118) );
  OAI2BB2X1M U120 ( .B0(n295), .B1(n31), .A0N(\reg_file[9][6] ), .A1N(n31), 
        .Y(n119) );
  OAI2BB2X1M U121 ( .B0(n294), .B1(n31), .A0N(\reg_file[9][7] ), .A1N(n31), 
        .Y(n120) );
  OAI2BB2X1M U122 ( .B0(n301), .B1(n33), .A0N(\reg_file[10][0] ), .A1N(n33), 
        .Y(n121) );
  OAI2BB2X1M U123 ( .B0(n300), .B1(n33), .A0N(\reg_file[10][1] ), .A1N(n33), 
        .Y(n122) );
  OAI2BB2X1M U124 ( .B0(n299), .B1(n33), .A0N(\reg_file[10][2] ), .A1N(n33), 
        .Y(n123) );
  OAI2BB2X1M U125 ( .B0(n298), .B1(n33), .A0N(\reg_file[10][3] ), .A1N(n33), 
        .Y(n124) );
  OAI2BB2X1M U126 ( .B0(n297), .B1(n33), .A0N(\reg_file[10][4] ), .A1N(n33), 
        .Y(n125) );
  OAI2BB2X1M U127 ( .B0(n296), .B1(n33), .A0N(\reg_file[10][5] ), .A1N(n33), 
        .Y(n126) );
  OAI2BB2X1M U128 ( .B0(n295), .B1(n33), .A0N(\reg_file[10][6] ), .A1N(n33), 
        .Y(n127) );
  OAI2BB2X1M U129 ( .B0(n294), .B1(n33), .A0N(\reg_file[10][7] ), .A1N(n33), 
        .Y(n128) );
  OAI2BB2X1M U130 ( .B0(n301), .B1(n34), .A0N(\reg_file[11][0] ), .A1N(n34), 
        .Y(n129) );
  OAI2BB2X1M U131 ( .B0(n300), .B1(n34), .A0N(\reg_file[11][1] ), .A1N(n34), 
        .Y(n130) );
  OAI2BB2X1M U132 ( .B0(n299), .B1(n34), .A0N(\reg_file[11][2] ), .A1N(n34), 
        .Y(n131) );
  OAI2BB2X1M U133 ( .B0(n298), .B1(n34), .A0N(\reg_file[11][3] ), .A1N(n34), 
        .Y(n132) );
  OAI2BB2X1M U134 ( .B0(n297), .B1(n34), .A0N(\reg_file[11][4] ), .A1N(n34), 
        .Y(n133) );
  OAI2BB2X1M U135 ( .B0(n296), .B1(n34), .A0N(\reg_file[11][5] ), .A1N(n34), 
        .Y(n134) );
  OAI2BB2X1M U136 ( .B0(n295), .B1(n34), .A0N(\reg_file[11][6] ), .A1N(n34), 
        .Y(n135) );
  OAI2BB2X1M U137 ( .B0(n294), .B1(n34), .A0N(\reg_file[11][7] ), .A1N(n34), 
        .Y(n136) );
  OAI2BB2X1M U138 ( .B0(n301), .B1(n23), .A0N(\reg_file[5][0] ), .A1N(n23), 
        .Y(n81) );
  OAI2BB2X1M U139 ( .B0(n300), .B1(n23), .A0N(\reg_file[5][1] ), .A1N(n23), 
        .Y(n82) );
  OAI2BB2X1M U140 ( .B0(n299), .B1(n23), .A0N(\reg_file[5][2] ), .A1N(n23), 
        .Y(n83) );
  OAI2BB2X1M U141 ( .B0(n298), .B1(n23), .A0N(\reg_file[5][3] ), .A1N(n23), 
        .Y(n84) );
  OAI2BB2X1M U142 ( .B0(n297), .B1(n23), .A0N(\reg_file[5][4] ), .A1N(n23), 
        .Y(n85) );
  OAI2BB2X1M U143 ( .B0(n296), .B1(n23), .A0N(\reg_file[5][5] ), .A1N(n23), 
        .Y(n86) );
  OAI2BB2X1M U144 ( .B0(n295), .B1(n23), .A0N(\reg_file[5][6] ), .A1N(n23), 
        .Y(n87) );
  OAI2BB2X1M U145 ( .B0(n294), .B1(n23), .A0N(\reg_file[5][7] ), .A1N(n23), 
        .Y(n88) );
  OAI2BB2X1M U146 ( .B0(n301), .B1(n27), .A0N(\reg_file[7][0] ), .A1N(n27), 
        .Y(n97) );
  OAI2BB2X1M U147 ( .B0(n300), .B1(n27), .A0N(\reg_file[7][1] ), .A1N(n27), 
        .Y(n98) );
  OAI2BB2X1M U148 ( .B0(n299), .B1(n27), .A0N(\reg_file[7][2] ), .A1N(n27), 
        .Y(n99) );
  OAI2BB2X1M U149 ( .B0(n298), .B1(n27), .A0N(\reg_file[7][3] ), .A1N(n27), 
        .Y(n100) );
  OAI2BB2X1M U150 ( .B0(n297), .B1(n27), .A0N(\reg_file[7][4] ), .A1N(n27), 
        .Y(n101) );
  OAI2BB2X1M U151 ( .B0(n296), .B1(n27), .A0N(\reg_file[7][5] ), .A1N(n27), 
        .Y(n102) );
  OAI2BB2X1M U152 ( .B0(n295), .B1(n27), .A0N(\reg_file[7][6] ), .A1N(n27), 
        .Y(n103) );
  OAI2BB2X1M U153 ( .B0(n294), .B1(n27), .A0N(\reg_file[7][7] ), .A1N(n27), 
        .Y(n104) );
  OAI2BB2X1M U154 ( .B0(n301), .B1(n35), .A0N(\reg_file[12][0] ), .A1N(n35), 
        .Y(n137) );
  OAI2BB2X1M U155 ( .B0(n300), .B1(n35), .A0N(\reg_file[12][1] ), .A1N(n35), 
        .Y(n138) );
  OAI2BB2X1M U156 ( .B0(n299), .B1(n35), .A0N(\reg_file[12][2] ), .A1N(n35), 
        .Y(n139) );
  OAI2BB2X1M U157 ( .B0(n298), .B1(n35), .A0N(\reg_file[12][3] ), .A1N(n35), 
        .Y(n140) );
  OAI2BB2X1M U158 ( .B0(n297), .B1(n35), .A0N(\reg_file[12][4] ), .A1N(n35), 
        .Y(n141) );
  OAI2BB2X1M U159 ( .B0(n296), .B1(n35), .A0N(\reg_file[12][5] ), .A1N(n35), 
        .Y(n142) );
  OAI2BB2X1M U160 ( .B0(n295), .B1(n35), .A0N(\reg_file[12][6] ), .A1N(n35), 
        .Y(n143) );
  OAI2BB2X1M U161 ( .B0(n294), .B1(n35), .A0N(\reg_file[12][7] ), .A1N(n35), 
        .Y(n144) );
  OAI2BB2X1M U162 ( .B0(n301), .B1(n36), .A0N(\reg_file[13][0] ), .A1N(n36), 
        .Y(n145) );
  OAI2BB2X1M U163 ( .B0(n300), .B1(n36), .A0N(\reg_file[13][1] ), .A1N(n36), 
        .Y(n146) );
  OAI2BB2X1M U164 ( .B0(n299), .B1(n36), .A0N(\reg_file[13][2] ), .A1N(n36), 
        .Y(n147) );
  OAI2BB2X1M U165 ( .B0(n298), .B1(n36), .A0N(\reg_file[13][3] ), .A1N(n36), 
        .Y(n148) );
  OAI2BB2X1M U166 ( .B0(n297), .B1(n36), .A0N(\reg_file[13][4] ), .A1N(n36), 
        .Y(n149) );
  OAI2BB2X1M U167 ( .B0(n296), .B1(n36), .A0N(\reg_file[13][5] ), .A1N(n36), 
        .Y(n150) );
  OAI2BB2X1M U168 ( .B0(n295), .B1(n36), .A0N(\reg_file[13][6] ), .A1N(n36), 
        .Y(n151) );
  OAI2BB2X1M U169 ( .B0(n294), .B1(n36), .A0N(\reg_file[13][7] ), .A1N(n36), 
        .Y(n152) );
  OAI2BB2X1M U170 ( .B0(n301), .B1(n37), .A0N(\reg_file[14][0] ), .A1N(n37), 
        .Y(n153) );
  OAI2BB2X1M U171 ( .B0(n300), .B1(n37), .A0N(\reg_file[14][1] ), .A1N(n37), 
        .Y(n154) );
  OAI2BB2X1M U172 ( .B0(n299), .B1(n37), .A0N(\reg_file[14][2] ), .A1N(n37), 
        .Y(n155) );
  OAI2BB2X1M U173 ( .B0(n298), .B1(n37), .A0N(\reg_file[14][3] ), .A1N(n37), 
        .Y(n156) );
  OAI2BB2X1M U174 ( .B0(n297), .B1(n37), .A0N(\reg_file[14][4] ), .A1N(n37), 
        .Y(n157) );
  OAI2BB2X1M U175 ( .B0(n296), .B1(n37), .A0N(\reg_file[14][5] ), .A1N(n37), 
        .Y(n158) );
  OAI2BB2X1M U176 ( .B0(n295), .B1(n37), .A0N(\reg_file[14][6] ), .A1N(n37), 
        .Y(n159) );
  OAI2BB2X1M U177 ( .B0(n294), .B1(n37), .A0N(\reg_file[14][7] ), .A1N(n37), 
        .Y(n160) );
  OAI2BB2X1M U178 ( .B0(n301), .B1(n39), .A0N(\reg_file[15][0] ), .A1N(n39), 
        .Y(n161) );
  OAI2BB2X1M U179 ( .B0(n300), .B1(n39), .A0N(\reg_file[15][1] ), .A1N(n39), 
        .Y(n162) );
  OAI2BB2X1M U180 ( .B0(n299), .B1(n39), .A0N(\reg_file[15][2] ), .A1N(n39), 
        .Y(n163) );
  OAI2BB2X1M U181 ( .B0(n298), .B1(n39), .A0N(\reg_file[15][3] ), .A1N(n39), 
        .Y(n164) );
  OAI2BB2X1M U182 ( .B0(n297), .B1(n39), .A0N(\reg_file[15][4] ), .A1N(n39), 
        .Y(n165) );
  OAI2BB2X1M U183 ( .B0(n296), .B1(n39), .A0N(\reg_file[15][5] ), .A1N(n39), 
        .Y(n166) );
  OAI2BB2X1M U184 ( .B0(n295), .B1(n39), .A0N(\reg_file[15][6] ), .A1N(n39), 
        .Y(n167) );
  OAI2BB2X1M U185 ( .B0(n294), .B1(n39), .A0N(\reg_file[15][7] ), .A1N(n39), 
        .Y(n168) );
  OAI2BB2X1M U186 ( .B0(n301), .B1(n21), .A0N(\reg_file[4][0] ), .A1N(n21), 
        .Y(n73) );
  OAI2BB2X1M U187 ( .B0(n300), .B1(n21), .A0N(\reg_file[4][1] ), .A1N(n21), 
        .Y(n74) );
  OAI2BB2X1M U188 ( .B0(n299), .B1(n21), .A0N(\reg_file[4][2] ), .A1N(n21), 
        .Y(n75) );
  OAI2BB2X1M U189 ( .B0(n298), .B1(n21), .A0N(\reg_file[4][3] ), .A1N(n21), 
        .Y(n76) );
  OAI2BB2X1M U190 ( .B0(n297), .B1(n21), .A0N(\reg_file[4][4] ), .A1N(n21), 
        .Y(n77) );
  OAI2BB2X1M U191 ( .B0(n296), .B1(n21), .A0N(\reg_file[4][5] ), .A1N(n21), 
        .Y(n78) );
  OAI2BB2X1M U192 ( .B0(n295), .B1(n21), .A0N(\reg_file[4][6] ), .A1N(n21), 
        .Y(n79) );
  OAI2BB2X1M U193 ( .B0(n294), .B1(n21), .A0N(\reg_file[4][7] ), .A1N(n21), 
        .Y(n80) );
  OAI2BB2X1M U194 ( .B0(n301), .B1(n24), .A0N(\reg_file[6][0] ), .A1N(n24), 
        .Y(n89) );
  OAI2BB2X1M U195 ( .B0(n300), .B1(n24), .A0N(\reg_file[6][1] ), .A1N(n24), 
        .Y(n90) );
  OAI2BB2X1M U196 ( .B0(n299), .B1(n24), .A0N(\reg_file[6][2] ), .A1N(n24), 
        .Y(n91) );
  OAI2BB2X1M U197 ( .B0(n298), .B1(n24), .A0N(\reg_file[6][3] ), .A1N(n24), 
        .Y(n92) );
  OAI2BB2X1M U198 ( .B0(n297), .B1(n24), .A0N(\reg_file[6][4] ), .A1N(n24), 
        .Y(n93) );
  OAI2BB2X1M U199 ( .B0(n296), .B1(n24), .A0N(\reg_file[6][5] ), .A1N(n24), 
        .Y(n94) );
  OAI2BB2X1M U200 ( .B0(n295), .B1(n24), .A0N(\reg_file[6][6] ), .A1N(n24), 
        .Y(n95) );
  OAI2BB2X1M U201 ( .B0(n294), .B1(n24), .A0N(\reg_file[6][7] ), .A1N(n24), 
        .Y(n96) );
  OAI2BB2X1M U202 ( .B0(n301), .B1(n18), .A0N(UART_CON[0]), .A1N(n18), .Y(n57)
         );
  OAI2BB2X1M U203 ( .B0(n294), .B1(n18), .A0N(UART_CON[7]), .A1N(n18), .Y(n64)
         );
  OAI2BB2X1M U204 ( .B0(n296), .B1(n20), .A0N(DIV_ratio[5]), .A1N(n20), .Y(n70) );
  INVX2M U205 ( .A(WrEn), .Y(n303) );
  AOI22X1M U206 ( .A0(\reg_file[10][0] ), .A1(n276), .B0(\reg_file[11][0] ), 
        .B1(n274), .Y(n6) );
  AOI22X1M U207 ( .A0(\reg_file[8][0] ), .A1(n278), .B0(\reg_file[9][0] ), 
        .B1(n277), .Y(n5) );
  CLKNAND2X2M U208 ( .A(N14), .B(n271), .Y(n253) );
  AOI21X1M U209 ( .A0(n6), .A1(n5), .B0(n253), .Y(n180) );
  AOI22X1M U210 ( .A0(\reg_file[14][0] ), .A1(n276), .B0(\reg_file[15][0] ), 
        .B1(n274), .Y(n8) );
  AOI22X1M U211 ( .A0(\reg_file[12][0] ), .A1(n278), .B0(\reg_file[13][0] ), 
        .B1(n277), .Y(n7) );
  CLKNAND2X2M U212 ( .A(N14), .B(N13), .Y(n256) );
  AOI21X1M U213 ( .A0(n8), .A1(n7), .B0(n256), .Y(n179) );
  AOI22X1M U214 ( .A0(UART_CON[0]), .A1(n276), .B0(DIV_ratio[0]), .B1(n274), 
        .Y(n10) );
  AOI22X1M U215 ( .A0(op_A[0]), .A1(n278), .B0(op_B[0]), .B1(n277), .Y(n9) );
  CLKNAND2X2M U216 ( .A(n271), .B(n272), .Y(n259) );
  AOI21X1M U217 ( .A0(n10), .A1(n9), .B0(n259), .Y(n178) );
  AOI22X1M U218 ( .A0(\reg_file[6][0] ), .A1(n276), .B0(\reg_file[7][0] ), 
        .B1(n274), .Y(n12) );
  AOI22X1M U219 ( .A0(\reg_file[4][0] ), .A1(n278), .B0(\reg_file[5][0] ), 
        .B1(n277), .Y(n11) );
  CLKNAND2X2M U220 ( .A(N13), .B(n272), .Y(n262) );
  AOI21X1M U221 ( .A0(n12), .A1(n11), .B0(n262), .Y(n177) );
  OR4X1M U222 ( .A(n180), .B(n179), .C(n178), .D(n177), .Y(N43) );
  AOI22X1M U223 ( .A0(\reg_file[10][1] ), .A1(n276), .B0(\reg_file[11][1] ), 
        .B1(n274), .Y(n182) );
  AOI22X1M U224 ( .A0(\reg_file[8][1] ), .A1(n278), .B0(\reg_file[9][1] ), 
        .B1(n277), .Y(n181) );
  AOI21X1M U225 ( .A0(n182), .A1(n181), .B0(n253), .Y(n192) );
  AOI22X1M U226 ( .A0(\reg_file[14][1] ), .A1(n276), .B0(\reg_file[15][1] ), 
        .B1(n274), .Y(n184) );
  AOI22X1M U227 ( .A0(\reg_file[12][1] ), .A1(n278), .B0(\reg_file[13][1] ), 
        .B1(n277), .Y(n183) );
  AOI21X1M U228 ( .A0(n184), .A1(n183), .B0(n256), .Y(n191) );
  AOI22X1M U229 ( .A0(UART_CON[1]), .A1(n276), .B0(DIV_ratio[1]), .B1(n274), 
        .Y(n186) );
  AOI22X1M U230 ( .A0(op_A[1]), .A1(n278), .B0(op_B[1]), .B1(n277), .Y(n185)
         );
  AOI21X1M U231 ( .A0(n186), .A1(n185), .B0(n259), .Y(n190) );
  AOI22X1M U232 ( .A0(\reg_file[6][1] ), .A1(n276), .B0(\reg_file[7][1] ), 
        .B1(n274), .Y(n188) );
  AOI22X1M U233 ( .A0(\reg_file[4][1] ), .A1(n278), .B0(\reg_file[5][1] ), 
        .B1(n277), .Y(n187) );
  AOI21X1M U234 ( .A0(n188), .A1(n187), .B0(n262), .Y(n189) );
  OR4X1M U235 ( .A(n192), .B(n191), .C(n190), .D(n189), .Y(N42) );
  AOI22X1M U236 ( .A0(\reg_file[10][2] ), .A1(n276), .B0(\reg_file[11][2] ), 
        .B1(n274), .Y(n194) );
  AOI22X1M U237 ( .A0(\reg_file[8][2] ), .A1(n278), .B0(\reg_file[9][2] ), 
        .B1(n277), .Y(n193) );
  AOI21X1M U238 ( .A0(n194), .A1(n193), .B0(n253), .Y(n204) );
  AOI22X1M U239 ( .A0(\reg_file[14][2] ), .A1(n276), .B0(\reg_file[15][2] ), 
        .B1(n274), .Y(n196) );
  AOI22X1M U240 ( .A0(\reg_file[12][2] ), .A1(n278), .B0(\reg_file[13][2] ), 
        .B1(n277), .Y(n195) );
  AOI21X1M U241 ( .A0(n196), .A1(n195), .B0(n256), .Y(n203) );
  AOI22X1M U242 ( .A0(UART_CON[2]), .A1(n276), .B0(DIV_ratio[2]), .B1(n274), 
        .Y(n198) );
  AOI22X1M U243 ( .A0(op_A[2]), .A1(n278), .B0(op_B[2]), .B1(n277), .Y(n197)
         );
  AOI21X1M U244 ( .A0(n198), .A1(n197), .B0(n259), .Y(n202) );
  AOI22X1M U245 ( .A0(\reg_file[6][2] ), .A1(n276), .B0(\reg_file[7][2] ), 
        .B1(n274), .Y(n200) );
  AOI22X1M U246 ( .A0(\reg_file[4][2] ), .A1(n278), .B0(\reg_file[5][2] ), 
        .B1(n277), .Y(n199) );
  AOI21X1M U247 ( .A0(n200), .A1(n199), .B0(n262), .Y(n201) );
  OR4X1M U248 ( .A(n204), .B(n203), .C(n202), .D(n201), .Y(N41) );
  AOI22X1M U249 ( .A0(\reg_file[10][3] ), .A1(n276), .B0(\reg_file[11][3] ), 
        .B1(n274), .Y(n206) );
  AOI22X1M U250 ( .A0(\reg_file[8][3] ), .A1(n278), .B0(\reg_file[9][3] ), 
        .B1(n277), .Y(n205) );
  AOI21X1M U251 ( .A0(n206), .A1(n205), .B0(n253), .Y(n216) );
  AOI22X1M U252 ( .A0(\reg_file[14][3] ), .A1(n276), .B0(\reg_file[15][3] ), 
        .B1(n274), .Y(n208) );
  AOI22X1M U253 ( .A0(\reg_file[12][3] ), .A1(n278), .B0(\reg_file[13][3] ), 
        .B1(n277), .Y(n207) );
  AOI21X1M U254 ( .A0(n208), .A1(n207), .B0(n256), .Y(n215) );
  AOI22X1M U255 ( .A0(UART_CON[3]), .A1(n276), .B0(DIV_ratio[3]), .B1(n274), 
        .Y(n210) );
  AOI22X1M U256 ( .A0(op_A[3]), .A1(n278), .B0(op_B[3]), .B1(n277), .Y(n209)
         );
  AOI21X1M U257 ( .A0(n210), .A1(n209), .B0(n259), .Y(n214) );
  AOI22X1M U258 ( .A0(\reg_file[6][3] ), .A1(n276), .B0(\reg_file[7][3] ), 
        .B1(n274), .Y(n212) );
  AOI22X1M U259 ( .A0(\reg_file[4][3] ), .A1(n278), .B0(\reg_file[5][3] ), 
        .B1(n277), .Y(n211) );
  AOI21X1M U260 ( .A0(n212), .A1(n211), .B0(n262), .Y(n213) );
  OR4X1M U261 ( .A(n216), .B(n215), .C(n214), .D(n213), .Y(N40) );
  AOI22X1M U262 ( .A0(\reg_file[10][4] ), .A1(n276), .B0(\reg_file[11][4] ), 
        .B1(n274), .Y(n218) );
  AOI22X1M U263 ( .A0(\reg_file[8][4] ), .A1(n278), .B0(\reg_file[9][4] ), 
        .B1(n277), .Y(n217) );
  AOI21X1M U264 ( .A0(n218), .A1(n217), .B0(n253), .Y(n228) );
  AOI22X1M U265 ( .A0(\reg_file[14][4] ), .A1(n276), .B0(\reg_file[15][4] ), 
        .B1(n274), .Y(n220) );
  AOI22X1M U266 ( .A0(\reg_file[12][4] ), .A1(n278), .B0(\reg_file[13][4] ), 
        .B1(n277), .Y(n219) );
  AOI21X1M U267 ( .A0(n220), .A1(n219), .B0(n256), .Y(n227) );
  AOI22X1M U268 ( .A0(UART_CON[4]), .A1(n276), .B0(DIV_ratio[4]), .B1(n274), 
        .Y(n222) );
  AOI22X1M U269 ( .A0(op_A[4]), .A1(n278), .B0(op_B[4]), .B1(n277), .Y(n221)
         );
  AOI21X1M U270 ( .A0(n222), .A1(n221), .B0(n259), .Y(n226) );
  AOI22X1M U271 ( .A0(\reg_file[6][4] ), .A1(n276), .B0(\reg_file[7][4] ), 
        .B1(n274), .Y(n224) );
  AOI22X1M U272 ( .A0(\reg_file[4][4] ), .A1(n278), .B0(\reg_file[5][4] ), 
        .B1(n277), .Y(n223) );
  AOI21X1M U273 ( .A0(n224), .A1(n223), .B0(n262), .Y(n225) );
  OR4X1M U274 ( .A(n228), .B(n227), .C(n226), .D(n225), .Y(N39) );
  AOI22X1M U275 ( .A0(\reg_file[10][5] ), .A1(n276), .B0(\reg_file[11][5] ), 
        .B1(n274), .Y(n230) );
  AOI22X1M U276 ( .A0(\reg_file[8][5] ), .A1(n278), .B0(\reg_file[9][5] ), 
        .B1(n277), .Y(n229) );
  AOI21X1M U277 ( .A0(n230), .A1(n229), .B0(n253), .Y(n240) );
  AOI22X1M U278 ( .A0(\reg_file[14][5] ), .A1(n276), .B0(\reg_file[15][5] ), 
        .B1(n274), .Y(n232) );
  AOI22X1M U279 ( .A0(\reg_file[12][5] ), .A1(n278), .B0(\reg_file[13][5] ), 
        .B1(n277), .Y(n231) );
  AOI21X1M U280 ( .A0(n232), .A1(n231), .B0(n256), .Y(n239) );
  AOI22X1M U281 ( .A0(UART_CON[5]), .A1(n276), .B0(DIV_ratio[5]), .B1(n274), 
        .Y(n234) );
  AOI22X1M U282 ( .A0(op_A[5]), .A1(n278), .B0(op_B[5]), .B1(n277), .Y(n233)
         );
  AOI21X1M U283 ( .A0(n234), .A1(n233), .B0(n259), .Y(n238) );
  AOI22X1M U284 ( .A0(\reg_file[6][5] ), .A1(n276), .B0(\reg_file[7][5] ), 
        .B1(n274), .Y(n236) );
  AOI22X1M U285 ( .A0(\reg_file[4][5] ), .A1(n278), .B0(\reg_file[5][5] ), 
        .B1(n277), .Y(n235) );
  AOI21X1M U286 ( .A0(n236), .A1(n235), .B0(n262), .Y(n237) );
  OR4X1M U287 ( .A(n240), .B(n239), .C(n238), .D(n237), .Y(N38) );
  AOI22X1M U288 ( .A0(\reg_file[10][6] ), .A1(n276), .B0(\reg_file[11][6] ), 
        .B1(n274), .Y(n242) );
  AOI22X1M U289 ( .A0(\reg_file[8][6] ), .A1(n278), .B0(\reg_file[9][6] ), 
        .B1(n277), .Y(n241) );
  AOI21X1M U290 ( .A0(n242), .A1(n241), .B0(n253), .Y(n252) );
  AOI22X1M U291 ( .A0(\reg_file[14][6] ), .A1(n276), .B0(\reg_file[15][6] ), 
        .B1(n274), .Y(n244) );
  AOI22X1M U292 ( .A0(\reg_file[12][6] ), .A1(n278), .B0(\reg_file[13][6] ), 
        .B1(n277), .Y(n243) );
  AOI21X1M U293 ( .A0(n244), .A1(n243), .B0(n256), .Y(n251) );
  AOI22X1M U294 ( .A0(UART_CON[6]), .A1(n276), .B0(DIV_ratio[6]), .B1(n274), 
        .Y(n246) );
  AOI22X1M U295 ( .A0(op_A[6]), .A1(n278), .B0(op_B[6]), .B1(n277), .Y(n245)
         );
  AOI21X1M U296 ( .A0(n246), .A1(n245), .B0(n259), .Y(n250) );
  AOI22X1M U297 ( .A0(\reg_file[6][6] ), .A1(n276), .B0(\reg_file[7][6] ), 
        .B1(n274), .Y(n248) );
  AOI22X1M U298 ( .A0(\reg_file[4][6] ), .A1(n278), .B0(\reg_file[5][6] ), 
        .B1(n277), .Y(n247) );
  AOI21X1M U299 ( .A0(n248), .A1(n247), .B0(n262), .Y(n249) );
  OR4X1M U300 ( .A(n252), .B(n251), .C(n250), .D(n249), .Y(N37) );
  AOI22X1M U301 ( .A0(\reg_file[10][7] ), .A1(n276), .B0(\reg_file[11][7] ), 
        .B1(n274), .Y(n255) );
  AOI22X1M U302 ( .A0(\reg_file[8][7] ), .A1(n278), .B0(\reg_file[9][7] ), 
        .B1(n277), .Y(n254) );
  AOI21X1M U303 ( .A0(n255), .A1(n254), .B0(n253), .Y(n268) );
  AOI22X1M U304 ( .A0(\reg_file[14][7] ), .A1(n276), .B0(\reg_file[15][7] ), 
        .B1(n274), .Y(n258) );
  AOI22X1M U305 ( .A0(\reg_file[12][7] ), .A1(n278), .B0(\reg_file[13][7] ), 
        .B1(n277), .Y(n257) );
  AOI21X1M U306 ( .A0(n258), .A1(n257), .B0(n256), .Y(n267) );
  AOI22X1M U307 ( .A0(UART_CON[7]), .A1(n276), .B0(DIV_ratio[7]), .B1(n274), 
        .Y(n261) );
  AOI22X1M U308 ( .A0(op_A[7]), .A1(n278), .B0(op_B[7]), .B1(n277), .Y(n260)
         );
  AOI21X1M U309 ( .A0(n261), .A1(n260), .B0(n259), .Y(n266) );
  AOI22X1M U310 ( .A0(\reg_file[6][7] ), .A1(n276), .B0(\reg_file[7][7] ), 
        .B1(n274), .Y(n264) );
  AOI22X1M U311 ( .A0(\reg_file[4][7] ), .A1(n278), .B0(\reg_file[5][7] ), 
        .B1(n277), .Y(n263) );
  AOI21X1M U312 ( .A0(n264), .A1(n263), .B0(n262), .Y(n265) );
  OR4X1M U313 ( .A(n268), .B(n267), .C(n266), .D(n265), .Y(N36) );
endmodule


module FIFO_Mem_DATA_WIDTH8_FIFO_DEPTH8 ( rst_n, clk, wdata, wclken, waddr, 
        raddr, rdata );
  input [7:0] wdata;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] rdata;
  input rst_n, clk, wclken;
  wire   N10, N11, N12, \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , \mem[3][7] , \mem[3][6] ,
         \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] ,
         \mem[3][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] ,
         \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[0][7] , \mem[0][6] , \mem[0][5] ,
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];

  DFFRQX2M \mem_reg[1][7]  ( .D(n36), .CK(clk), .RN(n117), .Q(\mem[1][7] ) );
  DFFRQX2M \mem_reg[1][6]  ( .D(n35), .CK(clk), .RN(n117), .Q(\mem[1][6] ) );
  DFFRQX2M \mem_reg[1][5]  ( .D(n34), .CK(clk), .RN(n117), .Q(\mem[1][5] ) );
  DFFRQX2M \mem_reg[1][4]  ( .D(n33), .CK(clk), .RN(n116), .Q(\mem[1][4] ) );
  DFFRQX2M \mem_reg[1][3]  ( .D(n32), .CK(clk), .RN(n116), .Q(\mem[1][3] ) );
  DFFRQX2M \mem_reg[1][2]  ( .D(n31), .CK(clk), .RN(n116), .Q(\mem[1][2] ) );
  DFFRQX2M \mem_reg[1][1]  ( .D(n30), .CK(clk), .RN(n116), .Q(\mem[1][1] ) );
  DFFRQX2M \mem_reg[1][0]  ( .D(n29), .CK(clk), .RN(n116), .Q(\mem[1][0] ) );
  DFFRQX2M \mem_reg[0][7]  ( .D(n28), .CK(clk), .RN(n116), .Q(\mem[0][7] ) );
  DFFRQX2M \mem_reg[0][6]  ( .D(n27), .CK(clk), .RN(n116), .Q(\mem[0][6] ) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n26), .CK(clk), .RN(n116), .Q(\mem[0][5] ) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n25), .CK(clk), .RN(n116), .Q(\mem[0][4] ) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n24), .CK(clk), .RN(n116), .Q(\mem[0][3] ) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n23), .CK(clk), .RN(n116), .Q(\mem[0][2] ) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n22), .CK(clk), .RN(n116), .Q(\mem[0][1] ) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n21), .CK(clk), .RN(n116), .Q(\mem[0][0] ) );
  DFFRQX2M \mem_reg[5][7]  ( .D(n68), .CK(clk), .RN(n119), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n67), .CK(clk), .RN(n119), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n66), .CK(clk), .RN(n119), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n65), .CK(clk), .RN(n119), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n64), .CK(clk), .RN(n119), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n63), .CK(clk), .RN(n119), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n62), .CK(clk), .RN(n119), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n61), .CK(clk), .RN(n119), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[4][7]  ( .D(n60), .CK(clk), .RN(n119), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n59), .CK(clk), .RN(n118), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n58), .CK(clk), .RN(n118), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n57), .CK(clk), .RN(n118), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n56), .CK(clk), .RN(n118), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n55), .CK(clk), .RN(n118), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n54), .CK(clk), .RN(n118), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n53), .CK(clk), .RN(n118), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n84), .CK(clk), .RN(n120), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n83), .CK(clk), .RN(n120), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n82), .CK(clk), .RN(n120), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n81), .CK(clk), .RN(n120), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n80), .CK(clk), .RN(n120), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n79), .CK(clk), .RN(n120), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n78), .CK(clk), .RN(n120), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n77), .CK(clk), .RN(n120), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n76), .CK(clk), .RN(n120), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n75), .CK(clk), .RN(n120), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n74), .CK(clk), .RN(n120), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n73), .CK(clk), .RN(n120), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n72), .CK(clk), .RN(n119), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n71), .CK(clk), .RN(n119), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n70), .CK(clk), .RN(n119), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n69), .CK(clk), .RN(n119), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n52), .CK(clk), .RN(n118), .Q(\mem[3][7] ) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n51), .CK(clk), .RN(n118), .Q(\mem[3][6] ) );
  DFFRQX2M \mem_reg[3][5]  ( .D(n50), .CK(clk), .RN(n118), .Q(\mem[3][5] ) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n49), .CK(clk), .RN(n118), .Q(\mem[3][4] ) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n48), .CK(clk), .RN(n118), .Q(\mem[3][3] ) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n47), .CK(clk), .RN(n118), .Q(\mem[3][2] ) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n46), .CK(clk), .RN(n117), .Q(\mem[3][1] ) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n45), .CK(clk), .RN(n117), .Q(\mem[3][0] ) );
  DFFRQX2M \mem_reg[2][7]  ( .D(n44), .CK(clk), .RN(n117), .Q(\mem[2][7] ) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n43), .CK(clk), .RN(n117), .Q(\mem[2][6] ) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n42), .CK(clk), .RN(n117), .Q(\mem[2][5] ) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n41), .CK(clk), .RN(n117), .Q(\mem[2][4] ) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n40), .CK(clk), .RN(n117), .Q(\mem[2][3] ) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n39), .CK(clk), .RN(n117), .Q(\mem[2][2] ) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n38), .CK(clk), .RN(n117), .Q(\mem[2][1] ) );
  DFFRQX2M \mem_reg[2][0]  ( .D(n37), .CK(clk), .RN(n117), .Q(\mem[2][0] ) );
  BUFX2M U2 ( .A(n18), .Y(n123) );
  BUFX2M U3 ( .A(n19), .Y(n122) );
  BUFX2M U4 ( .A(n20), .Y(n121) );
  BUFX2M U5 ( .A(n14), .Y(n124) );
  BUFX2M U6 ( .A(n114), .Y(n116) );
  BUFX2M U7 ( .A(n114), .Y(n117) );
  BUFX2M U8 ( .A(n114), .Y(n118) );
  BUFX2M U9 ( .A(n115), .Y(n119) );
  BUFX2M U10 ( .A(n115), .Y(n120) );
  BUFX2M U11 ( .A(rst_n), .Y(n114) );
  BUFX2M U12 ( .A(rst_n), .Y(n115) );
  NAND3X2M U13 ( .A(n125), .B(n126), .C(n17), .Y(n16) );
  NAND3X2M U14 ( .A(n125), .B(n126), .C(n12), .Y(n11) );
  NOR2X2M U15 ( .A(n111), .B(n112), .Y(n107) );
  NAND3X2M U16 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n15) );
  NAND3X2M U17 ( .A(n12), .B(n126), .C(waddr[0]), .Y(n13) );
  NOR2BX2M U18 ( .AN(wclken), .B(waddr[2]), .Y(n12) );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n134), .A0N(\mem[0][0] ), .A1N(n11), .Y(n21)
         );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n133), .A0N(\mem[0][1] ), .A1N(n11), .Y(n22)
         );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n132), .A0N(\mem[0][2] ), .A1N(n11), .Y(n23)
         );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n131), .A0N(\mem[0][3] ), .A1N(n11), .Y(n24)
         );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n130), .A0N(\mem[0][4] ), .A1N(n11), .Y(n25)
         );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n129), .A0N(\mem[0][5] ), .A1N(n11), .Y(n26)
         );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n128), .A0N(\mem[0][6] ), .A1N(n11), .Y(n27)
         );
  OAI2BB2X1M U26 ( .B0(n11), .B1(n127), .A0N(\mem[0][7] ), .A1N(n11), .Y(n28)
         );
  OAI2BB2X1M U27 ( .B0(n134), .B1(n15), .A0N(\mem[3][0] ), .A1N(n15), .Y(n45)
         );
  OAI2BB2X1M U28 ( .B0(n133), .B1(n15), .A0N(\mem[3][1] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U29 ( .B0(n132), .B1(n15), .A0N(\mem[3][2] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U30 ( .B0(n131), .B1(n15), .A0N(\mem[3][3] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U31 ( .B0(n130), .B1(n15), .A0N(\mem[3][4] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U32 ( .B0(n129), .B1(n15), .A0N(\mem[3][5] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U33 ( .B0(n128), .B1(n15), .A0N(\mem[3][6] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U34 ( .B0(n127), .B1(n15), .A0N(\mem[3][7] ), .A1N(n15), .Y(n52)
         );
  OAI2BB2X1M U35 ( .B0(n134), .B1(n13), .A0N(\mem[1][0] ), .A1N(n13), .Y(n29)
         );
  OAI2BB2X1M U36 ( .B0(n133), .B1(n13), .A0N(\mem[1][1] ), .A1N(n13), .Y(n30)
         );
  OAI2BB2X1M U37 ( .B0(n132), .B1(n13), .A0N(\mem[1][2] ), .A1N(n13), .Y(n31)
         );
  OAI2BB2X1M U38 ( .B0(n131), .B1(n13), .A0N(\mem[1][3] ), .A1N(n13), .Y(n32)
         );
  OAI2BB2X1M U39 ( .B0(n130), .B1(n13), .A0N(\mem[1][4] ), .A1N(n13), .Y(n33)
         );
  OAI2BB2X1M U40 ( .B0(n129), .B1(n13), .A0N(\mem[1][5] ), .A1N(n13), .Y(n34)
         );
  OAI2BB2X1M U41 ( .B0(n128), .B1(n13), .A0N(\mem[1][6] ), .A1N(n13), .Y(n35)
         );
  OAI2BB2X1M U42 ( .B0(n127), .B1(n13), .A0N(\mem[1][7] ), .A1N(n13), .Y(n36)
         );
  OAI2BB2X1M U43 ( .B0(n134), .B1(n16), .A0N(\mem[4][0] ), .A1N(n16), .Y(n53)
         );
  OAI2BB2X1M U44 ( .B0(n133), .B1(n16), .A0N(\mem[4][1] ), .A1N(n16), .Y(n54)
         );
  OAI2BB2X1M U45 ( .B0(n132), .B1(n16), .A0N(\mem[4][2] ), .A1N(n16), .Y(n55)
         );
  OAI2BB2X1M U46 ( .B0(n131), .B1(n16), .A0N(\mem[4][3] ), .A1N(n16), .Y(n56)
         );
  OAI2BB2X1M U47 ( .B0(n130), .B1(n16), .A0N(\mem[4][4] ), .A1N(n16), .Y(n57)
         );
  OAI2BB2X1M U48 ( .B0(n129), .B1(n16), .A0N(\mem[4][5] ), .A1N(n16), .Y(n58)
         );
  OAI2BB2X1M U49 ( .B0(n128), .B1(n16), .A0N(\mem[4][6] ), .A1N(n16), .Y(n59)
         );
  OAI2BB2X1M U50 ( .B0(n127), .B1(n16), .A0N(\mem[4][7] ), .A1N(n16), .Y(n60)
         );
  INVX2M U51 ( .A(wdata[0]), .Y(n134) );
  INVX2M U52 ( .A(wdata[1]), .Y(n133) );
  INVX2M U53 ( .A(wdata[2]), .Y(n132) );
  INVX2M U54 ( .A(wdata[3]), .Y(n131) );
  INVX2M U55 ( .A(wdata[4]), .Y(n130) );
  INVX2M U56 ( .A(wdata[5]), .Y(n129) );
  INVX2M U57 ( .A(wdata[6]), .Y(n128) );
  INVX2M U58 ( .A(wdata[7]), .Y(n127) );
  OAI2BB2X1M U59 ( .B0(n134), .B1(n124), .A0N(\mem[2][0] ), .A1N(n124), .Y(n37) );
  OAI2BB2X1M U60 ( .B0(n133), .B1(n124), .A0N(\mem[2][1] ), .A1N(n124), .Y(n38) );
  OAI2BB2X1M U61 ( .B0(n132), .B1(n124), .A0N(\mem[2][2] ), .A1N(n124), .Y(n39) );
  OAI2BB2X1M U62 ( .B0(n131), .B1(n124), .A0N(\mem[2][3] ), .A1N(n124), .Y(n40) );
  OAI2BB2X1M U63 ( .B0(n130), .B1(n124), .A0N(\mem[2][4] ), .A1N(n124), .Y(n41) );
  OAI2BB2X1M U64 ( .B0(n129), .B1(n124), .A0N(\mem[2][5] ), .A1N(n124), .Y(n42) );
  OAI2BB2X1M U65 ( .B0(n128), .B1(n124), .A0N(\mem[2][6] ), .A1N(n124), .Y(n43) );
  OAI2BB2X1M U66 ( .B0(n127), .B1(n124), .A0N(\mem[2][7] ), .A1N(n124), .Y(n44) );
  OAI2BB2X1M U67 ( .B0(n134), .B1(n123), .A0N(\mem[5][0] ), .A1N(n123), .Y(n61) );
  OAI2BB2X1M U68 ( .B0(n133), .B1(n123), .A0N(\mem[5][1] ), .A1N(n123), .Y(n62) );
  OAI2BB2X1M U69 ( .B0(n132), .B1(n123), .A0N(\mem[5][2] ), .A1N(n123), .Y(n63) );
  OAI2BB2X1M U70 ( .B0(n131), .B1(n123), .A0N(\mem[5][3] ), .A1N(n123), .Y(n64) );
  OAI2BB2X1M U71 ( .B0(n130), .B1(n123), .A0N(\mem[5][4] ), .A1N(n123), .Y(n65) );
  OAI2BB2X1M U72 ( .B0(n129), .B1(n123), .A0N(\mem[5][5] ), .A1N(n123), .Y(n66) );
  OAI2BB2X1M U73 ( .B0(n128), .B1(n123), .A0N(\mem[5][6] ), .A1N(n123), .Y(n67) );
  OAI2BB2X1M U74 ( .B0(n127), .B1(n123), .A0N(\mem[5][7] ), .A1N(n123), .Y(n68) );
  OAI2BB2X1M U75 ( .B0(n134), .B1(n122), .A0N(\mem[6][0] ), .A1N(n122), .Y(n69) );
  OAI2BB2X1M U76 ( .B0(n133), .B1(n122), .A0N(\mem[6][1] ), .A1N(n122), .Y(n70) );
  OAI2BB2X1M U77 ( .B0(n132), .B1(n122), .A0N(\mem[6][2] ), .A1N(n122), .Y(n71) );
  OAI2BB2X1M U78 ( .B0(n131), .B1(n122), .A0N(\mem[6][3] ), .A1N(n122), .Y(n72) );
  OAI2BB2X1M U79 ( .B0(n130), .B1(n122), .A0N(\mem[6][4] ), .A1N(n122), .Y(n73) );
  OAI2BB2X1M U80 ( .B0(n129), .B1(n122), .A0N(\mem[6][5] ), .A1N(n122), .Y(n74) );
  OAI2BB2X1M U81 ( .B0(n128), .B1(n122), .A0N(\mem[6][6] ), .A1N(n122), .Y(n75) );
  OAI2BB2X1M U82 ( .B0(n127), .B1(n122), .A0N(\mem[6][7] ), .A1N(n122), .Y(n76) );
  OAI2BB2X1M U83 ( .B0(n134), .B1(n121), .A0N(\mem[7][0] ), .A1N(n121), .Y(n77) );
  OAI2BB2X1M U84 ( .B0(n133), .B1(n121), .A0N(\mem[7][1] ), .A1N(n121), .Y(n78) );
  OAI2BB2X1M U85 ( .B0(n132), .B1(n121), .A0N(\mem[7][2] ), .A1N(n121), .Y(n79) );
  OAI2BB2X1M U86 ( .B0(n131), .B1(n121), .A0N(\mem[7][3] ), .A1N(n121), .Y(n80) );
  OAI2BB2X1M U87 ( .B0(n130), .B1(n121), .A0N(\mem[7][4] ), .A1N(n121), .Y(n81) );
  OAI2BB2X1M U88 ( .B0(n129), .B1(n121), .A0N(\mem[7][5] ), .A1N(n121), .Y(n82) );
  OAI2BB2X1M U89 ( .B0(n128), .B1(n121), .A0N(\mem[7][6] ), .A1N(n121), .Y(n83) );
  OAI2BB2X1M U90 ( .B0(n127), .B1(n121), .A0N(\mem[7][7] ), .A1N(n121), .Y(n84) );
  AND2X2M U91 ( .A(waddr[2]), .B(wclken), .Y(n17) );
  NAND3X2M U92 ( .A(n12), .B(n125), .C(waddr[1]), .Y(n14) );
  NAND3X2M U93 ( .A(waddr[1]), .B(waddr[0]), .C(n17), .Y(n20) );
  NAND3X2M U94 ( .A(waddr[0]), .B(n126), .C(n17), .Y(n18) );
  NAND3X2M U95 ( .A(waddr[1]), .B(n125), .C(n17), .Y(n19) );
  INVX2M U96 ( .A(waddr[1]), .Y(n126) );
  INVX2M U97 ( .A(waddr[0]), .Y(n125) );
  NOR2X2M U98 ( .A(n111), .B(N11), .Y(n108) );
  NOR2X2M U99 ( .A(n112), .B(N12), .Y(n105) );
  NOR2X2M U100 ( .A(N11), .B(N12), .Y(n104) );
  INVX2M U101 ( .A(N11), .Y(n112) );
  INVX2M U102 ( .A(N12), .Y(n111) );
  INVX2M U103 ( .A(N10), .Y(n113) );
  AO22X1M U104 ( .A0(\mem[3][0] ), .A1(n105), .B0(\mem[1][0] ), .B1(n104), .Y(
        n1) );
  AOI221XLM U105 ( .A0(\mem[5][0] ), .A1(n108), .B0(\mem[7][0] ), .B1(n107), 
        .C0(n1), .Y(n4) );
  AO22X1M U106 ( .A0(\mem[2][0] ), .A1(n105), .B0(\mem[0][0] ), .B1(n104), .Y(
        n2) );
  AOI221XLM U107 ( .A0(\mem[4][0] ), .A1(n108), .B0(\mem[6][0] ), .B1(n107), 
        .C0(n2), .Y(n3) );
  OAI22X1M U108 ( .A0(n113), .A1(n4), .B0(N10), .B1(n3), .Y(rdata[0]) );
  AO22X1M U109 ( .A0(\mem[3][1] ), .A1(n105), .B0(\mem[1][1] ), .B1(n104), .Y(
        n5) );
  AOI221XLM U110 ( .A0(\mem[5][1] ), .A1(n108), .B0(\mem[7][1] ), .B1(n107), 
        .C0(n5), .Y(n8) );
  AO22X1M U111 ( .A0(\mem[2][1] ), .A1(n105), .B0(\mem[0][1] ), .B1(n104), .Y(
        n6) );
  AOI221XLM U112 ( .A0(\mem[4][1] ), .A1(n108), .B0(\mem[6][1] ), .B1(n107), 
        .C0(n6), .Y(n7) );
  OAI22X1M U113 ( .A0(n113), .A1(n8), .B0(N10), .B1(n7), .Y(rdata[1]) );
  AO22X1M U114 ( .A0(\mem[3][2] ), .A1(n105), .B0(\mem[1][2] ), .B1(n104), .Y(
        n9) );
  AOI221XLM U115 ( .A0(\mem[5][2] ), .A1(n108), .B0(\mem[7][2] ), .B1(n107), 
        .C0(n9), .Y(n86) );
  AO22X1M U116 ( .A0(\mem[2][2] ), .A1(n105), .B0(\mem[0][2] ), .B1(n104), .Y(
        n10) );
  AOI221XLM U117 ( .A0(\mem[4][2] ), .A1(n108), .B0(\mem[6][2] ), .B1(n107), 
        .C0(n10), .Y(n85) );
  OAI22X1M U118 ( .A0(n113), .A1(n86), .B0(N10), .B1(n85), .Y(rdata[2]) );
  AO22X1M U119 ( .A0(\mem[3][3] ), .A1(n105), .B0(\mem[1][3] ), .B1(n104), .Y(
        n87) );
  AOI221XLM U120 ( .A0(\mem[5][3] ), .A1(n108), .B0(\mem[7][3] ), .B1(n107), 
        .C0(n87), .Y(n90) );
  AO22X1M U121 ( .A0(\mem[2][3] ), .A1(n105), .B0(\mem[0][3] ), .B1(n104), .Y(
        n88) );
  AOI221XLM U122 ( .A0(\mem[4][3] ), .A1(n108), .B0(\mem[6][3] ), .B1(n107), 
        .C0(n88), .Y(n89) );
  OAI22X1M U123 ( .A0(n113), .A1(n90), .B0(N10), .B1(n89), .Y(rdata[3]) );
  AO22X1M U124 ( .A0(\mem[3][4] ), .A1(n105), .B0(\mem[1][4] ), .B1(n104), .Y(
        n91) );
  AOI221XLM U125 ( .A0(\mem[5][4] ), .A1(n108), .B0(\mem[7][4] ), .B1(n107), 
        .C0(n91), .Y(n94) );
  AO22X1M U126 ( .A0(\mem[2][4] ), .A1(n105), .B0(\mem[0][4] ), .B1(n104), .Y(
        n92) );
  AOI221XLM U127 ( .A0(\mem[4][4] ), .A1(n108), .B0(\mem[6][4] ), .B1(n107), 
        .C0(n92), .Y(n93) );
  OAI22X1M U128 ( .A0(n113), .A1(n94), .B0(N10), .B1(n93), .Y(rdata[4]) );
  AO22X1M U129 ( .A0(\mem[3][5] ), .A1(n105), .B0(\mem[1][5] ), .B1(n104), .Y(
        n95) );
  AOI221XLM U130 ( .A0(\mem[5][5] ), .A1(n108), .B0(\mem[7][5] ), .B1(n107), 
        .C0(n95), .Y(n98) );
  AO22X1M U131 ( .A0(\mem[2][5] ), .A1(n105), .B0(\mem[0][5] ), .B1(n104), .Y(
        n96) );
  AOI221XLM U132 ( .A0(\mem[4][5] ), .A1(n108), .B0(\mem[6][5] ), .B1(n107), 
        .C0(n96), .Y(n97) );
  OAI22X1M U133 ( .A0(n113), .A1(n98), .B0(N10), .B1(n97), .Y(rdata[5]) );
  AO22X1M U134 ( .A0(\mem[3][6] ), .A1(n105), .B0(\mem[1][6] ), .B1(n104), .Y(
        n99) );
  AOI221XLM U135 ( .A0(\mem[5][6] ), .A1(n108), .B0(\mem[7][6] ), .B1(n107), 
        .C0(n99), .Y(n102) );
  AO22X1M U136 ( .A0(\mem[2][6] ), .A1(n105), .B0(\mem[0][6] ), .B1(n104), .Y(
        n100) );
  AOI221XLM U137 ( .A0(\mem[4][6] ), .A1(n108), .B0(\mem[6][6] ), .B1(n107), 
        .C0(n100), .Y(n101) );
  OAI22X1M U138 ( .A0(n113), .A1(n102), .B0(N10), .B1(n101), .Y(rdata[6]) );
  AO22X1M U139 ( .A0(\mem[3][7] ), .A1(n105), .B0(\mem[1][7] ), .B1(n104), .Y(
        n103) );
  AOI221XLM U140 ( .A0(\mem[5][7] ), .A1(n108), .B0(\mem[7][7] ), .B1(n107), 
        .C0(n103), .Y(n110) );
  AO22X1M U141 ( .A0(\mem[2][7] ), .A1(n105), .B0(\mem[0][7] ), .B1(n104), .Y(
        n106) );
  AOI221XLM U142 ( .A0(\mem[4][7] ), .A1(n108), .B0(\mem[6][7] ), .B1(n107), 
        .C0(n106), .Y(n109) );
  OAI22X1M U143 ( .A0(n110), .A1(n113), .B0(N10), .B1(n109), .Y(rdata[7]) );
endmodule


module bin_2_gray_WIDTH4_0 ( bin_in, gray_out );
  input [3:0] bin_in;
  output [3:0] gray_out;
  wire   \bin_in[3] ;
  assign gray_out[3] = \bin_in[3] ;
  assign \bin_in[3]  = bin_in[3];

  CLKXOR2X2M U1 ( .A(\bin_in[3] ), .B(bin_in[2]), .Y(gray_out[2]) );
  CLKXOR2X2M U2 ( .A(bin_in[1]), .B(bin_in[0]), .Y(gray_out[0]) );
  CLKXOR2X2M U3 ( .A(bin_in[2]), .B(bin_in[1]), .Y(gray_out[1]) );
endmodule


module FIFO_WR_FIFO_DEPTH8 ( clk, wrst_n, winc, wq2_rptr, wfull, waddr, 
        wptr_reg );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr_reg;
  input clk, wrst_n, winc;
  output wfull;
  wire   \wptr_bin[3] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  wire   [3:0] wptr;

  bin_2_gray_WIDTH4_0 B2G ( .bin_in({\wptr_bin[3] , waddr}), .gray_out(wptr)
         );
  DFFRQX2M \wptr_bin_reg[3]  ( .D(n11), .CK(clk), .RN(wrst_n), .Q(
        \wptr_bin[3] ) );
  DFFRQX2M \wptr_bin_reg[2]  ( .D(n12), .CK(clk), .RN(wrst_n), .Q(waddr[2]) );
  DFFRQX2M \wptr_bin_reg[0]  ( .D(n14), .CK(clk), .RN(wrst_n), .Q(waddr[0]) );
  DFFRQX2M \wptr_reg_reg[2]  ( .D(wptr[2]), .CK(clk), .RN(wrst_n), .Q(
        wptr_reg[2]) );
  DFFRQX2M \wptr_reg_reg[1]  ( .D(wptr[1]), .CK(clk), .RN(wrst_n), .Q(
        wptr_reg[1]) );
  DFFRQX2M \wptr_reg_reg[0]  ( .D(wptr[0]), .CK(clk), .RN(wrst_n), .Q(
        wptr_reg[0]) );
  DFFRQX2M \wptr_bin_reg[1]  ( .D(n13), .CK(clk), .RN(wrst_n), .Q(waddr[1]) );
  DFFRQX2M \wptr_reg_reg[3]  ( .D(wptr[3]), .CK(clk), .RN(wrst_n), .Q(
        wptr_reg[3]) );
  NAND2X2M U3 ( .A(winc), .B(n6), .Y(n5) );
  INVX2M U4 ( .A(n6), .Y(wfull) );
  XNOR2X2M U5 ( .A(wq2_rptr[1]), .B(wptr[1]), .Y(n7) );
  NOR2BX2M U6 ( .AN(waddr[0]), .B(n5), .Y(n4) );
  XNOR2X2M U7 ( .A(waddr[2]), .B(n3), .Y(n12) );
  NAND4X2M U8 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  CLKXOR2X2M U9 ( .A(wq2_rptr[3]), .B(wptr[3]), .Y(n10) );
  CLKXOR2X2M U10 ( .A(wq2_rptr[2]), .B(wptr[2]), .Y(n9) );
  XNOR2X2M U11 ( .A(wq2_rptr[0]), .B(wptr[0]), .Y(n8) );
  NAND2X2M U12 ( .A(waddr[1]), .B(n4), .Y(n3) );
  CLKXOR2X2M U13 ( .A(waddr[1]), .B(n4), .Y(n13) );
  CLKXOR2X2M U14 ( .A(\wptr_bin[3] ), .B(n2), .Y(n11) );
  NOR2BX2M U15 ( .AN(waddr[2]), .B(n3), .Y(n2) );
  XNOR2X2M U16 ( .A(waddr[0]), .B(n5), .Y(n14) );
endmodule


module bin_2_gray_WIDTH4_1 ( bin_in, gray_out );
  input [3:0] bin_in;
  output [3:0] gray_out;
  wire   \bin_in[3] ;
  assign gray_out[3] = \bin_in[3] ;
  assign \bin_in[3]  = bin_in[3];

  CLKXOR2X2M U1 ( .A(bin_in[1]), .B(bin_in[0]), .Y(gray_out[0]) );
  CLKXOR2X2M U2 ( .A(bin_in[2]), .B(bin_in[1]), .Y(gray_out[1]) );
  CLKXOR2X2M U3 ( .A(\bin_in[3] ), .B(bin_in[2]), .Y(gray_out[2]) );
endmodule


module FIFO_RD_FIFO_DEPTH8 ( clk, rrst_n, rinc, rq2_wptr, rempty, raddr, 
        rptr_reg );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr_reg;
  input clk, rrst_n, rinc;
  output rempty;
  wire   \rptr_bin[3] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  wire   [3:0] rptr;

  bin_2_gray_WIDTH4_1 B2G ( .bin_in({\rptr_bin[3] , raddr}), .gray_out(rptr)
         );
  DFFRQX2M \rptr_bin_reg[3]  ( .D(n11), .CK(clk), .RN(rrst_n), .Q(
        \rptr_bin[3] ) );
  DFFRQX2M \rptr_bin_reg[0]  ( .D(n14), .CK(clk), .RN(rrst_n), .Q(raddr[0]) );
  DFFRQX2M \rptr_bin_reg[2]  ( .D(n12), .CK(clk), .RN(rrst_n), .Q(raddr[2]) );
  DFFRQX2M \rptr_bin_reg[1]  ( .D(n13), .CK(clk), .RN(rrst_n), .Q(raddr[1]) );
  DFFRQX2M \rptr_reg_reg[3]  ( .D(rptr[3]), .CK(clk), .RN(rrst_n), .Q(
        rptr_reg[3]) );
  DFFRQX2M \rptr_reg_reg[2]  ( .D(rptr[2]), .CK(clk), .RN(rrst_n), .Q(
        rptr_reg[2]) );
  DFFRQX2M \rptr_reg_reg[1]  ( .D(rptr[1]), .CK(clk), .RN(rrst_n), .Q(
        rptr_reg[1]) );
  DFFRQX2M \rptr_reg_reg[0]  ( .D(rptr[0]), .CK(clk), .RN(rrst_n), .Q(
        rptr_reg[0]) );
  INVX2M U3 ( .A(n6), .Y(rempty) );
  XNOR2X2M U4 ( .A(rq2_wptr[1]), .B(rptr[1]), .Y(n7) );
  NOR2BX2M U5 ( .AN(raddr[0]), .B(n5), .Y(n4) );
  XNOR2X2M U6 ( .A(raddr[2]), .B(n3), .Y(n12) );
  XNOR2X2M U7 ( .A(raddr[0]), .B(n5), .Y(n14) );
  NAND4X2M U8 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n6) );
  XNOR2X2M U9 ( .A(rq2_wptr[3]), .B(rptr[3]), .Y(n9) );
  XNOR2X2M U10 ( .A(rq2_wptr[2]), .B(rptr[2]), .Y(n10) );
  XNOR2X2M U11 ( .A(rq2_wptr[0]), .B(rptr[0]), .Y(n8) );
  NAND2X2M U12 ( .A(raddr[1]), .B(n4), .Y(n3) );
  NAND2X2M U13 ( .A(rinc), .B(n6), .Y(n5) );
  CLKXOR2X2M U14 ( .A(raddr[1]), .B(n4), .Y(n13) );
  CLKXOR2X2M U15 ( .A(\rptr_bin[3] ), .B(n2), .Y(n11) );
  NOR2BX2M U16 ( .AN(raddr[2]), .B(n3), .Y(n2) );
endmodule


module Double_FF_FIFO_DEPTH8_0 ( rst_n, clk, unsync_data, sync_data );
  input [3:0] unsync_data;
  output [3:0] sync_data;
  input rst_n, clk;

  wire   [3:0] D_FF;

  DFFRQX2M \sync_data_reg[3]  ( .D(D_FF[3]), .CK(clk), .RN(rst_n), .Q(
        sync_data[3]) );
  DFFRQX2M \sync_data_reg[2]  ( .D(D_FF[2]), .CK(clk), .RN(rst_n), .Q(
        sync_data[2]) );
  DFFRQX2M \sync_data_reg[1]  ( .D(D_FF[1]), .CK(clk), .RN(rst_n), .Q(
        sync_data[1]) );
  DFFRQX2M \sync_data_reg[0]  ( .D(D_FF[0]), .CK(clk), .RN(rst_n), .Q(
        sync_data[0]) );
  DFFRQX2M \D_FF_reg[3]  ( .D(unsync_data[3]), .CK(clk), .RN(rst_n), .Q(
        D_FF[3]) );
  DFFRQX2M \D_FF_reg[2]  ( .D(unsync_data[2]), .CK(clk), .RN(rst_n), .Q(
        D_FF[2]) );
  DFFRQX2M \D_FF_reg[1]  ( .D(unsync_data[1]), .CK(clk), .RN(rst_n), .Q(
        D_FF[1]) );
  DFFRQX2M \D_FF_reg[0]  ( .D(unsync_data[0]), .CK(clk), .RN(rst_n), .Q(
        D_FF[0]) );
endmodule


module Double_FF_FIFO_DEPTH8_1 ( rst_n, clk, unsync_data, sync_data );
  input [3:0] unsync_data;
  output [3:0] sync_data;
  input rst_n, clk;

  wire   [3:0] D_FF;

  DFFRQX2M \sync_data_reg[1]  ( .D(D_FF[1]), .CK(clk), .RN(rst_n), .Q(
        sync_data[1]) );
  DFFRQX2M \sync_data_reg[0]  ( .D(D_FF[0]), .CK(clk), .RN(rst_n), .Q(
        sync_data[0]) );
  DFFRQX2M \sync_data_reg[3]  ( .D(D_FF[3]), .CK(clk), .RN(rst_n), .Q(
        sync_data[3]) );
  DFFRQX2M \sync_data_reg[2]  ( .D(D_FF[2]), .CK(clk), .RN(rst_n), .Q(
        sync_data[2]) );
  DFFRQX2M \D_FF_reg[3]  ( .D(unsync_data[3]), .CK(clk), .RN(rst_n), .Q(
        D_FF[3]) );
  DFFRQX2M \D_FF_reg[2]  ( .D(unsync_data[2]), .CK(clk), .RN(rst_n), .Q(
        D_FF[2]) );
  DFFRQX2M \D_FF_reg[1]  ( .D(unsync_data[1]), .CK(clk), .RN(rst_n), .Q(
        D_FF[1]) );
  DFFRQX2M \D_FF_reg[0]  ( .D(unsync_data[0]), .CK(clk), .RN(rst_n), .Q(
        D_FF[0]) );
endmodule


module FIFO_top_DATA_WIDTH8_FIFO_DEPTH8 ( w_clk, w_rst, w_inc, r_clk, r_rst, 
        r_inc, wr_data, full, empty, rd_data );
  input [7:0] wr_data;
  output [7:0] rd_data;
  input w_clk, w_rst, w_inc, r_clk, r_rst, r_inc;
  output full, empty;
  wire   wr_en, n1, n2;
  wire   [2:0] wr_addr;
  wire   [2:0] rd_addr;
  wire   [3:0] rptr_sync;
  wire   [3:0] wptr_unsync;
  wire   [3:0] wptr_sync;
  wire   [3:0] rptr_unsync;

  FIFO_Mem_DATA_WIDTH8_FIFO_DEPTH8 MEM0 ( .rst_n(n1), .clk(w_clk), .wdata(
        wr_data), .wclken(wr_en), .waddr(wr_addr), .raddr(rd_addr), .rdata(
        rd_data) );
  FIFO_WR_FIFO_DEPTH8 WR0 ( .clk(w_clk), .wrst_n(n1), .winc(w_inc), .wq2_rptr(
        rptr_sync), .wfull(full), .waddr(wr_addr), .wptr_reg(wptr_unsync) );
  FIFO_RD_FIFO_DEPTH8 RD0 ( .clk(r_clk), .rrst_n(r_rst), .rinc(r_inc), 
        .rq2_wptr(wptr_sync), .rempty(empty), .raddr(rd_addr), .rptr_reg(
        rptr_unsync) );
  Double_FF_FIFO_DEPTH8_0 wr2rd_sync ( .rst_n(r_rst), .clk(r_clk), 
        .unsync_data(wptr_unsync), .sync_data(wptr_sync) );
  Double_FF_FIFO_DEPTH8_1 rd2rwrsync ( .rst_n(n1), .clk(w_clk), .unsync_data(
        rptr_unsync), .sync_data(rptr_sync) );
  NOR2BX2M U1 ( .AN(w_inc), .B(full), .Y(wr_en) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(w_rst), .Y(n2) );
endmodule


module Pulse_generator_0 ( in, clk, rst_n, pulse );
  input in, clk, rst_n;
  output pulse;
  wire   in_reg;

  DFFRQX2M in_reg_reg ( .D(in), .CK(clk), .RN(rst_n), .Q(in_reg) );
  NOR2BX2M U3 ( .AN(in), .B(in_reg), .Y(pulse) );
endmodule


module Multi_FF_NUM_STAGES2 ( bus_en, clk, rst_n, en_sync );
  input bus_en, clk, rst_n;
  output en_sync;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(clk), .RN(rst_n), .Q(
        en_sync) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(bus_en), .CK(clk), .RN(rst_n), .Q(
        \sync_reg[0] ) );
endmodule


module Pulse_generator_1 ( in, clk, rst_n, pulse );
  input in, clk, rst_n;
  output pulse;
  wire   in_reg;

  DFFRQX2M in_reg_reg ( .D(in), .CK(clk), .RN(rst_n), .Q(in_reg) );
  NOR2BX2M U3 ( .AN(in), .B(in_reg), .Y(pulse) );
endmodule


module DATA_SYNC_NUMBER_STAGES2_BUS_WIDTH8 ( unsync_bus, bus_enable, clk, 
        rst_n, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst_n;
  output enable_pulse;
  wire   MFF_out, pulse_gen_out, n1;
  wire   [7:0] MUX_out;

  Multi_FF_NUM_STAGES2 MFF0 ( .bus_en(bus_enable), .clk(clk), .rst_n(rst_n), 
        .en_sync(MFF_out) );
  Pulse_generator_1 PG0 ( .in(MFF_out), .clk(clk), .rst_n(rst_n), .pulse(
        pulse_gen_out) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(MUX_out[7]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(MUX_out[4]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(MUX_out[6]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(MUX_out[5]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[5]) );
  DFFRQX2M enable_pulse_reg ( .D(pulse_gen_out), .CK(clk), .RN(rst_n), .Q(
        enable_pulse) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(MUX_out[3]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(MUX_out[2]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(MUX_out[0]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(MUX_out[1]), .CK(clk), .RN(rst_n), .Q(
        sync_bus[1]) );
  INVX2M U3 ( .A(pulse_gen_out), .Y(n1) );
  AO22X1M U4 ( .A0(unsync_bus[0]), .A1(pulse_gen_out), .B0(sync_bus[0]), .B1(
        n1), .Y(MUX_out[0]) );
  AO22X1M U5 ( .A0(unsync_bus[1]), .A1(pulse_gen_out), .B0(sync_bus[1]), .B1(
        n1), .Y(MUX_out[1]) );
  AO22X1M U6 ( .A0(unsync_bus[2]), .A1(pulse_gen_out), .B0(sync_bus[2]), .B1(
        n1), .Y(MUX_out[2]) );
  AO22X1M U7 ( .A0(unsync_bus[3]), .A1(pulse_gen_out), .B0(sync_bus[3]), .B1(
        n1), .Y(MUX_out[3]) );
  AO22X1M U8 ( .A0(unsync_bus[4]), .A1(pulse_gen_out), .B0(sync_bus[4]), .B1(
        n1), .Y(MUX_out[4]) );
  AO22X1M U9 ( .A0(unsync_bus[5]), .A1(pulse_gen_out), .B0(sync_bus[5]), .B1(
        n1), .Y(MUX_out[5]) );
  AO22X1M U10 ( .A0(unsync_bus[6]), .A1(pulse_gen_out), .B0(sync_bus[6]), .B1(
        n1), .Y(MUX_out[6]) );
  AO22X1M U11 ( .A0(unsync_bus[7]), .A1(pulse_gen_out), .B0(sync_bus[7]), .B1(
        n1), .Y(MUX_out[7]) );
endmodule


module FSM_TX ( clk, rst_n, valid, ser_done, parity_en, mux_sel, ser_en, busy
 );
  output [1:0] mux_sel;
  input clk, rst_n, valid, ser_done, parity_en;
  output ser_en, busy;
  wire   N55, n5, n6, n7, n8, n1, n2, n3, n4;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign ser_en = N55;

  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(rst_n), .Q(cs[1]) );
  DFFRQX2M \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(rst_n), .Q(cs[0]) );
  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(clk), .RN(rst_n), .Q(cs[2]) );
  NAND2X2M U3 ( .A(n6), .B(n4), .Y(busy) );
  INVX2M U4 ( .A(mux_sel[1]), .Y(n3) );
  NOR2X2M U5 ( .A(n2), .B(cs[2]), .Y(mux_sel[0]) );
  NOR2X2M U6 ( .A(n4), .B(cs[2]), .Y(mux_sel[1]) );
  INVX2M U7 ( .A(cs[1]), .Y(n4) );
  INVX2M U8 ( .A(cs[0]), .Y(n2) );
  NOR2X2M U9 ( .A(ser_done), .B(n8), .Y(N55) );
  AOI22X1M U10 ( .A0(mux_sel[0]), .A1(n4), .B0(mux_sel[1]), .B1(n2), .Y(n8) );
  NOR2X2M U11 ( .A(mux_sel[0]), .B(cs[2]), .Y(n6) );
  NOR2BX2M U12 ( .AN(n6), .B(n7), .Y(ns[0]) );
  AOI32X1M U13 ( .A0(ser_done), .A1(cs[1]), .A2(parity_en), .B0(valid), .B1(n4), .Y(n7) );
  OAI32X1M U14 ( .A0(n3), .A1(cs[0]), .A2(n5), .B0(cs[1]), .B1(n1), .Y(ns[1])
         );
  INVX2M U15 ( .A(mux_sel[0]), .Y(n1) );
  NOR2BX2M U16 ( .AN(ser_done), .B(parity_en), .Y(n5) );
  AOI2BB1X2M U17 ( .A0N(n5), .A1N(cs[0]), .B0(n3), .Y(ns[2]) );
endmodule


module MUX_TX ( in0, in1, in2, in3, sel, out );
  input [1:0] sel;
  input in0, in1, in2, in3;
  output out;
  wire   n2, n3, n1;

  OAI2B2X4M U1 ( .A1N(sel[1]), .A0(n2), .B0(sel[1]), .B1(n3), .Y(out) );
  AOI22X1M U2 ( .A0(in0), .A1(n1), .B0(sel[0]), .B1(in1), .Y(n3) );
  AOI22X1M U3 ( .A0(in2), .A1(n1), .B0(in3), .B1(sel[0]), .Y(n2) );
  INVX2M U4 ( .A(sel[0]), .Y(n1) );
endmodule


module parallel_2_serial_TX_WIDTH8 ( rst_n, clk, en, data, done, S_data );
  input [7:0] data;
  input rst_n, clk, en;
  output done, S_data;
  wire   N4, N10, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [2:0] counter;

  DFFRQX2M \counter_reg[2]  ( .D(n3), .CK(clk), .RN(rst_n), .Q(counter[2]) );
  DFFRQX2M done_reg ( .D(N10), .CK(clk), .RN(rst_n), .Q(done) );
  DFFRQX2M \counter_reg[1]  ( .D(n4), .CK(clk), .RN(rst_n), .Q(counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(n5), .CK(clk), .RN(rst_n), .Q(counter[0]) );
  DFFRQX2M S_data_reg ( .D(n6), .CK(clk), .RN(rst_n), .Q(S_data) );
  XNOR2X2M U3 ( .A(counter[1]), .B(n2), .Y(n4) );
  NAND2X2M U4 ( .A(en), .B(counter[0]), .Y(n2) );
  AO2B2X2M U5 ( .B0(N4), .B1(en), .A0(S_data), .A1N(en), .Y(n6) );
  INVX2M U6 ( .A(counter[0]), .Y(n14) );
  CLKXOR2X2M U7 ( .A(counter[2]), .B(n1), .Y(n3) );
  NOR2BX2M U8 ( .AN(counter[1]), .B(n2), .Y(n1) );
  CLKXOR2X2M U9 ( .A(en), .B(counter[0]), .Y(n5) );
  AND3X2M U10 ( .A(counter[2]), .B(counter[0]), .C(counter[1]), .Y(N10) );
  INVX2M U11 ( .A(counter[1]), .Y(n13) );
  AOI22X1M U12 ( .A0(data[2]), .A1(n14), .B0(data[3]), .B1(counter[0]), .Y(n8)
         );
  AOI22X1M U13 ( .A0(data[0]), .A1(n14), .B0(data[1]), .B1(counter[0]), .Y(n7)
         );
  OA22X1M U14 ( .A0(n13), .A1(n8), .B0(counter[1]), .B1(n7), .Y(n12) );
  AOI22X1M U15 ( .A0(data[6]), .A1(n14), .B0(data[7]), .B1(counter[0]), .Y(n10) );
  AOI22X1M U16 ( .A0(data[4]), .A1(n14), .B0(data[5]), .B1(counter[0]), .Y(n9)
         );
  OAI22X1M U17 ( .A0(n10), .A1(n13), .B0(counter[1]), .B1(n9), .Y(n11) );
  OAI2BB2X1M U18 ( .B0(n12), .B1(counter[2]), .A0N(counter[2]), .A1N(n11), .Y(
        N4) );
endmodule


module Parity_gen_TX_WIDTH8 ( data, type, valid, clk, rst_n, parity );
  input [7:0] data;
  input type, valid, clk, rst_n;
  output parity;
  wire   n1, n3, n4, n5, n6, n7, n2;

  DFFRQX2M parity_reg ( .D(n7), .CK(clk), .RN(rst_n), .Q(parity) );
  XOR3XLM U2 ( .A(data[5]), .B(data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(data[7]), .B(data[6]), .Y(n6) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n2), .A0N(parity), .A1N(n2), .Y(n7) );
  INVX2M U5 ( .A(valid), .Y(n2) );
  XOR3XLM U6 ( .A(n3), .B(type), .C(n4), .Y(n1) );
  XOR3XLM U7 ( .A(data[1]), .B(data[0]), .C(n5), .Y(n4) );
  XNOR2X2M U8 ( .A(data[3]), .B(data[2]), .Y(n5) );
endmodule


module UART_TX_DATA_WIDTH8 ( clk, rst_n, P_data, data_valid, par_en, par_type, 
        tx_out, busy );
  input [7:0] P_data;
  input clk, rst_n, data_valid, par_en, par_type;
  output tx_out, busy;
  wire   ser_en, ser_done, data_serial, parity, n1, n3, n4, n5, n6, n7, n8, n9,
         n10, n2;
  wire   [7:0] P_data_reg;
  wire   [1:0] mux_sel;

  FSM_TX FSM0 ( .clk(clk), .rst_n(rst_n), .valid(data_valid), .ser_done(
        ser_done), .parity_en(par_en), .mux_sel(mux_sel), .ser_en(ser_en), 
        .busy(busy) );
  MUX_TX M0 ( .in0(1'b1), .in1(1'b0), .in2(data_serial), .in3(parity), .sel(
        mux_sel), .out(tx_out) );
  parallel_2_serial_TX_WIDTH8 P2S_0 ( .rst_n(rst_n), .clk(clk), .en(ser_en), 
        .data(P_data_reg), .done(ser_done), .S_data(data_serial) );
  Parity_gen_TX_WIDTH8 P0 ( .data(P_data_reg), .type(par_type), .valid(
        data_valid), .clk(clk), .rst_n(rst_n), .parity(parity) );
  DFFRQX2M \P_data_reg_reg[0]  ( .D(n10), .CK(clk), .RN(rst_n), .Q(
        P_data_reg[0]) );
  DFFRQX2M \P_data_reg_reg[3]  ( .D(n5), .CK(clk), .RN(rst_n), .Q(
        P_data_reg[3]) );
  DFFRQX2M \P_data_reg_reg[2]  ( .D(n4), .CK(clk), .RN(rst_n), .Q(
        P_data_reg[2]) );
  DFFRQX2M \P_data_reg_reg[5]  ( .D(n7), .CK(clk), .RN(rst_n), .Q(
        P_data_reg[5]) );
  DFFRQX2M \P_data_reg_reg[1]  ( .D(n3), .CK(clk), .RN(rst_n), .Q(
        P_data_reg[1]) );
  DFFRQX2M \P_data_reg_reg[4]  ( .D(n6), .CK(clk), .RN(rst_n), .Q(
        P_data_reg[4]) );
  DFFRQX2M \P_data_reg_reg[6]  ( .D(n8), .CK(clk), .RN(rst_n), .Q(
        P_data_reg[6]) );
  DFFRQX2M \P_data_reg_reg[7]  ( .D(n9), .CK(clk), .RN(rst_n), .Q(
        P_data_reg[7]) );
  INVX2M U3 ( .A(n1), .Y(n2) );
  NAND2BX2M U4 ( .AN(ser_en), .B(data_valid), .Y(n1) );
  AO22X1M U5 ( .A0(P_data_reg[1]), .A1(n1), .B0(P_data[1]), .B1(n2), .Y(n3) );
  AO22X1M U6 ( .A0(P_data_reg[2]), .A1(n1), .B0(P_data[2]), .B1(n2), .Y(n4) );
  AO22X1M U7 ( .A0(P_data_reg[3]), .A1(n1), .B0(P_data[3]), .B1(n2), .Y(n5) );
  AO22X1M U8 ( .A0(P_data_reg[4]), .A1(n1), .B0(P_data[4]), .B1(n2), .Y(n6) );
  AO22X1M U9 ( .A0(P_data_reg[5]), .A1(n1), .B0(P_data[5]), .B1(n2), .Y(n7) );
  AO22X1M U10 ( .A0(P_data_reg[6]), .A1(n1), .B0(P_data[6]), .B1(n2), .Y(n8)
         );
  AO22X1M U11 ( .A0(P_data_reg[7]), .A1(n1), .B0(P_data[7]), .B1(n2), .Y(n9)
         );
  AO22X1M U12 ( .A0(P_data_reg[0]), .A1(n1), .B0(P_data[0]), .B1(n2), .Y(n10)
         );
endmodule


module FSM_CU_RX ( clk, rst_n, RX_IN, PAR_EN, edge_count, bit_count, 
        start_glitch, par_err, stop_err, presscale, start_chk_en, par_chk_en, 
        stop_chk_en, enable_counter, sampling_en, serial_en, data_valid, 
        stop_error, parity_error );
  input [4:0] edge_count;
  input [3:0] bit_count;
  input [5:0] presscale;
  input clk, rst_n, RX_IN, PAR_EN, start_glitch, par_err, stop_err;
  output start_chk_en, par_chk_en, stop_chk_en, enable_counter, sampling_en,
         serial_en, data_valid, stop_error, parity_error;
  wire   N39, N40, N41, N42, N43, N44, N45, N46, N102, N107, N108, N109, N110,
         N111, N114, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, \sub_198/carry[6] , \sub_198/carry[5] ,
         \sub_198/carry[4] , \sub_198/carry[3] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n37, enable_counter, n39, n41;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign par_chk_en = N102;
  assign N107 = presscale[0];
  assign sampling_en = enable_counter;

  DFFRQX2M data_valid_reg ( .D(n36), .CK(clk), .RN(rst_n), .Q(data_valid) );
  DFFRQX2M \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(rst_n), .Q(cs[1]) );
  DFFRQX2M \cs_reg[2]  ( .D(ns[2]), .CK(clk), .RN(rst_n), .Q(cs[2]) );
  DFFRX1M \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(rst_n), .Q(cs[0]), .QN(n37)
         );
  NOR2X4M U3 ( .A(n23), .B(n37), .Y(parity_error) );
  INVX2M U4 ( .A(n23), .Y(stop_chk_en) );
  INVX2M U5 ( .A(n33), .Y(enable_counter) );
  INVX2M U6 ( .A(N102), .Y(n39) );
  NAND2X2M U7 ( .A(cs[2]), .B(n41), .Y(n23) );
  AND2X2M U8 ( .A(stop_err), .B(stop_chk_en), .Y(stop_error) );
  INVX2M U9 ( .A(cs[1]), .Y(n41) );
  OAI221X1M U10 ( .A0(RX_IN), .A1(n28), .B0(n29), .B1(n37), .C0(n30), .Y(ns[0]) );
  NAND4BX1M U11 ( .AN(n25), .B(PAR_EN), .C(serial_en), .D(N46), .Y(n30) );
  AOI21X2M U12 ( .A0(par_err), .A1(N102), .B0(n32), .Y(n29) );
  AOI21X2M U13 ( .A0(N46), .A1(stop_chk_en), .B0(n33), .Y(n28) );
  AOI21X2M U14 ( .A0(cs[1]), .A1(cs[2]), .B0(N46), .Y(n32) );
  OAI32XLM U15 ( .A0(n22), .A1(n24), .A2(n39), .B0(N46), .B1(n23), .Y(ns[2])
         );
  AOI2BB1X2M U16 ( .A0N(n25), .A1N(PAR_EN), .B0(cs[0]), .Y(n24) );
  INVXLM U17 ( .A(N46), .Y(n22) );
  OAI211XLM U18 ( .A0(N46), .A1(n39), .B0(n26), .C0(n27), .Y(ns[1]) );
  OAI21X2M U19 ( .A0(PAR_EN), .A1(n25), .B0(serial_en), .Y(n26) );
  NAND3BXLM U20 ( .AN(start_glitch), .B(N46), .C(start_chk_en), .Y(n27) );
  OAI2BB1X2M U21 ( .A0N(data_valid), .A1N(n34), .B0(n35), .Y(n36) );
  OR4X1M U22 ( .A(n34), .B(n23), .C(stop_error), .D(cs[0]), .Y(n35) );
  NOR3X2M U23 ( .A(N114), .B(cs[0]), .C(n23), .Y(n34) );
  NAND4X2M U24 ( .A(\sub_198/carry[6] ), .B(n1), .C(n17), .D(n16), .Y(n21) );
  CLKXOR2X2M U25 ( .A(\sub_198/carry[5] ), .B(presscale[5]), .Y(n1) );
  NOR3X2M U26 ( .A(cs[1]), .B(cs[2]), .C(cs[0]), .Y(n33) );
  NOR3X2M U27 ( .A(cs[1]), .B(cs[2]), .C(n37), .Y(start_chk_en) );
  NOR2X2M U28 ( .A(n41), .B(cs[2]), .Y(N102) );
  NOR2X2M U29 ( .A(n39), .B(cs[0]), .Y(serial_en) );
  NAND3BX2M U30 ( .AN(bit_count[0]), .B(bit_count[3]), .C(n31), .Y(n25) );
  NOR2X2M U31 ( .A(bit_count[2]), .B(bit_count[1]), .Y(n31) );
  INVX2M U32 ( .A(presscale[1]), .Y(N108) );
  INVX2M U33 ( .A(N107), .Y(N39) );
  OR2X1M U34 ( .A(presscale[5]), .B(\sub_198/carry[5] ), .Y(\sub_198/carry[6] ) );
  OR2X1M U35 ( .A(presscale[4]), .B(\sub_198/carry[4] ), .Y(\sub_198/carry[5] ) );
  XNOR2X1M U36 ( .A(\sub_198/carry[4] ), .B(presscale[4]), .Y(N111) );
  OR2X1M U37 ( .A(presscale[3]), .B(\sub_198/carry[3] ), .Y(\sub_198/carry[4] ) );
  XNOR2X1M U38 ( .A(\sub_198/carry[3] ), .B(presscale[3]), .Y(N110) );
  OR2X1M U39 ( .A(presscale[2]), .B(presscale[1]), .Y(\sub_198/carry[3] ) );
  XNOR2X1M U40 ( .A(presscale[1]), .B(presscale[2]), .Y(N109) );
  NAND2BX1M U41 ( .AN(presscale[1]), .B(N39), .Y(n2) );
  OAI2BB1X1M U42 ( .A0N(N107), .A1N(presscale[1]), .B0(n2), .Y(N40) );
  OR2X1M U43 ( .A(n2), .B(presscale[2]), .Y(n3) );
  OAI2BB1X1M U44 ( .A0N(n2), .A1N(presscale[2]), .B0(n3), .Y(N41) );
  OR2X1M U45 ( .A(n3), .B(presscale[3]), .Y(n4) );
  OAI2BB1X1M U46 ( .A0N(n3), .A1N(presscale[3]), .B0(n4), .Y(N42) );
  OR2X1M U47 ( .A(n4), .B(presscale[4]), .Y(n5) );
  OAI2BB1X1M U48 ( .A0N(n4), .A1N(presscale[4]), .B0(n5), .Y(N43) );
  NOR2X1M U49 ( .A(n5), .B(presscale[5]), .Y(N45) );
  AO21XLM U50 ( .A0(n5), .A1(presscale[5]), .B0(N45), .Y(N44) );
  NOR2BX1M U51 ( .AN(edge_count[0]), .B(N39), .Y(n6) );
  OAI2B2X1M U52 ( .A1N(N40), .A0(n6), .B0(edge_count[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U53 ( .AN(N39), .B(edge_count[0]), .Y(n7) );
  OAI2B2X1M U54 ( .A1N(edge_count[1]), .A0(n7), .B0(N40), .B1(n7), .Y(n8) );
  NAND4BBX1M U55 ( .AN(N45), .BN(N44), .C(n9), .D(n8), .Y(n13) );
  CLKXOR2X2M U56 ( .A(N43), .B(edge_count[4]), .Y(n12) );
  CLKXOR2X2M U57 ( .A(N41), .B(edge_count[2]), .Y(n11) );
  CLKXOR2X2M U58 ( .A(N42), .B(edge_count[3]), .Y(n10) );
  NOR4X1M U59 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N46) );
  NOR2BX1M U60 ( .AN(edge_count[0]), .B(N107), .Y(n14) );
  OAI2B2X1M U61 ( .A1N(N108), .A0(n14), .B0(edge_count[1]), .B1(n14), .Y(n17)
         );
  NOR2BX1M U62 ( .AN(N107), .B(edge_count[0]), .Y(n15) );
  OAI2B2X1M U63 ( .A1N(edge_count[1]), .A0(n15), .B0(N108), .B1(n15), .Y(n16)
         );
  CLKXOR2X2M U64 ( .A(N111), .B(edge_count[4]), .Y(n20) );
  CLKXOR2X2M U65 ( .A(N109), .B(edge_count[2]), .Y(n19) );
  CLKXOR2X2M U66 ( .A(N110), .B(edge_count[3]), .Y(n18) );
  NOR4X1M U67 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(N114) );
endmodule


module edge_bit_counter_RX ( clk, rst_n, en, PAR_EN, presscale, edge_count, 
        bit_count );
  input [5:0] presscale;
  output [4:0] edge_count;
  output [3:0] bit_count;
  input clk, rst_n, en, PAR_EN;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N16, N17, N18, N19, N20, n7, n9,
         n10, n12, n13, n15, n19, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, \add_20/carry[4] , \add_20/carry[3] , \add_20/carry[2] , n1, n2,
         n3, n4, n5, n6, n8, n11, n14, n16, n17, n18, n20, n21, n32, n33, n34,
         n35, n36, n37;

  DFFRQX2M \bit_count_reg[3]  ( .D(n24), .CK(clk), .RN(rst_n), .Q(bit_count[3]) );
  DFFRQX2M \bit_count_reg[2]  ( .D(n25), .CK(clk), .RN(rst_n), .Q(bit_count[2]) );
  DFFRQX2M \bit_count_reg[0]  ( .D(n26), .CK(clk), .RN(rst_n), .Q(bit_count[0]) );
  DFFRQX2M \bit_count_reg[1]  ( .D(n23), .CK(clk), .RN(rst_n), .Q(bit_count[1]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(n30), .CK(clk), .RN(rst_n), .Q(
        edge_count[4]) );
  DFFRQX2M \edge_count_reg[3]  ( .D(n29), .CK(clk), .RN(rst_n), .Q(
        edge_count[3]) );
  DFFRQX2M \edge_count_reg[2]  ( .D(n28), .CK(clk), .RN(rst_n), .Q(
        edge_count[2]) );
  DFFRQX2M \edge_count_reg[0]  ( .D(n31), .CK(clk), .RN(rst_n), .Q(
        edge_count[0]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(n27), .CK(clk), .RN(rst_n), .Q(
        edge_count[1]) );
  INVX2M U3 ( .A(en), .Y(n36) );
  NOR2X2M U4 ( .A(n36), .B(N14), .Y(n22) );
  INVX2M U5 ( .A(N14), .Y(n20) );
  AOI21X2M U6 ( .A0(n21), .A1(n10), .B0(n20), .Y(n7) );
  INVX2M U7 ( .A(n10), .Y(n32) );
  OAI32XLM U8 ( .A0(n20), .A1(bit_count[0]), .A2(n32), .B0(N14), .B1(n21), .Y(
        n26) );
  NAND3XLM U9 ( .A(bit_count[0]), .B(bit_count[1]), .C(N14), .Y(n12) );
  OAI32X1M U10 ( .A0(n33), .A1(bit_count[3]), .A2(n12), .B0(n13), .B1(n34), 
        .Y(n24) );
  INVX2M U11 ( .A(bit_count[3]), .Y(n34) );
  INVX2M U12 ( .A(bit_count[2]), .Y(n33) );
  NOR2BX2M U13 ( .AN(n7), .B(n15), .Y(n13) );
  XNOR2X2M U14 ( .A(bit_count[2]), .B(n12), .Y(n25) );
  OAI21X2M U15 ( .A0(n7), .A1(n35), .B0(n9), .Y(n23) );
  NAND4XLM U16 ( .A(N14), .B(bit_count[0]), .C(n10), .D(n35), .Y(n9) );
  INVX2M U17 ( .A(bit_count[1]), .Y(n35) );
  AO22X1M U18 ( .A0(edge_count[1]), .A1(n36), .B0(N17), .B1(n22), .Y(n27) );
  AO22X1M U19 ( .A0(edge_count[2]), .A1(n36), .B0(N18), .B1(n22), .Y(n28) );
  AO22X1M U20 ( .A0(edge_count[3]), .A1(n36), .B0(N19), .B1(n22), .Y(n29) );
  AO22X1M U21 ( .A0(edge_count[4]), .A1(n36), .B0(N20), .B1(n22), .Y(n30) );
  AO22X1M U22 ( .A0(edge_count[0]), .A1(n36), .B0(N16), .B1(n22), .Y(n31) );
  INVX2M U23 ( .A(edge_count[0]), .Y(N16) );
  OAI211X2M U24 ( .A0(bit_count[1]), .A1(bit_count[0]), .B0(bit_count[3]), 
        .C0(n19), .Y(n10) );
  AOI221XLM U25 ( .A0(bit_count[0]), .A1(PAR_EN), .B0(bit_count[1]), .B1(n37), 
        .C0(bit_count[2]), .Y(n19) );
  INVX2M U26 ( .A(PAR_EN), .Y(n37) );
  AOI21X2M U27 ( .A0(bit_count[2]), .A1(bit_count[1]), .B0(n32), .Y(n15) );
  INVX2M U28 ( .A(bit_count[0]), .Y(n21) );
  ADDHX1M U29 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_20/carry[2] ), 
        .S(N17) );
  ADDHX1M U30 ( .A(edge_count[2]), .B(\add_20/carry[2] ), .CO(
        \add_20/carry[3] ), .S(N18) );
  ADDHX1M U31 ( .A(edge_count[3]), .B(\add_20/carry[3] ), .CO(
        \add_20/carry[4] ), .S(N19) );
  INVX2M U32 ( .A(presscale[0]), .Y(N7) );
  NAND2BX1M U33 ( .AN(presscale[1]), .B(N7), .Y(n1) );
  OAI2BB1X1M U34 ( .A0N(presscale[0]), .A1N(presscale[1]), .B0(n1), .Y(N8) );
  OR2X1M U35 ( .A(n1), .B(presscale[2]), .Y(n2) );
  OAI2BB1X1M U36 ( .A0N(n1), .A1N(presscale[2]), .B0(n2), .Y(N9) );
  OR2X1M U37 ( .A(n2), .B(presscale[3]), .Y(n3) );
  OAI2BB1X1M U38 ( .A0N(n2), .A1N(presscale[3]), .B0(n3), .Y(N10) );
  OR2X1M U39 ( .A(n3), .B(presscale[4]), .Y(n4) );
  OAI2BB1X1M U40 ( .A0N(n3), .A1N(presscale[4]), .B0(n4), .Y(N11) );
  NOR2X1M U41 ( .A(n4), .B(presscale[5]), .Y(N13) );
  AO21XLM U42 ( .A0(n4), .A1(presscale[5]), .B0(N13), .Y(N12) );
  CLKXOR2X2M U43 ( .A(\add_20/carry[4] ), .B(edge_count[4]), .Y(N20) );
  NOR2BX1M U44 ( .AN(edge_count[0]), .B(N7), .Y(n5) );
  OAI2B2X1M U45 ( .A1N(N8), .A0(n5), .B0(edge_count[1]), .B1(n5), .Y(n11) );
  NOR2BX1M U46 ( .AN(N7), .B(edge_count[0]), .Y(n6) );
  OAI2B2X1M U47 ( .A1N(edge_count[1]), .A0(n6), .B0(N8), .B1(n6), .Y(n8) );
  NAND4BBX1M U48 ( .AN(N13), .BN(N12), .C(n11), .D(n8), .Y(n18) );
  CLKXOR2X2M U49 ( .A(N11), .B(edge_count[4]), .Y(n17) );
  CLKXOR2X2M U50 ( .A(N9), .B(edge_count[2]), .Y(n16) );
  CLKXOR2X2M U51 ( .A(N10), .B(edge_count[3]), .Y(n14) );
  NOR4X1M U52 ( .A(n18), .B(n17), .C(n16), .D(n14), .Y(N14) );
endmodule


module Parity_check_RX ( rst_n, clk, en, type, data, valid_bit, par_err );
  input rst_n, clk, en, type, data, valid_bit;
  output par_err;
  wire   count, n4, n5, n1, n2, n3;

  DFFRQX2M count_reg ( .D(n5), .CK(clk), .RN(rst_n), .Q(count) );
  INVX2M U3 ( .A(en), .Y(n3) );
  OAI32X1M U4 ( .A0(n4), .A1(count), .A2(n3), .B0(n1), .B1(n2), .Y(n5) );
  INVX2M U5 ( .A(count), .Y(n2) );
  INVX2M U6 ( .A(n4), .Y(n1) );
  OAI21X2M U7 ( .A0(data), .A1(n3), .B0(valid_bit), .Y(n4) );
  CLKXOR2X2M U8 ( .A(type), .B(count), .Y(par_err) );
endmodule


module Start_check_RX ( rst_n, clk, en, data, valid, glitch );
  input rst_n, clk, en, data, valid;
  output glitch;
  wire   n2, n3, n1;

  DFFRQX2M glitch_reg ( .D(n3), .CK(clk), .RN(rst_n), .Q(glitch) );
  NOR2BX2M U3 ( .AN(en), .B(n2), .Y(n3) );
  AOI22X1M U4 ( .A0(valid), .A1(data), .B0(glitch), .B1(n1), .Y(n2) );
  INVX2M U5 ( .A(valid), .Y(n1) );
endmodule


module Stop_check_RX ( rst_n, clk, en, data, valid, err );
  input rst_n, clk, en, data, valid;
  output err;
  wire   n2, n3, n1;

  DFFRQX2M err_reg ( .D(n3), .CK(clk), .RN(rst_n), .Q(err) );
  NOR2BX2M U3 ( .AN(en), .B(n2), .Y(n3) );
  AOI2BB2XLM U4 ( .B0(err), .B1(n1), .A0N(data), .A1N(n1), .Y(n2) );
  INVX2M U5 ( .A(valid), .Y(n1) );
endmodule


module Serial_2_parallel_RX_DATA_WIDTH8 ( rst_n, clk, bit, en, valid, P_data
 );
  output [7:0] P_data;
  input rst_n, clk, bit, en, valid;
  wire   n1, n10, n11, n12, n13, n14, n15, n16, n17, n2, n3, n4, n5, n6, n7,
         n8, n9;

  DFFRQX2M \shift_reg_reg[0]  ( .D(n10), .CK(clk), .RN(rst_n), .Q(P_data[0])
         );
  DFFRQX2M \shift_reg_reg[7]  ( .D(n17), .CK(clk), .RN(rst_n), .Q(P_data[7])
         );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n16), .CK(clk), .RN(rst_n), .Q(P_data[6])
         );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n15), .CK(clk), .RN(rst_n), .Q(P_data[5])
         );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n14), .CK(clk), .RN(rst_n), .Q(P_data[4])
         );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n13), .CK(clk), .RN(rst_n), .Q(P_data[3])
         );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n12), .CK(clk), .RN(rst_n), .Q(P_data[2])
         );
  DFFRQX2M \shift_reg_reg[1]  ( .D(n11), .CK(clk), .RN(rst_n), .Q(P_data[1])
         );
  OAI22X1M U2 ( .A0(n2), .A1(n9), .B0(n1), .B1(n8), .Y(n11) );
  OAI22X1M U3 ( .A0(n2), .A1(n8), .B0(n1), .B1(n7), .Y(n12) );
  OAI22X1M U4 ( .A0(n2), .A1(n7), .B0(n1), .B1(n6), .Y(n13) );
  OAI22X1M U5 ( .A0(n2), .A1(n6), .B0(n1), .B1(n5), .Y(n14) );
  OAI22X1M U6 ( .A0(n2), .A1(n5), .B0(n1), .B1(n4), .Y(n15) );
  OAI22X1M U7 ( .A0(n2), .A1(n4), .B0(n1), .B1(n3), .Y(n16) );
  INVX2M U8 ( .A(n1), .Y(n2) );
  OAI2BB2X1M U9 ( .B0(n2), .B1(n3), .A0N(bit), .A1N(n2), .Y(n17) );
  NAND2X2M U10 ( .A(valid), .B(en), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n9), .A0N(P_data[0]), .A1N(n1), .Y(n10) );
  INVX2M U12 ( .A(P_data[7]), .Y(n3) );
  INVX2M U13 ( .A(P_data[1]), .Y(n9) );
  INVX2M U14 ( .A(P_data[2]), .Y(n8) );
  INVX2M U15 ( .A(P_data[3]), .Y(n7) );
  INVX2M U16 ( .A(P_data[4]), .Y(n6) );
  INVX2M U17 ( .A(P_data[5]), .Y(n5) );
  INVX2M U18 ( .A(P_data[6]), .Y(n4) );
endmodule


module sampler_RX ( clk, rst_n, en, edge_count, RX_IN, presscale, bit, 
        valid_bit );
  input [4:0] edge_count;
  input [5:0] presscale;
  input clk, rst_n, en, RX_IN;
  output bit, valid_bit;
  wire   N13, N14, N15, N16, N17, N18, N19, N20, N22, N23, N24, N25, N26, N27,
         n11, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, \add_33/carry[4] , \add_33/carry[3] , \add_33/carry[2] , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47;
  wire   [2:0] data_cmp;

  DFFRQX2M \data_cmp_reg[2]  ( .D(n29), .CK(clk), .RN(rst_n), .Q(data_cmp[2])
         );
  DFFRQX2M \data_cmp_reg[1]  ( .D(n28), .CK(clk), .RN(rst_n), .Q(data_cmp[1])
         );
  DFFRX1M \data_cmp_reg[0]  ( .D(n27), .CK(clk), .RN(rst_n), .QN(n11) );
  DFFRQX2M valid_bit_reg ( .D(n30), .CK(clk), .RN(rst_n), .Q(valid_bit) );
  NOR4BX1M U3 ( .AN(n24), .B(presscale[0]), .C(presscale[2]), .D(presscale[1]), 
        .Y(n21) );
  INVX2M U4 ( .A(en), .Y(n45) );
  INVX2M U5 ( .A(n21), .Y(n46) );
  OAI32X1M U6 ( .A0(n11), .A1(n44), .A2(n46), .B0(n17), .B1(n18), .Y(n27) );
  INVX2M U7 ( .A(n17), .Y(n44) );
  NAND2X2M U8 ( .A(en), .B(N19), .Y(n17) );
  NAND2X2M U9 ( .A(RX_IN), .B(n21), .Y(n18) );
  OAI2BB2X1M U10 ( .B0(n19), .B1(n18), .A0N(n19), .A1N(data_cmp[1]), .Y(n28)
         );
  AOI31X2M U11 ( .A0(N20), .A1(n43), .A2(en), .B0(n46), .Y(n19) );
  INVX2M U12 ( .A(N19), .Y(n43) );
  OAI2BB2X1M U13 ( .B0(n20), .B1(n18), .A0N(n20), .A1N(data_cmp[2]), .Y(n29)
         );
  NOR2X2M U14 ( .A(n46), .B(n22), .Y(n20) );
  NOR4BX1M U15 ( .AN(N27), .B(n45), .C(N19), .D(N20), .Y(n22) );
  NOR2X2M U16 ( .A(n23), .B(n46), .Y(n30) );
  AOI21X2M U17 ( .A0(valid_bit), .A1(n45), .B0(n22), .Y(n23) );
  OAI2BB2X1M U18 ( .B0(n26), .B1(n11), .A0N(data_cmp[1]), .A1N(n26), .Y(bit)
         );
  XNOR2X2M U19 ( .A(data_cmp[1]), .B(data_cmp[2]), .Y(n26) );
  OAI32X1M U20 ( .A0(presscale[3]), .A1(presscale[4]), .A2(n47), .B0(n25), 
        .B1(presscale[5]), .Y(n24) );
  INVX2M U21 ( .A(presscale[5]), .Y(n47) );
  XNOR2X2M U22 ( .A(presscale[4]), .B(presscale[3]), .Y(n25) );
  INVX2M U23 ( .A(presscale[1]), .Y(N13) );
  ADDHX1M U24 ( .A(presscale[2]), .B(presscale[1]), .CO(\add_33/carry[2] ), 
        .S(N22) );
  ADDHX1M U25 ( .A(presscale[3]), .B(\add_33/carry[2] ), .CO(\add_33/carry[3] ), .S(N23) );
  ADDHX1M U26 ( .A(presscale[4]), .B(\add_33/carry[3] ), .CO(\add_33/carry[4] ), .S(N24) );
  ADDHX1M U27 ( .A(presscale[5]), .B(\add_33/carry[4] ), .CO(N26), .S(N25) );
  NAND2BX1M U28 ( .AN(presscale[2]), .B(N13), .Y(n1) );
  OAI2BB1X1M U29 ( .A0N(presscale[1]), .A1N(presscale[2]), .B0(n1), .Y(N14) );
  OR2X1M U30 ( .A(n1), .B(presscale[3]), .Y(n2) );
  OAI2BB1X1M U31 ( .A0N(n1), .A1N(presscale[3]), .B0(n2), .Y(N15) );
  XNOR2X1M U32 ( .A(presscale[4]), .B(n2), .Y(N16) );
  NOR3X1M U33 ( .A(presscale[4]), .B(presscale[5]), .C(n2), .Y(N18) );
  OAI21X1M U34 ( .A0(presscale[4]), .A1(n2), .B0(presscale[5]), .Y(n3) );
  NAND2BX1M U35 ( .AN(N18), .B(n3), .Y(N17) );
  NOR2BX1M U36 ( .AN(N13), .B(edge_count[0]), .Y(n4) );
  OAI2B2X1M U37 ( .A1N(edge_count[1]), .A0(n4), .B0(N14), .B1(n4), .Y(n7) );
  NOR2BX1M U38 ( .AN(edge_count[0]), .B(N13), .Y(n5) );
  OAI2B2X1M U39 ( .A1N(N14), .A0(n5), .B0(edge_count[1]), .B1(n5), .Y(n6) );
  NAND3BX1M U40 ( .AN(N18), .B(n7), .C(n6), .Y(n12) );
  CLKXOR2X2M U41 ( .A(N17), .B(edge_count[4]), .Y(n10) );
  CLKXOR2X2M U42 ( .A(N15), .B(edge_count[2]), .Y(n9) );
  CLKXOR2X2M U43 ( .A(N16), .B(edge_count[3]), .Y(n8) );
  NOR4X1M U44 ( .A(n12), .B(n10), .C(n9), .D(n8), .Y(N19) );
  CLKXOR2X2M U45 ( .A(presscale[3]), .B(edge_count[2]), .Y(n34) );
  NOR2BX1M U46 ( .AN(presscale[1]), .B(edge_count[0]), .Y(n13) );
  OAI2B2X1M U47 ( .A1N(edge_count[1]), .A0(n13), .B0(presscale[2]), .B1(n13), 
        .Y(n16) );
  NOR2BX1M U48 ( .AN(edge_count[0]), .B(presscale[1]), .Y(n14) );
  OAI2B2X1M U49 ( .A1N(presscale[2]), .A0(n14), .B0(edge_count[1]), .B1(n14), 
        .Y(n15) );
  CLKNAND2X2M U50 ( .A(n16), .B(n15), .Y(n33) );
  CLKXOR2X2M U51 ( .A(presscale[4]), .B(edge_count[3]), .Y(n32) );
  CLKXOR2X2M U52 ( .A(presscale[5]), .B(edge_count[4]), .Y(n31) );
  NOR4X1M U53 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(N20) );
  NOR2BX1M U54 ( .AN(N13), .B(edge_count[0]), .Y(n35) );
  OAI2B2X1M U55 ( .A1N(edge_count[1]), .A0(n35), .B0(N22), .B1(n35), .Y(n38)
         );
  NOR2BX1M U56 ( .AN(edge_count[0]), .B(N13), .Y(n36) );
  OAI2B2X1M U57 ( .A1N(N22), .A0(n36), .B0(edge_count[1]), .B1(n36), .Y(n37)
         );
  NAND3BX1M U58 ( .AN(N26), .B(n38), .C(n37), .Y(n42) );
  CLKXOR2X2M U59 ( .A(N25), .B(edge_count[4]), .Y(n41) );
  CLKXOR2X2M U60 ( .A(N23), .B(edge_count[2]), .Y(n40) );
  CLKXOR2X2M U61 ( .A(N24), .B(edge_count[3]), .Y(n39) );
  NOR4X1M U62 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(N27) );
endmodule


module UART_RX_DATA_WIDTH8 ( RX_IN, clk, rst_n, presscale, PAR_EN, PAR_TYPE, 
        P_data, parity_error, stop_error, data_valid );
  input [5:0] presscale;
  output [7:0] P_data;
  input RX_IN, clk, rst_n, PAR_EN, PAR_TYPE;
  output parity_error, stop_error, data_valid;
  wire   start_err_cu_checker, parity_err_cu_checker, stop_err_cu_checker,
         start_en_cu_checker, parity_en_cu_checker, stop_en_cu_checker,
         enable_counter_cu, data_samp_en, data_ser_en, data_bit,
         valid_data_bit, n1, n2;
  wire   [4:0] edge_count;
  wire   [3:0] bit_count_counter_cu;

  FSM_CU_RX C0 ( .clk(clk), .rst_n(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .edge_count(edge_count), .bit_count(bit_count_counter_cu), 
        .start_glitch(start_err_cu_checker), .par_err(parity_err_cu_checker), 
        .stop_err(stop_err_cu_checker), .presscale(presscale), .start_chk_en(
        start_en_cu_checker), .par_chk_en(parity_en_cu_checker), .stop_chk_en(
        stop_en_cu_checker), .enable_counter(enable_counter_cu), .sampling_en(
        data_samp_en), .serial_en(data_ser_en), .data_valid(data_valid), 
        .stop_error(stop_error), .parity_error(parity_error) );
  edge_bit_counter_RX counter0 ( .clk(clk), .rst_n(n1), .en(enable_counter_cu), 
        .PAR_EN(PAR_EN), .presscale(presscale), .edge_count(edge_count), 
        .bit_count(bit_count_counter_cu) );
  Parity_check_RX PAR_CHKER0 ( .rst_n(n1), .clk(clk), .en(parity_en_cu_checker), .type(PAR_TYPE), .data(data_bit), .valid_bit(valid_data_bit), .par_err(
        parity_err_cu_checker) );
  Start_check_RX STAR_CHECKER0 ( .rst_n(n1), .clk(clk), .en(
        start_en_cu_checker), .data(data_bit), .valid(valid_data_bit), 
        .glitch(start_err_cu_checker) );
  Stop_check_RX STOP_CHECKER0 ( .rst_n(n1), .clk(clk), .en(stop_en_cu_checker), 
        .data(data_bit), .valid(valid_data_bit), .err(stop_err_cu_checker) );
  Serial_2_parallel_RX_DATA_WIDTH8 S2P ( .rst_n(n1), .clk(clk), .bit(data_bit), 
        .en(data_ser_en), .valid(valid_data_bit), .P_data(P_data) );
  sampler_RX DATA_SAMPLE0 ( .clk(clk), .rst_n(n1), .en(data_samp_en), 
        .edge_count(edge_count), .RX_IN(RX_IN), .presscale(presscale), .bit(
        data_bit), .valid_bit(valid_data_bit) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_n), .Y(n2) );
endmodule


module UART_TOP_DATA_WIDTH8 ( rst_n, par_en, par_type, tx_clk, tx_in_p_data, 
        tx_in_v, tx_out_s, tx_busy, rx_clk, rx_in_S, presscale, rx_out_p, 
        rx_par_err, rx_stop_err, rx_data_val );
  input [7:0] tx_in_p_data;
  input [5:0] presscale;
  output [7:0] rx_out_p;
  input rst_n, par_en, par_type, tx_clk, tx_in_v, rx_clk, rx_in_S;
  output tx_out_s, tx_busy, rx_par_err, rx_stop_err, rx_data_val;


  UART_TX_DATA_WIDTH8 TX0 ( .clk(tx_clk), .rst_n(rst_n), .P_data(tx_in_p_data), 
        .data_valid(tx_in_v), .par_en(par_en), .par_type(par_type), .tx_out(
        tx_out_s), .busy(tx_busy) );
  UART_RX_DATA_WIDTH8 RX0 ( .RX_IN(rx_in_S), .clk(rx_clk), .rst_n(rst_n), 
        .presscale(presscale), .PAR_EN(par_en), .PAR_TYPE(par_type), .P_data(
        rx_out_p), .parity_error(rx_par_err), .stop_error(rx_stop_err), 
        .data_valid(rx_data_val) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_OUT, 
        parity_error, stop_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_OUT, parity_error, stop_error;
  wire   REF_SYNC_RST_n, UART_SYNC_RST_n, gated_clk_en, clk_gated, TX_CLK,
         RX_CLK, ALU_out_valid, ALU_enable, RD_valid_wire, WR_en_wire,
         RD_en_wire, fifo_full_wire, fifo_wr_inc_wire, sync_en,
         fifo_rd_inc_wire, fifo_empty_wire, busy_sig, en_data, n3, n4, n5, n6,
         n7, n8, n9;
  wire   [7:0] UART_CONFIG;
  wire   [2:0] RX_DIV_ratio;
  wire   [7:0] DIV_ratio_wire;
  wire   [15:0] ALU_out_data;
  wire   [3:0] ALU_function;
  wire   [7:0] RD_data_wire;
  wire   [7:0] WR_data_regfile_wire;
  wire   [3:0] addr_wire;
  wire   [7:0] fifio_wr_data_wire;
  wire   [7:0] sync_data;
  wire   [7:0] OP_A_wire;
  wire   [7:0] OP_B_wire;
  wire   [7:0] fifio_rd_data_wire;
  wire   [7:0] data_unsync;

  RST_SYNC_NUM_STAGES2_0 RST_SYNC0 ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(
        REF_SYNC_RST_n) );
  RST_SYNC_NUM_STAGES2_1 RST_SYNC1 ( .RST(RST_N), .CLK(UART_CLK), .SYNC_RST(
        UART_SYNC_RST_n) );
  CLK_gate ICG0 ( .clk_en(gated_clk_en), .clk(REF_CLK), .gated_clk(clk_gated)
         );
  Integer_CLK_DIV_0 CLK_DIV0 ( .i_ref_clk(UART_CLK), .i_rst_n(n4), .i_clk_en(
        1'b1), .i_div_ratio(DIV_ratio_wire), .o_div_clk(TX_CLK) );
  Integer_CLK_DIV_1 CLK_DIV1 ( .i_ref_clk(UART_CLK), .i_rst_n(n4), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, RX_DIV_ratio}), 
        .o_div_clk(RX_CLK) );
  SYS_CTRL_OPERANDS_WIDTH8_ALU_OUT_WIDTH16_ALU_FUNC_WIDTH4_REG_WIDTH8_ADDR_WIDTH4_UART_DATA_WIDTH8 CTRL0 ( 
        .clk(REF_CLK), .rst_n(n6), .ALU_out(ALU_out_data), .ALU_out_valid(
        ALU_out_valid), .ALU_func(ALU_function), .ALU_en(ALU_enable), .clk_en(
        gated_clk_en), .RD_data(RD_data_wire), .RD_valid(RD_valid_wire), 
        .WR_data_regfile(WR_data_regfile_wire), .addr(addr_wire), 
        .WR_en_regfile(WR_en_wire), .RD_en_regfile(RD_en_wire), 
        .fifo_full_flag(fifo_full_wire), .WR_data_fifo(fifio_wr_data_wire), 
        .WR_inc_fifo(fifo_wr_inc_wire), .rx_data(sync_data), .rx_data_valid(
        sync_en) );
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16 ALU0 ( .A(OP_A_wire), .B(
        OP_B_wire), .ALU_FUN(ALU_function), .clk(clk_gated), .rst_n(n6), 
        .enable(ALU_enable), .ALU_OUT(ALU_out_data), .out_valid(ALU_out_valid)
         );
  Register_File_WIDTH8_DEPTH16 RF0 ( .WrData(WR_data_regfile_wire), .Address(
        addr_wire), .WrEn(WR_en_wire), .RdEn(RD_en_wire), .CLK(REF_CLK), .RST(
        n6), .RdData(RD_data_wire), .rd_valid(RD_valid_wire), .DIV_ratio(
        DIV_ratio_wire), .op_A(OP_A_wire), .op_B(OP_B_wire), .UART_CON(
        UART_CONFIG) );
  FIFO_top_DATA_WIDTH8_FIFO_DEPTH8 FIFO0 ( .w_clk(REF_CLK), .w_rst(n6), 
        .w_inc(fifo_wr_inc_wire), .r_clk(TX_CLK), .r_rst(n4), .r_inc(
        fifo_rd_inc_wire), .wr_data(fifio_wr_data_wire), .full(fifo_full_wire), 
        .empty(fifo_empty_wire), .rd_data(fifio_rd_data_wire) );
  Pulse_generator_0 Pgen0 ( .in(busy_sig), .clk(TX_CLK), .rst_n(n4), .pulse(
        fifo_rd_inc_wire) );
  DATA_SYNC_NUMBER_STAGES2_BUS_WIDTH8 D_SYNC0 ( .unsync_bus(data_unsync), 
        .bus_enable(en_data), .clk(REF_CLK), .rst_n(n6), .sync_bus(sync_data), 
        .enable_pulse(sync_en) );
  UART_TOP_DATA_WIDTH8 UART0 ( .rst_n(n4), .par_en(UART_CONFIG[0]), .par_type(
        UART_CONFIG[1]), .tx_clk(TX_CLK), .tx_in_p_data(fifio_rd_data_wire), 
        .tx_in_v(n8), .tx_out_s(UART_TX_OUT), .tx_busy(busy_sig), .rx_clk(
        RX_CLK), .rx_in_S(UART_RX_IN), .presscale(UART_CONFIG[7:2]), 
        .rx_out_p(data_unsync), .rx_par_err(parity_error), .rx_stop_err(
        stop_error), .rx_data_val(en_data) );
  INVX4M U9 ( .A(n7), .Y(n6) );
  INVX2M U10 ( .A(fifo_empty_wire), .Y(n8) );
  NOR2X2M U11 ( .A(RX_DIV_ratio[2]), .B(RX_DIV_ratio[1]), .Y(RX_DIV_ratio[0])
         );
  NOR3BX2M U12 ( .AN(n3), .B(UART_CONFIG[6]), .C(n9), .Y(RX_DIV_ratio[2]) );
  NOR4X1M U13 ( .A(UART_CONFIG[3]), .B(UART_CONFIG[2]), .C(UART_CONFIG[7]), 
        .D(UART_CONFIG[4]), .Y(n3) );
  AND3X2M U14 ( .A(n3), .B(n9), .C(UART_CONFIG[6]), .Y(RX_DIV_ratio[1]) );
  INVX2M U15 ( .A(REF_SYNC_RST_n), .Y(n7) );
  INVX4M U16 ( .A(n5), .Y(n4) );
  INVX2M U17 ( .A(UART_SYNC_RST_n), .Y(n5) );
  INVX2M U18 ( .A(UART_CONFIG[5]), .Y(n9) );
endmodule

