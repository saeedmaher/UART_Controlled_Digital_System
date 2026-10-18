/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Fri Oct  2 04:18:26 2026
/////////////////////////////////////////////////////////////


module RST_SYNC_NUM_STAGES2_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \rst_sync_reg[0] ;

  SDFFRQX1M \rst_sync_reg_reg[1]  ( .D(\rst_sync_reg[0] ), .SI(
        \rst_sync_reg[0] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX1M \rst_sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\rst_sync_reg[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \rst_sync_reg[0] ;

  SDFFRQX2M \rst_sync_reg_reg[1]  ( .D(\rst_sync_reg[0] ), .SI(
        \rst_sync_reg[0] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \rst_sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\rst_sync_reg[0] ) );
endmodule


module CLK_gate ( clk_en, clk, gated_clk );
  input clk_en, clk;
  output gated_clk;


  TLATNCAX12M U0_TLATNCAX12Mv ( .E(clk_en), .CK(clk), .ECK(gated_clk) );
endmodule


module Integer_CLK_DIV_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, clk_div_reg, N6, N9, N10, N11, N12, N13, N14, N15, N16, N18, N19,
         N20, N21, N22, N23, N24, N25, N34, N35, N36, N37, N38, N39, N40, N41,
         n13, n14, n15, n16, n17, n18, n19, n1, n2, n12, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42;
  wire   [7:0] counter;
  assign test_so = counter[7];

  SDFFRQX2M clk_div_reg_reg ( .D(n19), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(clk_div_reg) );
  SDFFRQX2M \counter_reg[2]  ( .D(N36), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N37), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[7]  ( .D(N41), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N40), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N38), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N35), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N39), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N34), .SI(clk_div_reg), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  INVX2M U5 ( .A(n14), .Y(n42) );
  AO22X1M U7 ( .A0(N14), .A1(n42), .B0(N23), .B1(n14), .Y(N39) );
  AO22X1M U14 ( .A0(N9), .A1(n42), .B0(N18), .B1(n14), .Y(N34) );
  XNOR2X2M U15 ( .A(clk_div_reg), .B(n13), .Y(n19) );
  NOR2X2M U16 ( .A(N6), .B(n42), .Y(n13) );
  NAND2X2M U17 ( .A(n15), .B(n16), .Y(n14) );
  NOR4X1M U18 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n15) );
  NOR4X1M U19 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n16) );
  AO22X1M U20 ( .A0(N16), .A1(n42), .B0(N25), .B1(n14), .Y(N41) );
  AO22X1M U21 ( .A0(N15), .A1(n42), .B0(N24), .B1(n14), .Y(N40) );
  AO22X1M U22 ( .A0(N13), .A1(n42), .B0(N22), .B1(n14), .Y(N38) );
  AO22X1M U23 ( .A0(N12), .A1(n42), .B0(N21), .B1(n14), .Y(N37) );
  AO22X1M U24 ( .A0(N11), .A1(n42), .B0(N20), .B1(n14), .Y(N36) );
  AO22X1M U25 ( .A0(N10), .A1(n42), .B0(N19), .B1(n14), .Y(N35) );
  INVX2M U26 ( .A(counter[0]), .Y(N18) );
  INVX2M U27 ( .A(counter[5]), .Y(n23) );
  INVX2M U28 ( .A(i_div_ratio[5]), .Y(n30) );
  AOI21BX2M U29 ( .A0(n17), .A1(n18), .B0N(i_clk_en), .Y(N1) );
  NOR3X2M U30 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n17) );
  NOR4X1M U31 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n18) );
  INVX2M U32 ( .A(i_div_ratio[0]), .Y(N9) );
  MX2X2M U33 ( .A(i_ref_clk), .B(clk_div_reg), .S0(N1), .Y(o_div_clk) );
  NAND2BX1M U34 ( .AN(counter[1]), .B(N18), .Y(n1) );
  OAI2BB1X1M U35 ( .A0N(counter[0]), .A1N(counter[1]), .B0(n1), .Y(N19) );
  OR2X1M U36 ( .A(n1), .B(counter[2]), .Y(n2) );
  OAI2BB1X1M U37 ( .A0N(n1), .A1N(counter[2]), .B0(n2), .Y(N20) );
  OR2X1M U38 ( .A(n2), .B(counter[3]), .Y(n12) );
  OAI2BB1X1M U39 ( .A0N(n2), .A1N(counter[3]), .B0(n12), .Y(N21) );
  NOR2X1M U40 ( .A(n12), .B(counter[4]), .Y(n20) );
  AO21XLM U41 ( .A0(n12), .A1(counter[4]), .B0(n20), .Y(N22) );
  CLKNAND2X2M U42 ( .A(n20), .B(n23), .Y(n21) );
  OAI21X1M U43 ( .A0(n20), .A1(n23), .B0(n21), .Y(N23) );
  XNOR2X1M U44 ( .A(counter[6]), .B(n21), .Y(N24) );
  NOR2X1M U45 ( .A(counter[6]), .B(n21), .Y(n22) );
  CLKXOR2X2M U46 ( .A(counter[7]), .B(n22), .Y(N25) );
  NAND2BX1M U47 ( .AN(i_div_ratio[1]), .B(N9), .Y(n24) );
  OAI2BB1X1M U48 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n24), .Y(
        N10) );
  OR2X1M U49 ( .A(n24), .B(i_div_ratio[2]), .Y(n25) );
  OAI2BB1X1M U50 ( .A0N(n24), .A1N(i_div_ratio[2]), .B0(n25), .Y(N11) );
  OR2X1M U51 ( .A(n25), .B(i_div_ratio[3]), .Y(n26) );
  OAI2BB1X1M U52 ( .A0N(n25), .A1N(i_div_ratio[3]), .B0(n26), .Y(N12) );
  NOR2X1M U53 ( .A(n26), .B(i_div_ratio[4]), .Y(n27) );
  AO21XLM U54 ( .A0(n26), .A1(i_div_ratio[4]), .B0(n27), .Y(N13) );
  CLKNAND2X2M U55 ( .A(n27), .B(n30), .Y(n28) );
  OAI21X1M U56 ( .A0(n27), .A1(n30), .B0(n28), .Y(N14) );
  XNOR2X1M U57 ( .A(i_div_ratio[6]), .B(n28), .Y(N15) );
  NOR2X1M U58 ( .A(i_div_ratio[6]), .B(n28), .Y(n29) );
  CLKXOR2X2M U59 ( .A(i_div_ratio[7]), .B(n29), .Y(N16) );
  NOR2BX1M U60 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n31) );
  OAI2B2X1M U61 ( .A1N(i_div_ratio[2]), .A0(n31), .B0(counter[1]), .B1(n31), 
        .Y(n35) );
  XNOR2X1M U62 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n34) );
  NOR2BX1M U63 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n32) );
  OAI2B2X1M U64 ( .A1N(counter[1]), .A0(n32), .B0(i_div_ratio[2]), .B1(n32), 
        .Y(n33) );
  NAND4BX1M U65 ( .AN(counter[7]), .B(n35), .C(n34), .D(n33), .Y(n41) );
  XNOR2X1M U66 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n39) );
  XNOR2X1M U67 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n38) );
  XNOR2X1M U68 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n37) );
  XNOR2X1M U69 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n36) );
  NAND4X1M U70 ( .A(n39), .B(n38), .C(n37), .D(n36), .Y(n40) );
  NOR2X1M U71 ( .A(n41), .B(n40), .Y(N6) );
endmodule


module Integer_CLK_DIV_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, clk_div_reg, N6, N9, N10, N11, N12, N13, N14, N15, N16, N18, N19,
         N20, N21, N22, N23, N24, N25, N34, N35, N36, N37, N38, N39, N40, N41,
         n1, n2, n12, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49;
  wire   [7:0] counter;
  assign test_so = counter[7];

  SDFFRQX2M clk_div_reg_reg ( .D(n43), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(clk_div_reg) );
  SDFFRQX2M \counter_reg[2]  ( .D(N36), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N37), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[7]  ( .D(N41), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N40), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N38), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N35), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N39), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N34), .SI(clk_div_reg), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  INVX2M U5 ( .A(i_div_ratio[0]), .Y(N9) );
  INVX2M U7 ( .A(n48), .Y(n42) );
  AO22X1M U14 ( .A0(N14), .A1(n42), .B0(N23), .B1(n48), .Y(N39) );
  AO22X1M U15 ( .A0(N9), .A1(n42), .B0(N18), .B1(n48), .Y(N34) );
  XNOR2X2M U16 ( .A(clk_div_reg), .B(n49), .Y(n43) );
  NOR2X2M U17 ( .A(N6), .B(n42), .Y(n49) );
  NAND2X2M U18 ( .A(n47), .B(n46), .Y(n48) );
  NOR4X1M U19 ( .A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[0]), 
        .Y(n47) );
  NOR4X1M U20 ( .A(counter[7]), .B(counter[6]), .C(counter[5]), .D(counter[4]), 
        .Y(n46) );
  AO22X1M U21 ( .A0(N16), .A1(n42), .B0(N25), .B1(n48), .Y(N41) );
  AO22X1M U22 ( .A0(N15), .A1(n42), .B0(N24), .B1(n48), .Y(N40) );
  AO22X1M U23 ( .A0(N13), .A1(n42), .B0(N22), .B1(n48), .Y(N38) );
  AO22X1M U24 ( .A0(N12), .A1(n42), .B0(N21), .B1(n48), .Y(N37) );
  AO22X1M U25 ( .A0(N11), .A1(n42), .B0(N20), .B1(n48), .Y(N36) );
  AO22X1M U26 ( .A0(N10), .A1(n42), .B0(N19), .B1(n48), .Y(N35) );
  INVX2M U27 ( .A(counter[0]), .Y(N18) );
  INVX2M U28 ( .A(counter[5]), .Y(n23) );
  AOI21BX2M U29 ( .A0(n45), .A1(n44), .B0N(i_clk_en), .Y(N1) );
  NOR4X1M U30 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n44) );
  NOR3X2M U31 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n45) );
  INVX2M U32 ( .A(i_div_ratio[5]), .Y(n30) );
  MX2X2M U33 ( .A(i_ref_clk), .B(clk_div_reg), .S0(N1), .Y(o_div_clk) );
  NAND2BX1M U34 ( .AN(counter[1]), .B(N18), .Y(n1) );
  OAI2BB1X1M U35 ( .A0N(counter[0]), .A1N(counter[1]), .B0(n1), .Y(N19) );
  OR2X1M U36 ( .A(n1), .B(counter[2]), .Y(n2) );
  OAI2BB1X1M U37 ( .A0N(n1), .A1N(counter[2]), .B0(n2), .Y(N20) );
  OR2X1M U38 ( .A(n2), .B(counter[3]), .Y(n12) );
  OAI2BB1X1M U39 ( .A0N(n2), .A1N(counter[3]), .B0(n12), .Y(N21) );
  NOR2X1M U40 ( .A(n12), .B(counter[4]), .Y(n20) );
  AO21XLM U41 ( .A0(n12), .A1(counter[4]), .B0(n20), .Y(N22) );
  CLKNAND2X2M U42 ( .A(n20), .B(n23), .Y(n21) );
  OAI21X1M U43 ( .A0(n20), .A1(n23), .B0(n21), .Y(N23) );
  XNOR2X1M U44 ( .A(counter[6]), .B(n21), .Y(N24) );
  NOR2X1M U45 ( .A(counter[6]), .B(n21), .Y(n22) );
  CLKXOR2X2M U46 ( .A(counter[7]), .B(n22), .Y(N25) );
  NAND2BX1M U47 ( .AN(i_div_ratio[1]), .B(N9), .Y(n24) );
  OAI2BB1X1M U48 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n24), .Y(
        N10) );
  OR2X1M U49 ( .A(n24), .B(i_div_ratio[2]), .Y(n25) );
  OAI2BB1X1M U50 ( .A0N(n24), .A1N(i_div_ratio[2]), .B0(n25), .Y(N11) );
  OR2X1M U51 ( .A(n25), .B(i_div_ratio[3]), .Y(n26) );
  OAI2BB1X1M U52 ( .A0N(n25), .A1N(i_div_ratio[3]), .B0(n26), .Y(N12) );
  NOR2X1M U53 ( .A(n26), .B(i_div_ratio[4]), .Y(n27) );
  AO21XLM U54 ( .A0(n26), .A1(i_div_ratio[4]), .B0(n27), .Y(N13) );
  CLKNAND2X2M U55 ( .A(n27), .B(n30), .Y(n28) );
  OAI21X1M U56 ( .A0(n27), .A1(n30), .B0(n28), .Y(N14) );
  XNOR2X1M U57 ( .A(i_div_ratio[6]), .B(n28), .Y(N15) );
  NOR2X1M U58 ( .A(i_div_ratio[6]), .B(n28), .Y(n29) );
  CLKXOR2X2M U59 ( .A(i_div_ratio[7]), .B(n29), .Y(N16) );
  NOR2BX1M U60 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n31) );
  OAI2B2X1M U61 ( .A1N(i_div_ratio[2]), .A0(n31), .B0(counter[1]), .B1(n31), 
        .Y(n35) );
  XNOR2X1M U62 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n34) );
  NOR2BX1M U63 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n32) );
  OAI2B2X1M U64 ( .A1N(counter[1]), .A0(n32), .B0(i_div_ratio[2]), .B1(n32), 
        .Y(n33) );
  NAND4BX1M U65 ( .AN(counter[7]), .B(n35), .C(n34), .D(n33), .Y(n41) );
  XNOR2X1M U66 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n39) );
  XNOR2X1M U67 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n38) );
  XNOR2X1M U68 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n37) );
  XNOR2X1M U69 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n36) );
  NAND4X1M U70 ( .A(n39), .B(n38), .C(n37), .D(n36), .Y(n40) );
  NOR2X1M U71 ( .A(n41), .B(n40), .Y(N6) );
endmodule



    module SYS_CTRL_OPERANDS_WIDTH8_ALU_OUT_WIDTH16_ALU_FUNC_WIDTH4_REG_WIDTH8_ADDR_WIDTH4_UART_DATA_WIDTH8_test_1 ( 
        clk, rst_n, ALU_out, ALU_out_valid, ALU_func, ALU_en, clk_en, RD_data, 
        RD_valid, WR_data_regfile, addr, WR_en_regfile, RD_en_regfile, 
        fifo_full_flag, WR_data_fifo, WR_inc_fifo, rx_data, rx_data_valid, 
        clk_div_en, test_si, test_so, test_se );
  input [15:0] ALU_out;
  output [3:0] ALU_func;
  input [7:0] RD_data;
  output [7:0] WR_data_regfile;
  output [3:0] addr;
  output [7:0] WR_data_fifo;
  input [7:0] rx_data;
  input clk, rst_n, ALU_out_valid, RD_valid, fifo_full_flag, rx_data_valid,
         test_si, test_se;
  output ALU_en, clk_en, WR_en_regfile, RD_en_regfile, WR_inc_fifo, clk_div_en,
         test_so;
  wire   ALU_part, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n36, n37, n38, n39, n42, n52, n53, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n76, n78, n80, n82,
         n84, n86, n88, n90, n92, n94, n96, n98, n100, n102, n104, n107, n109,
         n111, n113, n119, n122, n13, n16, n17, n32, n33, n34, n35, n40, n41,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n55, n120, n121, n123,
         n124, n125, n126, n129, n130;
  wire   [3:0] cs;
  wire   [3:0] ns;
  wire   [3:0] addr_reg;
  wire   [15:0] ALU_out_lat;
  assign clk_div_en = 1'b1;
  assign test_so = n72;

  SDFFRQX1M \ALU_out_lat_reg[15]  ( .D(n104), .SI(ALU_out_lat[14]), .SE(
        test_se), .CK(clk), .RN(n16), .Q(ALU_out_lat[15]) );
  SDFFRQX1M \ALU_out_lat_reg[14]  ( .D(n102), .SI(ALU_out_lat[13]), .SE(
        test_se), .CK(clk), .RN(n16), .Q(ALU_out_lat[14]) );
  SDFFRQX1M \ALU_out_lat_reg[13]  ( .D(n100), .SI(ALU_out_lat[12]), .SE(
        test_se), .CK(clk), .RN(n16), .Q(ALU_out_lat[13]) );
  SDFFRQX1M \ALU_out_lat_reg[12]  ( .D(n98), .SI(ALU_out_lat[11]), .SE(test_se), .CK(clk), .RN(n16), .Q(ALU_out_lat[12]) );
  SDFFRQX1M \ALU_out_lat_reg[11]  ( .D(n96), .SI(ALU_out_lat[10]), .SE(test_se), .CK(clk), .RN(n16), .Q(ALU_out_lat[11]) );
  SDFFRQX1M \ALU_out_lat_reg[10]  ( .D(n94), .SI(ALU_out_lat[9]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[10]) );
  SDFFRQX1M \ALU_out_lat_reg[9]  ( .D(n92), .SI(ALU_out_lat[8]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[9]) );
  SDFFRQX1M \ALU_out_lat_reg[8]  ( .D(n90), .SI(ALU_out_lat[7]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[8]) );
  SDFFRQX1M \ALU_out_lat_reg[7]  ( .D(n88), .SI(ALU_out_lat[6]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[7]) );
  SDFFRQX1M \ALU_out_lat_reg[6]  ( .D(n86), .SI(ALU_out_lat[5]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[6]) );
  SDFFRQX1M \ALU_out_lat_reg[5]  ( .D(n84), .SI(ALU_out_lat[4]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[5]) );
  SDFFRQX1M \ALU_out_lat_reg[4]  ( .D(n82), .SI(ALU_out_lat[3]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[4]) );
  SDFFRQX1M \ALU_out_lat_reg[3]  ( .D(n80), .SI(ALU_out_lat[2]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[3]) );
  SDFFRQX1M \ALU_out_lat_reg[2]  ( .D(n78), .SI(ALU_out_lat[1]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[2]) );
  SDFFRQX1M \ALU_out_lat_reg[1]  ( .D(n76), .SI(ALU_out_lat[0]), .SE(test_se), 
        .CK(clk), .RN(n16), .Q(ALU_out_lat[1]) );
  SDFFRQX1M \ALU_out_lat_reg[0]  ( .D(n74), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(n16), .Q(ALU_out_lat[0]) );
  SDFFRQX1M \addr_reg_reg[0]  ( .D(n113), .SI(ALU_part), .SE(test_se), .CK(clk), .RN(n16), .Q(addr_reg[0]) );
  SDFFRQX1M \addr_reg_reg[3]  ( .D(n111), .SI(addr_reg[2]), .SE(test_se), .CK(
        clk), .RN(n16), .Q(addr_reg[3]) );
  SDFFRQX1M \addr_reg_reg[2]  ( .D(n109), .SI(addr_reg[1]), .SE(test_se), .CK(
        clk), .RN(n16), .Q(addr_reg[2]) );
  SDFFRQX1M \addr_reg_reg[1]  ( .D(n107), .SI(addr_reg[0]), .SE(test_se), .CK(
        clk), .RN(n16), .Q(addr_reg[1]) );
  SDFFRX1M op_sel_reg ( .D(n122), .SI(cs[3]), .SE(test_se), .CK(clk), .RN(n16), 
        .Q(n72), .QN(n13) );
  SDFFRQX1M ALU_part_reg ( .D(n119), .SI(ALU_out_lat[15]), .SE(test_se), .CK(
        clk), .RN(n16), .Q(ALU_part) );
  SDFFRQX1M \cs_reg[0]  ( .D(ns[0]), .SI(addr_reg[3]), .SE(test_se), .CK(clk), 
        .RN(n16), .Q(cs[0]) );
  SDFFRQX1M \cs_reg[3]  ( .D(ns[3]), .SI(cs[2]), .SE(test_se), .CK(clk), .RN(
        n16), .Q(cs[3]) );
  SDFFRQX1M \cs_reg[2]  ( .D(ns[2]), .SI(cs[1]), .SE(test_se), .CK(clk), .RN(
        n16), .Q(cs[2]) );
  SDFFRQX1M \cs_reg[1]  ( .D(ns[1]), .SI(cs[0]), .SE(test_se), .CK(clk), .RN(
        n16), .Q(cs[1]) );
  OAI221X1M U3 ( .A0(n57), .A1(n123), .B0(n47), .B1(n11), .C0(n1), .Y(addr[0])
         );
  OAI22X1M U4 ( .A0(n44), .A1(n11), .B0(n57), .B1(n124), .Y(addr[3]) );
  OAI22X1M U5 ( .A0(n45), .A1(n11), .B0(n57), .B1(n125), .Y(addr[2]) );
  OAI22X1M U6 ( .A0(n46), .A1(n11), .B0(n57), .B1(n126), .Y(addr[1]) );
  NOR2X2M U7 ( .A(n44), .B(n2), .Y(ALU_func[3]) );
  NOR2X2M U8 ( .A(n46), .B(n2), .Y(ALU_func[1]) );
  NOR2BX2M U9 ( .AN(rx_data_valid), .B(n28), .Y(n21) );
  INVX2M U10 ( .A(n33), .Y(WR_inc_fifo) );
  INVX2M U11 ( .A(n17), .Y(n16) );
  AND3X2M U12 ( .A(n8), .B(n1), .C(n59), .Y(n61) );
  OAI32X1M U13 ( .A0(n51), .A1(fifo_full_flag), .A2(n33), .B0(n53), .B1(n50), 
        .Y(n119) );
  INVX2M U14 ( .A(n24), .Y(n51) );
  NOR3X2M U15 ( .A(n32), .B(fifo_full_flag), .C(n13), .Y(n53) );
  NOR3X2M U16 ( .A(n35), .B(n44), .C(n7), .Y(n37) );
  NOR2X2M U17 ( .A(n61), .B(n47), .Y(WR_data_regfile[0]) );
  NOR2X2M U18 ( .A(n61), .B(n46), .Y(WR_data_regfile[1]) );
  NOR2X2M U19 ( .A(n61), .B(n45), .Y(WR_data_regfile[2]) );
  NOR2X2M U20 ( .A(n61), .B(n44), .Y(WR_data_regfile[3]) );
  NOR2X2M U21 ( .A(n61), .B(n43), .Y(WR_data_regfile[4]) );
  NOR2X2M U22 ( .A(n61), .B(n41), .Y(WR_data_regfile[5]) );
  NOR2X2M U23 ( .A(n61), .B(n40), .Y(WR_data_regfile[6]) );
  NOR2X2M U24 ( .A(n61), .B(n35), .Y(WR_data_regfile[7]) );
  NOR2X2M U25 ( .A(n50), .B(n13), .Y(n64) );
  OAI22X1M U26 ( .A0(n21), .A1(n126), .B0(n46), .B1(n48), .Y(n107) );
  OAI22X1M U27 ( .A0(n21), .A1(n125), .B0(n45), .B1(n48), .Y(n109) );
  OAI22X1M U28 ( .A0(n21), .A1(n124), .B0(n44), .B1(n48), .Y(n111) );
  OAI22X1M U29 ( .A0(n21), .A1(n123), .B0(n47), .B1(n48), .Y(n113) );
  AND3X2M U30 ( .A(n19), .B(n28), .C(n59), .Y(n57) );
  NOR2X2M U31 ( .A(n47), .B(n2), .Y(ALU_func[0]) );
  NOR2X2M U32 ( .A(n45), .B(n2), .Y(ALU_func[2]) );
  NAND3X2M U33 ( .A(n55), .B(n121), .C(n42), .Y(n7) );
  NAND3X2M U34 ( .A(n55), .B(n121), .C(n58), .Y(n28) );
  INVX2M U35 ( .A(n21), .Y(n48) );
  NAND2X2M U36 ( .A(n62), .B(n120), .Y(n1) );
  INVX2M U37 ( .A(n9), .Y(n49) );
  INVX2M U38 ( .A(n11), .Y(RD_en_regfile) );
  BUFX2M U39 ( .A(n52), .Y(n32) );
  BUFX2M U40 ( .A(n52), .Y(n33) );
  NAND2X2M U41 ( .A(n22), .B(n23), .Y(n15) );
  OAI21X2M U42 ( .A0(n24), .A1(fifo_full_flag), .B0(WR_inc_fifo), .Y(n23) );
  INVX2M U43 ( .A(rst_n), .Y(n17) );
  NAND3X2M U44 ( .A(n5), .B(n32), .C(n2), .Y(clk_en) );
  OAI32X1M U45 ( .A0(rx_data[0]), .A1(rx_data[4]), .A2(n18), .B0(n7), .B1(n6), 
        .Y(n29) );
  NOR2X2M U46 ( .A(n13), .B(ALU_part), .Y(n24) );
  NAND2BX2M U47 ( .AN(n5), .B(ALU_out_valid), .Y(n9) );
  NOR2X2M U48 ( .A(n120), .B(cs[3]), .Y(n58) );
  NOR2X2M U49 ( .A(cs[0]), .B(cs[3]), .Y(n42) );
  NAND2X2M U50 ( .A(cs[0]), .B(n62), .Y(n2) );
  NAND3X2M U51 ( .A(n58), .B(n55), .C(cs[2]), .Y(n11) );
  NAND4X2M U52 ( .A(cs[1]), .B(cs[3]), .C(n120), .D(n121), .Y(n5) );
  OAI211X2M U53 ( .A0(RD_valid), .A1(n11), .B0(n22), .C0(n25), .Y(ns[0]) );
  AOI21X2M U54 ( .A0(rx_data_valid), .A1(n26), .B0(n27), .Y(n25) );
  AOI21X2M U55 ( .A0(n2), .A1(n28), .B0(rx_data_valid), .Y(n27) );
  NAND4BX1M U56 ( .AN(n29), .B(n1), .C(n10), .D(n19), .Y(n26) );
  INVX2M U57 ( .A(rx_data[0]), .Y(n47) );
  NOR2BX2M U58 ( .AN(rx_data_valid), .B(n2), .Y(ALU_en) );
  AND3X2M U59 ( .A(cs[3]), .B(n55), .C(n121), .Y(n62) );
  INVX2M U60 ( .A(rx_data[3]), .Y(n44) );
  INVX2M U61 ( .A(cs[2]), .Y(n121) );
  INVX2M U62 ( .A(cs[1]), .Y(n55) );
  NAND4X2M U63 ( .A(rx_data[5]), .B(rx_data[1]), .C(n36), .D(n37), .Y(n18) );
  NOR2X2M U64 ( .A(rx_data[6]), .B(rx_data[2]), .Y(n36) );
  INVX2M U65 ( .A(rx_data[2]), .Y(n45) );
  NOR2X2M U66 ( .A(n71), .B(n33), .Y(WR_data_fifo[0]) );
  AOI222X1M U67 ( .A0(RD_data[0]), .A1(n13), .B0(n64), .B1(ALU_out_lat[8]), 
        .C0(n24), .C1(ALU_out_lat[0]), .Y(n71) );
  NOR2X2M U68 ( .A(n70), .B(n32), .Y(WR_data_fifo[1]) );
  AOI222X1M U69 ( .A0(RD_data[1]), .A1(n13), .B0(n64), .B1(ALU_out_lat[9]), 
        .C0(n24), .C1(ALU_out_lat[1]), .Y(n70) );
  NOR2X2M U70 ( .A(n69), .B(n33), .Y(WR_data_fifo[2]) );
  AOI222X1M U71 ( .A0(RD_data[2]), .A1(n13), .B0(n64), .B1(ALU_out_lat[10]), 
        .C0(n24), .C1(ALU_out_lat[2]), .Y(n69) );
  NOR2X2M U72 ( .A(n68), .B(n32), .Y(WR_data_fifo[3]) );
  AOI222X1M U73 ( .A0(RD_data[3]), .A1(n13), .B0(n64), .B1(ALU_out_lat[11]), 
        .C0(n24), .C1(ALU_out_lat[3]), .Y(n68) );
  NOR2X2M U74 ( .A(n67), .B(n33), .Y(WR_data_fifo[4]) );
  AOI222X1M U75 ( .A0(RD_data[4]), .A1(n13), .B0(n64), .B1(ALU_out_lat[12]), 
        .C0(n24), .C1(ALU_out_lat[4]), .Y(n67) );
  NOR2X2M U76 ( .A(n66), .B(n32), .Y(WR_data_fifo[5]) );
  AOI222X1M U77 ( .A0(RD_data[5]), .A1(n13), .B0(n64), .B1(ALU_out_lat[13]), 
        .C0(n24), .C1(ALU_out_lat[5]), .Y(n66) );
  NOR2X2M U78 ( .A(n65), .B(n33), .Y(WR_data_fifo[6]) );
  AOI222X1M U79 ( .A0(RD_data[6]), .A1(n13), .B0(n64), .B1(ALU_out_lat[14]), 
        .C0(n24), .C1(ALU_out_lat[6]), .Y(n65) );
  NOR2X2M U80 ( .A(n63), .B(n32), .Y(WR_data_fifo[7]) );
  AOI222X1M U81 ( .A0(n130), .A1(n13), .B0(n64), .B1(ALU_out_lat[15]), .C0(n24), .C1(ALU_out_lat[7]), .Y(n63) );
  NAND3X2M U82 ( .A(n58), .B(n121), .C(cs[1]), .Y(n59) );
  NAND3X2M U83 ( .A(cs[1]), .B(n42), .C(cs[2]), .Y(n52) );
  NAND3X2M U84 ( .A(cs[1]), .B(n58), .C(cs[2]), .Y(n8) );
  INVX2M U85 ( .A(rx_data[1]), .Y(n46) );
  NAND3X2M U86 ( .A(n42), .B(n55), .C(cs[2]), .Y(n10) );
  INVX2M U87 ( .A(rx_data[4]), .Y(n43) );
  NAND4X2M U88 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(ns[2]) );
  AOI31X2M U89 ( .A0(n34), .A1(rx_data_valid), .A2(n14), .B0(n15), .Y(n12) );
  INVX2M U90 ( .A(n18), .Y(n34) );
  NOR2X2M U91 ( .A(n47), .B(n43), .Y(n14) );
  NAND3X2M U92 ( .A(n42), .B(n121), .C(cs[1]), .Y(n19) );
  OA22X2M U93 ( .A0(rx_data_valid), .A1(n8), .B0(n38), .B1(n39), .Y(n22) );
  NAND4X2M U94 ( .A(n47), .B(n46), .C(n43), .D(n41), .Y(n38) );
  NAND4X2M U95 ( .A(n37), .B(rx_data_valid), .C(rx_data[6]), .D(rx_data[2]), 
        .Y(n39) );
  NAND4BX1M U96 ( .AN(ALU_en), .B(n5), .C(n19), .D(n20), .Y(ns[1]) );
  AOI211X2M U97 ( .A0(RD_valid), .A1(RD_en_regfile), .B0(n15), .C0(n21), .Y(
        n20) );
  INVX2M U98 ( .A(rx_data[7]), .Y(n35) );
  NAND2X2M U99 ( .A(n30), .B(n31), .Y(n6) );
  NOR4X1M U100 ( .A(n44), .B(n43), .C(n40), .D(n35), .Y(n30) );
  NOR4X1M U101 ( .A(rx_data[5]), .B(rx_data[1]), .C(n47), .D(n45), .Y(n31) );
  INVX2M U102 ( .A(cs[0]), .Y(n120) );
  INVX2M U103 ( .A(rx_data[6]), .Y(n40) );
  INVX2M U104 ( .A(rx_data[5]), .Y(n41) );
  OAI2BB1X2M U105 ( .A0N(n10), .A1N(n72), .B0(n2), .Y(n122) );
  NAND3X2M U106 ( .A(n1), .B(n2), .C(n3), .Y(ns[3]) );
  AOI2BB2XLM U107 ( .B0(rx_data_valid), .B1(n4), .A0N(n5), .A1N(ALU_out_valid), 
        .Y(n3) );
  OAI21X2M U108 ( .A0(n6), .A1(n7), .B0(n8), .Y(n4) );
  INVX2M U109 ( .A(ALU_part), .Y(n50) );
  NAND2X2M U110 ( .A(n59), .B(n60), .Y(WR_en_regfile) );
  OAI2BB1X2M U111 ( .A0N(n8), .A1N(n1), .B0(rx_data_valid), .Y(n60) );
  AO22X1M U112 ( .A0(n9), .A1(ALU_out_lat[0]), .B0(ALU_out[0]), .B1(n49), .Y(
        n74) );
  AO22X1M U113 ( .A0(n9), .A1(ALU_out_lat[1]), .B0(ALU_out[1]), .B1(n49), .Y(
        n76) );
  AO22X1M U114 ( .A0(n9), .A1(ALU_out_lat[2]), .B0(ALU_out[2]), .B1(n49), .Y(
        n78) );
  AO22X1M U115 ( .A0(n9), .A1(ALU_out_lat[3]), .B0(ALU_out[3]), .B1(n49), .Y(
        n80) );
  AO22X1M U116 ( .A0(n9), .A1(ALU_out_lat[4]), .B0(ALU_out[4]), .B1(n49), .Y(
        n82) );
  AO22X1M U117 ( .A0(n9), .A1(ALU_out_lat[5]), .B0(ALU_out[5]), .B1(n49), .Y(
        n84) );
  AO22X1M U118 ( .A0(n9), .A1(ALU_out_lat[6]), .B0(ALU_out[6]), .B1(n49), .Y(
        n86) );
  AO22X1M U119 ( .A0(n9), .A1(ALU_out_lat[7]), .B0(ALU_out[7]), .B1(n49), .Y(
        n88) );
  AO22X1M U120 ( .A0(n9), .A1(ALU_out_lat[8]), .B0(ALU_out[8]), .B1(n49), .Y(
        n90) );
  AO22X1M U121 ( .A0(n9), .A1(ALU_out_lat[9]), .B0(ALU_out[9]), .B1(n49), .Y(
        n92) );
  AO22X1M U122 ( .A0(n9), .A1(ALU_out_lat[10]), .B0(ALU_out[10]), .B1(n49), 
        .Y(n94) );
  AO22X1M U123 ( .A0(n9), .A1(ALU_out_lat[11]), .B0(ALU_out[11]), .B1(n49), 
        .Y(n96) );
  AO22X1M U124 ( .A0(n9), .A1(ALU_out_lat[12]), .B0(ALU_out[12]), .B1(n49), 
        .Y(n98) );
  AO22X1M U125 ( .A0(n9), .A1(ALU_out_lat[13]), .B0(ALU_out[13]), .B1(n49), 
        .Y(n100) );
  AO22X1M U126 ( .A0(n9), .A1(ALU_out_lat[14]), .B0(ALU_out[14]), .B1(n49), 
        .Y(n102) );
  AO22X1M U127 ( .A0(n9), .A1(ALU_out_lat[15]), .B0(ALU_out[15]), .B1(n49), 
        .Y(n104) );
  INVX2M U128 ( .A(addr_reg[1]), .Y(n126) );
  INVX2M U155 ( .A(addr_reg[2]), .Y(n125) );
  INVX2M U156 ( .A(addr_reg[3]), .Y(n124) );
  INVX2M U157 ( .A(addr_reg[0]), .Y(n123) );
  INVXLM U158 ( .A(RD_data[7]), .Y(n129) );
  INVXLM U159 ( .A(n129), .Y(n130) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
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
  XNOR2X2M U9 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n19), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n19), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n19), .Y(n6) );
  NAND2X2M U19 ( .A(n8), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n9) );
  INVX2M U21 ( .A(n19), .Y(n8) );
  NAND2X2M U22 ( .A(n6), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U23 ( .A(a[1]), .Y(n10) );
  NAND2X2M U24 ( .A(n4), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U25 ( .A(a[0]), .Y(n11) );
  INVX2M U26 ( .A(b[5]), .Y(n14) );
  NAND2X2M U27 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U28 ( .A(a[6]), .Y(n1) );
  INVX2M U29 ( .A(b[6]), .Y(n13) );
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
  XNOR2X2M U2 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[7]), .Y(n3) );
  INVX2M U4 ( .A(B[5]), .Y(n5) );
  INVX2M U5 ( .A(B[6]), .Y(n4) );
  INVX2M U6 ( .A(B[0]), .Y(n10) );
  INVX2M U7 ( .A(B[2]), .Y(n8) );
  INVX2M U8 ( .A(B[3]), .Y(n7) );
  INVX2M U9 ( .A(B[4]), .Y(n6) );
  NAND2X2M U10 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U11 ( .A(B[1]), .Y(n9) );
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
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
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
  XNOR2X2M U4 ( .A(A[7]), .B(n2), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n2) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
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

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n8), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n7), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n4), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKXOR2X2M U10 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U12 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U13 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U14 ( .A(\ab[0][5] ), .Y(n21) );
  AND2X2M U15 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n11) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U17 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U18 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX2M U21 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U22 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U23 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U24 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  INVX2M U26 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U27 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(B[6]), .Y(n25) );
  INVX2M U41 ( .A(A[0]), .Y(n39) );
  INVX2M U42 ( .A(A[3]), .Y(n36) );
  INVX2M U43 ( .A(A[2]), .Y(n37) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(A[5]), .Y(n34) );
  INVX2M U46 ( .A(B[7]), .Y(n24) );
  INVX2M U47 ( .A(B[5]), .Y(n26) );
  INVX2M U48 ( .A(B[0]), .Y(n31) );
  INVX2M U49 ( .A(B[2]), .Y(n29) );
  INVX2M U50 ( .A(B[1]), .Y(n30) );
  INVX2M U51 ( .A(B[3]), .Y(n28) );
  INVX2M U52 ( .A(B[4]), .Y(n27) );
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
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , 
        \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, 
        n11, n16, n14, n15, n13, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_test_1 ( A, B, ALU_FUN, 
        clk, rst_n, enable, ALU_OUT, out_valid, test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, rst_n, enable, test_si, test_se;
  output out_valid;
  wire   out_valid_comb, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N128, N129, N130, N131, N132, N133, N134, N135, N176,
         N177, N178, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169;
  wire   [15:0] ALU_OUT_comb;

  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_comb[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(ALU_OUT[0]) );
  SDFFRQX2M out_valid_reg ( .D(out_valid_comb), .SI(ALU_OUT[15]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(out_valid) );
  BUFX2M U8 ( .A(ALU_FUN[0]), .Y(n3) );
  BUFX2M U23 ( .A(ALU_FUN[2]), .Y(n4) );
  BUFX2M U24 ( .A(A[6]), .Y(n31) );
  BUFX2M U25 ( .A(A[7]), .Y(n32) );
  INVX2M U26 ( .A(n72), .Y(n148) );
  OAI21X2M U27 ( .A0(n154), .A1(n132), .B0(n133), .Y(n71) );
  NOR3X2M U28 ( .A(n153), .B(n154), .C(n150), .Y(n52) );
  NAND2X2M U29 ( .A(n52), .B(n155), .Y(n72) );
  AND3X2M U30 ( .A(n131), .B(n153), .C(n150), .Y(n73) );
  INVX2M U31 ( .A(n127), .Y(n151) );
  BUFX2M U32 ( .A(n70), .Y(n33) );
  NOR2BX2M U33 ( .AN(n131), .B(n132), .Y(n70) );
  OAI2BB1X2M U34 ( .A0N(N120), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[9]) );
  OAI2BB1X2M U35 ( .A0N(N121), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[10]) );
  OAI2BB1X2M U36 ( .A0N(N122), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[11]) );
  OAI2BB1X2M U37 ( .A0N(N123), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[12]) );
  OAI2BB1X2M U38 ( .A0N(N124), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[13]) );
  OAI2BB1X2M U39 ( .A0N(N125), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[14]) );
  OAI2BB1X2M U40 ( .A0N(N126), .A1N(n53), .B0(n54), .Y(ALU_OUT_comb[15]) );
  NOR3X2M U41 ( .A(n154), .B(n3), .C(n132), .Y(n63) );
  NOR4X1M U42 ( .A(n150), .B(n3), .C(ALU_FUN[1]), .D(n4), .Y(n68) );
  AOI211X2M U43 ( .A0(N110), .A1(n73), .B0(n152), .C0(n71), .Y(n55) );
  NOR4X1M U44 ( .A(n3), .B(ALU_FUN[1]), .C(n4), .D(ALU_FUN[3]), .Y(n59) );
  OAI21X2M U45 ( .A0(ALU_FUN[1]), .A1(n132), .B0(n133), .Y(n69) );
  NOR3X2M U46 ( .A(n4), .B(ALU_FUN[3]), .C(n154), .Y(n134) );
  NOR4X1M U47 ( .A(n128), .B(n154), .C(n4), .D(n3), .Y(n123) );
  NAND2X2M U48 ( .A(N176), .B(ALU_FUN[3]), .Y(n128) );
  NOR2BX2M U49 ( .AN(n134), .B(n3), .Y(n58) );
  NOR2X2M U50 ( .A(n155), .B(ALU_FUN[1]), .Y(n131) );
  NAND3X2M U51 ( .A(ALU_FUN[3]), .B(n4), .C(n131), .Y(n79) );
  OAI22X1M U52 ( .A0(n79), .A1(n166), .B0(n72), .B1(n168), .Y(n107) );
  OAI22X1M U53 ( .A0(n79), .A1(n165), .B0(n72), .B1(n167), .Y(n100) );
  OAI22X1M U54 ( .A0(n164), .A1(n79), .B0(n72), .B1(n166), .Y(n93) );
  OAI22X1M U55 ( .A0(n163), .A1(n79), .B0(n72), .B1(n165), .Y(n86) );
  OAI22X1M U56 ( .A0(n162), .A1(n79), .B0(n72), .B1(n164), .Y(n78) );
  INVX2M U57 ( .A(ALU_FUN[1]), .Y(n154) );
  INVX2M U58 ( .A(ALU_FUN[3]), .Y(n150) );
  NAND3X2M U59 ( .A(ALU_FUN[3]), .B(n153), .C(n131), .Y(n133) );
  NAND2X2M U60 ( .A(n134), .B(n3), .Y(n127) );
  NAND2X2M U61 ( .A(n4), .B(n150), .Y(n132) );
  AND4X2M U62 ( .A(N178), .B(ALU_FUN[3]), .C(n124), .D(n4), .Y(n115) );
  NOR2X2M U63 ( .A(ALU_FUN[1]), .B(n3), .Y(n124) );
  NOR2BX2M U64 ( .AN(n58), .B(n156), .Y(n53) );
  AOI21X2M U65 ( .A0(n3), .A1(n52), .B0(n156), .Y(out_valid_comb) );
  OR2X2M U66 ( .A(n55), .B(n156), .Y(n54) );
  INVX2M U67 ( .A(n4), .Y(n153) );
  INVX2M U68 ( .A(n3), .Y(n155) );
  OAI222X1M U69 ( .A0(n72), .A1(n169), .B0(n116), .B1(n161), .C0(n79), .C1(
        n167), .Y(n114) );
  AOI221XLM U70 ( .A0(n68), .A1(n168), .B0(n9), .B1(n69), .C0(n33), .Y(n116)
         );
  OAI221X1M U71 ( .A0(n7), .A1(n65), .B0(n66), .B1(n157), .C0(n67), .Y(n64) );
  INVX2M U72 ( .A(n7), .Y(n157) );
  AOI221XLM U73 ( .A0(n68), .A1(n32), .B0(n71), .B1(n162), .C0(n63), .Y(n65)
         );
  AOI221XLM U74 ( .A0(n68), .A1(n162), .B0(n32), .B1(n69), .C0(n33), .Y(n66)
         );
  OAI221X1M U75 ( .A0(n5), .A1(n87), .B0(n88), .B1(n158), .C0(n67), .Y(n85) );
  INVX2M U76 ( .A(n5), .Y(n158) );
  AOI221XLM U77 ( .A0(n30), .A1(n68), .B0(n71), .B1(n164), .C0(n63), .Y(n87)
         );
  AOI221XLM U78 ( .A0(n68), .A1(n164), .B0(n30), .B1(n69), .C0(n33), .Y(n88)
         );
  OAI221X1M U79 ( .A0(n6), .A1(n80), .B0(n81), .B1(n147), .C0(n67), .Y(n77) );
  AOI221XLM U80 ( .A0(n31), .A1(n68), .B0(n71), .B1(n163), .C0(n63), .Y(n80)
         );
  AOI221XLM U81 ( .A0(n68), .A1(n163), .B0(n31), .B1(n69), .C0(n33), .Y(n81)
         );
  AOI32X1M U82 ( .A0(N177), .A1(n3), .A2(n117), .B0(n149), .B1(n161), .Y(n113)
         );
  INVX2M U83 ( .A(n118), .Y(n149) );
  NOR3X2M U84 ( .A(n150), .B(n4), .C(n154), .Y(n117) );
  AOI221XLM U85 ( .A0(n168), .A1(n71), .B0(n68), .B1(n9), .C0(n63), .Y(n118)
         );
  INVX2M U86 ( .A(n45), .Y(n146) );
  AOI31X2M U87 ( .A0(n60), .A1(n61), .A2(n62), .B0(n156), .Y(ALU_OUT_comb[7])
         );
  AOI22X1M U88 ( .A0(N109), .A1(n73), .B0(N100), .B1(n59), .Y(n60) );
  AOI221XLM U89 ( .A0(n31), .A1(n148), .B0(n63), .B1(n162), .C0(n64), .Y(n62)
         );
  AOI222X1M U90 ( .A0(N118), .A1(n58), .B0(n33), .B1(n32), .C0(N135), .C1(n151), .Y(n61) );
  AOI31X2M U91 ( .A0(n103), .A1(n104), .A2(n105), .B0(n156), .Y(
        ALU_OUT_comb[2]) );
  AOI22X1M U92 ( .A0(N104), .A1(n73), .B0(N95), .B1(n59), .Y(n103) );
  AOI211X2M U93 ( .A0(n63), .A1(n167), .B0(n106), .C0(n107), .Y(n105) );
  AOI222X1M U94 ( .A0(N113), .A1(n58), .B0(n27), .B1(n33), .C0(N130), .C1(n151), .Y(n104) );
  AOI31X2M U95 ( .A0(n96), .A1(n97), .A2(n98), .B0(n156), .Y(ALU_OUT_comb[3])
         );
  AOI22X1M U96 ( .A0(N105), .A1(n73), .B0(N96), .B1(n59), .Y(n96) );
  AOI211X2M U97 ( .A0(n63), .A1(n166), .B0(n99), .C0(n100), .Y(n98) );
  AOI222X1M U98 ( .A0(N114), .A1(n58), .B0(n28), .B1(n33), .C0(N131), .C1(n151), .Y(n97) );
  AOI31X2M U99 ( .A0(n89), .A1(n90), .A2(n91), .B0(n156), .Y(ALU_OUT_comb[4])
         );
  AOI22X1M U100 ( .A0(N106), .A1(n73), .B0(N97), .B1(n59), .Y(n89) );
  AOI211X2M U101 ( .A0(n63), .A1(n165), .B0(n92), .C0(n93), .Y(n91) );
  AOI222X1M U102 ( .A0(N115), .A1(n58), .B0(n29), .B1(n33), .C0(N132), .C1(
        n151), .Y(n90) );
  AOI31X2M U103 ( .A0(n82), .A1(n83), .A2(n84), .B0(n156), .Y(ALU_OUT_comb[5])
         );
  AOI22X1M U104 ( .A0(N107), .A1(n73), .B0(N98), .B1(n59), .Y(n82) );
  AOI211X2M U105 ( .A0(n63), .A1(n164), .B0(n85), .C0(n86), .Y(n84) );
  AOI222X1M U106 ( .A0(N116), .A1(n58), .B0(n30), .B1(n33), .C0(N133), .C1(
        n151), .Y(n83) );
  AOI31X2M U107 ( .A0(n74), .A1(n75), .A2(n76), .B0(n156), .Y(ALU_OUT_comb[6])
         );
  AOI22X1M U108 ( .A0(N108), .A1(n73), .B0(N99), .B1(n59), .Y(n74) );
  AOI211X2M U109 ( .A0(n63), .A1(n163), .B0(n77), .C0(n78), .Y(n76) );
  AOI222X1M U110 ( .A0(N117), .A1(n58), .B0(n33), .B1(n31), .C0(N134), .C1(
        n151), .Y(n75) );
  AOI31X2M U111 ( .A0(n119), .A1(n120), .A2(n121), .B0(n156), .Y(
        ALU_OUT_comb[0]) );
  NOR4X1M U112 ( .A(n122), .B(n123), .C(n152), .D(n115), .Y(n121) );
  AOI222X1M U113 ( .A0(N128), .A1(n151), .B0(n63), .B1(n169), .C0(n8), .C1(n33), .Y(n120) );
  AOI222X1M U114 ( .A0(N93), .A1(n59), .B0(N111), .B1(n58), .C0(N102), .C1(n73), .Y(n119) );
  AOI31X2M U115 ( .A0(n110), .A1(n111), .A2(n112), .B0(n156), .Y(
        ALU_OUT_comb[1]) );
  NOR4BX1M U116 ( .AN(n113), .B(n114), .C(n152), .D(n115), .Y(n112) );
  AOI222X1M U117 ( .A0(N129), .A1(n151), .B0(n63), .B1(n168), .C0(n9), .C1(n33), .Y(n111) );
  AOI222X1M U118 ( .A0(N94), .A1(n59), .B0(N112), .B1(n58), .C0(N103), .C1(n73), .Y(n110) );
  AOI31X2M U119 ( .A0(n55), .A1(n56), .A2(n57), .B0(n156), .Y(ALU_OUT_comb[8])
         );
  NAND2X2M U120 ( .A(N101), .B(n59), .Y(n56) );
  AOI22X1M U121 ( .A0(n32), .A1(n148), .B0(N119), .B1(n58), .Y(n57) );
  INVX2M U122 ( .A(enable), .Y(n156) );
  INVX2M U123 ( .A(n142), .Y(N177) );
  INVX2M U124 ( .A(n6), .Y(n147) );
  INVX2M U125 ( .A(n67), .Y(n152) );
  INVX2M U126 ( .A(n30), .Y(n164) );
  INVX2M U127 ( .A(n28), .Y(n166) );
  INVX2M U128 ( .A(n29), .Y(n165) );
  INVX2M U129 ( .A(n9), .Y(n168) );
  INVX2M U130 ( .A(n27), .Y(n167) );
  INVX2M U131 ( .A(n31), .Y(n163) );
  INVX2M U132 ( .A(n32), .Y(n162) );
  INVX2M U133 ( .A(n8), .Y(n169) );
  OAI222X1M U134 ( .A0(n129), .A1(n143), .B0(B[0]), .B1(n130), .C0(n79), .C1(
        n168), .Y(n122) );
  AOI221XLM U135 ( .A0(n8), .A1(n68), .B0(n71), .B1(n169), .C0(n63), .Y(n130)
         );
  AOI221XLM U136 ( .A0(n68), .A1(n169), .B0(n8), .B1(n69), .C0(n33), .Y(n129)
         );
  OAI221X1M U137 ( .A0(B[2]), .A1(n108), .B0(n109), .B1(n145), .C0(n67), .Y(
        n106) );
  AOI221XLM U138 ( .A0(n27), .A1(n68), .B0(n71), .B1(n167), .C0(n63), .Y(n108)
         );
  AOI221XLM U139 ( .A0(n68), .A1(n167), .B0(n27), .B1(n69), .C0(n33), .Y(n109)
         );
  OAI221X1M U140 ( .A0(B[3]), .A1(n101), .B0(n102), .B1(n160), .C0(n67), .Y(
        n99) );
  AOI221XLM U141 ( .A0(n28), .A1(n68), .B0(n71), .B1(n166), .C0(n63), .Y(n101)
         );
  AOI221XLM U142 ( .A0(n68), .A1(n166), .B0(n28), .B1(n69), .C0(n33), .Y(n102)
         );
  OAI221X1M U143 ( .A0(B[4]), .A1(n94), .B0(n95), .B1(n159), .C0(n67), .Y(n92)
         );
  AOI221XLM U144 ( .A0(n29), .A1(n68), .B0(n71), .B1(n165), .C0(n63), .Y(n94)
         );
  AOI221XLM U145 ( .A0(n68), .A1(n165), .B0(n29), .B1(n69), .C0(n33), .Y(n95)
         );
  INVX2M U146 ( .A(n34), .Y(n144) );
  NAND4X2M U147 ( .A(n160), .B(n159), .C(n125), .D(n126), .Y(n67) );
  NOR4X1M U148 ( .A(B[2]), .B(B[1]), .C(B[0]), .D(n127), .Y(n126) );
  NOR3X2M U149 ( .A(n5), .B(n7), .C(n6), .Y(n125) );
  BUFX2M U150 ( .A(A[1]), .Y(n9) );
  BUFX2M U151 ( .A(A[0]), .Y(n8) );
  BUFX2M U152 ( .A(B[6]), .Y(n6) );
  BUFX2M U153 ( .A(A[2]), .Y(n27) );
  BUFX2M U154 ( .A(A[3]), .Y(n28) );
  BUFX2M U155 ( .A(A[4]), .Y(n29) );
  BUFX2M U156 ( .A(A[5]), .Y(n30) );
  BUFX2M U157 ( .A(B[7]), .Y(n7) );
  INVX2M U158 ( .A(B[3]), .Y(n160) );
  BUFX2M U159 ( .A(B[5]), .Y(n5) );
  INVX2M U160 ( .A(B[4]), .Y(n159) );
  INVX2M U161 ( .A(B[0]), .Y(n143) );
  INVX2M U162 ( .A(B[1]), .Y(n161) );
  INVX2M U163 ( .A(B[2]), .Y(n145) );
  NOR2X1M U164 ( .A(n162), .B(n7), .Y(n139) );
  NAND2BX1M U165 ( .AN(B[4]), .B(n29), .Y(n49) );
  NAND2BX1M U166 ( .AN(n29), .B(B[4]), .Y(n38) );
  CLKNAND2X2M U167 ( .A(n49), .B(n38), .Y(n51) );
  NOR2X1M U168 ( .A(n160), .B(n28), .Y(n46) );
  NOR2X1M U169 ( .A(n145), .B(n27), .Y(n37) );
  NOR2X1M U170 ( .A(n143), .B(n8), .Y(n34) );
  CLKNAND2X2M U171 ( .A(n27), .B(n145), .Y(n48) );
  NAND2BX1M U172 ( .AN(n37), .B(n48), .Y(n43) );
  AOI21X1M U173 ( .A0(n34), .A1(n168), .B0(B[1]), .Y(n35) );
  AOI211X1M U174 ( .A0(n9), .A1(n144), .B0(n43), .C0(n35), .Y(n36) );
  CLKNAND2X2M U175 ( .A(n28), .B(n160), .Y(n47) );
  OAI31X1M U176 ( .A0(n46), .A1(n37), .A2(n36), .B0(n47), .Y(n39) );
  NAND2BX1M U177 ( .AN(n30), .B(n5), .Y(n137) );
  OAI211X1M U178 ( .A0(n51), .A1(n39), .B0(n38), .C0(n137), .Y(n40) );
  NAND2BX1M U179 ( .AN(n5), .B(n30), .Y(n50) );
  XNOR2X1M U180 ( .A(n31), .B(n6), .Y(n136) );
  AOI32X1M U181 ( .A0(n40), .A1(n50), .A2(n136), .B0(n6), .B1(n163), .Y(n41)
         );
  CLKNAND2X2M U182 ( .A(n7), .B(n162), .Y(n140) );
  OAI21X1M U183 ( .A0(n139), .A1(n41), .B0(n140), .Y(N178) );
  CLKNAND2X2M U184 ( .A(n8), .B(n143), .Y(n44) );
  OA21X1M U185 ( .A0(n44), .A1(n168), .B0(B[1]), .Y(n42) );
  AOI211X1M U186 ( .A0(n44), .A1(n168), .B0(n43), .C0(n42), .Y(n45) );
  AOI31X1M U187 ( .A0(n146), .A1(n48), .A2(n47), .B0(n46), .Y(n135) );
  OAI2B11X1M U188 ( .A1N(n135), .A0(n51), .B0(n50), .C0(n49), .Y(n138) );
  AOI32X1M U189 ( .A0(n138), .A1(n137), .A2(n136), .B0(n31), .B1(n147), .Y(
        n141) );
  AOI2B1X1M U190 ( .A1N(n141), .A0(n140), .B0(n139), .Y(n142) );
  NOR2X1M U191 ( .A(N178), .B(N177), .Y(N176) );
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW_div_uns_0 div_57 ( .a({
        n32, n31, n30, n29, n28, n27, n9, n8}), .b({n7, n6, n5, B[4:0]}), 
        .quotient({N135, N134, N133, N132, N131, N130, N129, N128}) );
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW01_sub_0 sub_43 ( .A({1'b0, 
        n32, n31, n30, n29, n28, n27, n9, n8}), .B({1'b0, n7, n6, n5, B[4:0]}), 
        .CI(1'b0), .DIFF({N110, N109, N108, N107, N106, N105, N104, N103, N102}) );
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW01_add_0 add_38 ( .A({1'b0, 
        n32, n31, n30, n29, n28, n27, n9, n8}), .B({1'b0, n7, n6, n5, B[4:0]}), 
        .CI(1'b0), .SUM({N101, N100, N99, N98, N97, N96, N95, N94, N93}) );
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_DW02_mult_0 mult_48 ( .A({
        n32, n31, n30, n29, n28, n27, n9, n8}), .B({n7, n6, n5, B[4:0]}), .TC(
        1'b0), .PRODUCT({N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111}) );
endmodule


module Register_File_WIDTH8_DEPTH16_test_1 ( WrData, Address, WrEn, RdEn, CLK, 
        RST, RdData, rd_valid, DIV_ratio, op_A, op_B, UART_CON, test_si3, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] DIV_ratio;
  output [7:0] op_A;
  output [7:0] op_B;
  output [7:0] UART_CON;
  input WrEn, RdEn, CLK, RST, test_si3, test_si2, test_si1, test_se;
  output rd_valid, test_so2, test_so1;
  wire   N11, N12, N13, N14, n452, \reg_file[15][7] , \reg_file[15][6] ,
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
         \reg_file[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n444, n445, n446, n447, n448, n449, n450, n451, n1;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \reg_file[15][7] ;

  SDFFRQX2M \reg_file_reg[15][7]  ( .D(n305), .SI(\reg_file[15][6] ), .SE(n447), .CK(CLK), .RN(n413), .Q(\reg_file[15][7] ) );
  SDFFRQX2M \reg_file_reg[15][6]  ( .D(n304), .SI(\reg_file[15][5] ), .SE(n450), .CK(CLK), .RN(n413), .Q(\reg_file[15][6] ) );
  SDFFRQX2M \reg_file_reg[15][5]  ( .D(n303), .SI(\reg_file[15][4] ), .SE(n449), .CK(CLK), .RN(n413), .Q(\reg_file[15][5] ) );
  SDFFRQX2M \reg_file_reg[15][4]  ( .D(n302), .SI(\reg_file[15][3] ), .SE(n448), .CK(CLK), .RN(n413), .Q(\reg_file[15][4] ) );
  SDFFRQX2M \reg_file_reg[15][3]  ( .D(n301), .SI(\reg_file[15][2] ), .SE(n447), .CK(CLK), .RN(n418), .Q(\reg_file[15][3] ) );
  SDFFRQX2M \reg_file_reg[15][2]  ( .D(n300), .SI(\reg_file[15][1] ), .SE(n450), .CK(CLK), .RN(n415), .Q(\reg_file[15][2] ) );
  SDFFRQX2M \reg_file_reg[15][1]  ( .D(n299), .SI(\reg_file[15][0] ), .SE(n449), .CK(CLK), .RN(n415), .Q(\reg_file[15][1] ) );
  SDFFRQX2M \reg_file_reg[15][0]  ( .D(n298), .SI(\reg_file[14][7] ), .SE(n448), .CK(CLK), .RN(n414), .Q(\reg_file[15][0] ) );
  SDFFRQX2M \reg_file_reg[13][7]  ( .D(n289), .SI(\reg_file[13][6] ), .SE(n447), .CK(CLK), .RN(n414), .Q(\reg_file[13][7] ) );
  SDFFRQX2M \reg_file_reg[13][6]  ( .D(n288), .SI(\reg_file[13][5] ), .SE(n450), .CK(CLK), .RN(n414), .Q(\reg_file[13][6] ) );
  SDFFRQX2M \reg_file_reg[13][5]  ( .D(n287), .SI(\reg_file[13][4] ), .SE(
        test_se), .CK(CLK), .RN(n414), .Q(\reg_file[13][5] ) );
  SDFFRQX1M \reg_file_reg[13][4]  ( .D(n286), .SI(\reg_file[13][3] ), .SE(n450), .CK(CLK), .RN(n416), .Q(\reg_file[13][4] ) );
  SDFFRQX1M \reg_file_reg[13][3]  ( .D(n285), .SI(\reg_file[13][2] ), .SE(n447), .CK(CLK), .RN(n416), .Q(\reg_file[13][3] ) );
  SDFFRQX1M \reg_file_reg[13][2]  ( .D(n284), .SI(\reg_file[13][1] ), .SE(n449), .CK(CLK), .RN(n415), .Q(\reg_file[13][2] ) );
  SDFFRQX1M \reg_file_reg[13][1]  ( .D(n283), .SI(\reg_file[13][0] ), .SE(n448), .CK(CLK), .RN(n415), .Q(\reg_file[13][1] ) );
  SDFFRQX1M \reg_file_reg[13][0]  ( .D(n282), .SI(\reg_file[12][7] ), .SE(n450), .CK(CLK), .RN(n415), .Q(\reg_file[13][0] ) );
  SDFFRQX1M \reg_file_reg[11][7]  ( .D(n273), .SI(\reg_file[11][6] ), .SE(n447), .CK(CLK), .RN(n415), .Q(\reg_file[11][7] ) );
  SDFFRQX1M \reg_file_reg[11][6]  ( .D(n272), .SI(\reg_file[11][5] ), .SE(n449), .CK(CLK), .RN(n417), .Q(\reg_file[11][6] ) );
  SDFFRQX1M \reg_file_reg[11][5]  ( .D(n271), .SI(\reg_file[11][4] ), .SE(n448), .CK(CLK), .RN(n417), .Q(\reg_file[11][5] ) );
  SDFFRQX1M \reg_file_reg[11][4]  ( .D(n270), .SI(\reg_file[11][3] ), .SE(n450), .CK(CLK), .RN(n416), .Q(\reg_file[11][4] ) );
  SDFFRQX1M \reg_file_reg[11][3]  ( .D(n269), .SI(\reg_file[11][2] ), .SE(n447), .CK(CLK), .RN(n416), .Q(\reg_file[11][3] ) );
  SDFFRQX1M \reg_file_reg[11][2]  ( .D(n268), .SI(\reg_file[11][1] ), .SE(n449), .CK(CLK), .RN(n416), .Q(\reg_file[11][2] ) );
  SDFFRQX1M \reg_file_reg[11][1]  ( .D(n267), .SI(\reg_file[11][0] ), .SE(n448), .CK(CLK), .RN(n416), .Q(\reg_file[11][1] ) );
  SDFFRQX1M \reg_file_reg[11][0]  ( .D(n266), .SI(test_si3), .SE(n450), .CK(
        CLK), .RN(n416), .Q(\reg_file[11][0] ) );
  SDFFRQX1M \reg_file_reg[9][7]  ( .D(n257), .SI(\reg_file[9][6] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\reg_file[9][7] ) );
  SDFFRQX1M \reg_file_reg[9][6]  ( .D(n256), .SI(\reg_file[9][5] ), .SE(n449), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][6] ) );
  SDFFRQX1M \reg_file_reg[9][5]  ( .D(n255), .SI(\reg_file[9][4] ), .SE(n448), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][5] ) );
  SDFFRQX1M \reg_file_reg[9][4]  ( .D(n254), .SI(\reg_file[9][3] ), .SE(n450), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][4] ) );
  SDFFRQX1M \reg_file_reg[9][3]  ( .D(n253), .SI(\reg_file[9][2] ), .SE(n447), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][3] ) );
  SDFFRQX1M \reg_file_reg[9][2]  ( .D(n252), .SI(\reg_file[9][1] ), .SE(n449), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][2] ) );
  SDFFRQX1M \reg_file_reg[9][1]  ( .D(n251), .SI(\reg_file[9][0] ), .SE(n448), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][1] ) );
  SDFFRQX1M \reg_file_reg[9][0]  ( .D(n250), .SI(\reg_file[8][7] ), .SE(n450), 
        .CK(CLK), .RN(n417), .Q(\reg_file[9][0] ) );
  SDFFRQX1M \reg_file_reg[7][7]  ( .D(n241), .SI(\reg_file[7][6] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\reg_file[7][7] ) );
  SDFFRQX1M \reg_file_reg[7][6]  ( .D(n240), .SI(\reg_file[7][5] ), .SE(n449), 
        .CK(CLK), .RN(n418), .Q(\reg_file[7][6] ) );
  SDFFRQX1M \reg_file_reg[7][5]  ( .D(n239), .SI(\reg_file[7][4] ), .SE(n448), 
        .CK(CLK), .RN(n418), .Q(\reg_file[7][5] ) );
  SDFFRQX1M \reg_file_reg[7][4]  ( .D(n238), .SI(\reg_file[7][3] ), .SE(n450), 
        .CK(CLK), .RN(n418), .Q(\reg_file[7][4] ) );
  SDFFRQX1M \reg_file_reg[7][3]  ( .D(n237), .SI(\reg_file[7][2] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\reg_file[7][3] ) );
  SDFFRQX1M \reg_file_reg[7][2]  ( .D(n236), .SI(\reg_file[7][1] ), .SE(n449), 
        .CK(CLK), .RN(n418), .Q(\reg_file[7][2] ) );
  SDFFRQX1M \reg_file_reg[7][1]  ( .D(n235), .SI(\reg_file[7][0] ), .SE(n448), 
        .CK(CLK), .RN(n418), .Q(\reg_file[7][1] ) );
  SDFFRQX1M \reg_file_reg[7][0]  ( .D(n234), .SI(\reg_file[6][7] ), .SE(n450), 
        .CK(CLK), .RN(n418), .Q(\reg_file[7][0] ) );
  SDFFRQX1M \reg_file_reg[5][7]  ( .D(n225), .SI(\reg_file[5][6] ), .SE(n447), 
        .CK(CLK), .RN(n419), .Q(\reg_file[5][7] ) );
  SDFFRQX1M \reg_file_reg[5][6]  ( .D(n224), .SI(\reg_file[5][5] ), .SE(n449), 
        .CK(CLK), .RN(n419), .Q(\reg_file[5][6] ) );
  SDFFRQX1M \reg_file_reg[5][5]  ( .D(n223), .SI(\reg_file[5][4] ), .SE(n448), 
        .CK(CLK), .RN(n419), .Q(\reg_file[5][5] ) );
  SDFFRQX1M \reg_file_reg[5][4]  ( .D(n222), .SI(\reg_file[5][3] ), .SE(n450), 
        .CK(CLK), .RN(n419), .Q(\reg_file[5][4] ) );
  SDFFRQX1M \reg_file_reg[5][3]  ( .D(n221), .SI(\reg_file[5][2] ), .SE(n447), 
        .CK(CLK), .RN(n419), .Q(\reg_file[5][3] ) );
  SDFFRQX1M \reg_file_reg[5][2]  ( .D(n220), .SI(\reg_file[5][1] ), .SE(n449), 
        .CK(CLK), .RN(n419), .Q(\reg_file[5][2] ) );
  SDFFRQX1M \reg_file_reg[5][1]  ( .D(n219), .SI(\reg_file[5][0] ), .SE(n448), 
        .CK(CLK), .RN(n419), .Q(\reg_file[5][1] ) );
  SDFFRQX1M \reg_file_reg[5][0]  ( .D(n218), .SI(\reg_file[4][7] ), .SE(n450), 
        .CK(CLK), .RN(n419), .Q(\reg_file[5][0] ) );
  SDFFRQX1M \reg_file_reg[14][7]  ( .D(n297), .SI(\reg_file[14][6] ), .SE(n447), .CK(CLK), .RN(n414), .Q(\reg_file[14][7] ) );
  SDFFRQX1M \reg_file_reg[14][6]  ( .D(n296), .SI(\reg_file[14][5] ), .SE(n449), .CK(CLK), .RN(n414), .Q(\reg_file[14][6] ) );
  SDFFRQX1M \reg_file_reg[14][5]  ( .D(n295), .SI(\reg_file[14][4] ), .SE(n448), .CK(CLK), .RN(n414), .Q(\reg_file[14][5] ) );
  SDFFRQX1M \reg_file_reg[14][4]  ( .D(n294), .SI(\reg_file[14][3] ), .SE(n450), .CK(CLK), .RN(n414), .Q(\reg_file[14][4] ) );
  SDFFRQX1M \reg_file_reg[14][3]  ( .D(n293), .SI(\reg_file[14][2] ), .SE(n447), .CK(CLK), .RN(n414), .Q(\reg_file[14][3] ) );
  SDFFRQX1M \reg_file_reg[14][2]  ( .D(n292), .SI(\reg_file[14][1] ), .SE(n449), .CK(CLK), .RN(n414), .Q(\reg_file[14][2] ) );
  SDFFRQX1M \reg_file_reg[14][1]  ( .D(n291), .SI(\reg_file[14][0] ), .SE(n448), .CK(CLK), .RN(n414), .Q(\reg_file[14][1] ) );
  SDFFRQX1M \reg_file_reg[14][0]  ( .D(n290), .SI(\reg_file[13][7] ), .SE(n450), .CK(CLK), .RN(n414), .Q(\reg_file[14][0] ) );
  SDFFRQX1M \reg_file_reg[12][7]  ( .D(n281), .SI(\reg_file[12][6] ), .SE(n447), .CK(CLK), .RN(n415), .Q(\reg_file[12][7] ) );
  SDFFRQX1M \reg_file_reg[12][6]  ( .D(n280), .SI(\reg_file[12][5] ), .SE(n449), .CK(CLK), .RN(n415), .Q(\reg_file[12][6] ) );
  SDFFRQX1M \reg_file_reg[12][5]  ( .D(n279), .SI(\reg_file[12][4] ), .SE(n448), .CK(CLK), .RN(n415), .Q(\reg_file[12][5] ) );
  SDFFRQX1M \reg_file_reg[12][4]  ( .D(n278), .SI(\reg_file[12][3] ), .SE(n450), .CK(CLK), .RN(n415), .Q(\reg_file[12][4] ) );
  SDFFRQX1M \reg_file_reg[12][3]  ( .D(n277), .SI(\reg_file[12][2] ), .SE(n447), .CK(CLK), .RN(n415), .Q(\reg_file[12][3] ) );
  SDFFRQX1M \reg_file_reg[12][2]  ( .D(n276), .SI(\reg_file[12][1] ), .SE(n449), .CK(CLK), .RN(n415), .Q(\reg_file[12][2] ) );
  SDFFRQX1M \reg_file_reg[12][1]  ( .D(n275), .SI(\reg_file[12][0] ), .SE(n448), .CK(CLK), .RN(n415), .Q(\reg_file[12][1] ) );
  SDFFRQX1M \reg_file_reg[12][0]  ( .D(n274), .SI(\reg_file[11][7] ), .SE(n450), .CK(CLK), .RN(n415), .Q(\reg_file[12][0] ) );
  SDFFRQX1M \reg_file_reg[10][7]  ( .D(n265), .SI(\reg_file[10][6] ), .SE(n447), .CK(CLK), .RN(n416), .Q(\reg_file[10][7] ) );
  SDFFRQX1M \reg_file_reg[10][6]  ( .D(n264), .SI(\reg_file[10][5] ), .SE(n449), .CK(CLK), .RN(n416), .Q(\reg_file[10][6] ) );
  SDFFRQX1M \reg_file_reg[10][5]  ( .D(n263), .SI(\reg_file[10][4] ), .SE(n448), .CK(CLK), .RN(n416), .Q(\reg_file[10][5] ) );
  SDFFRQX1M \reg_file_reg[10][4]  ( .D(n262), .SI(\reg_file[10][3] ), .SE(n450), .CK(CLK), .RN(n416), .Q(\reg_file[10][4] ) );
  SDFFRQX1M \reg_file_reg[10][3]  ( .D(n261), .SI(\reg_file[10][2] ), .SE(n447), .CK(CLK), .RN(n416), .Q(\reg_file[10][3] ) );
  SDFFRQX1M \reg_file_reg[10][2]  ( .D(n260), .SI(\reg_file[10][1] ), .SE(n449), .CK(CLK), .RN(n416), .Q(\reg_file[10][2] ) );
  SDFFRQX1M \reg_file_reg[10][1]  ( .D(n259), .SI(\reg_file[10][0] ), .SE(n448), .CK(CLK), .RN(n416), .Q(\reg_file[10][1] ) );
  SDFFRQX1M \reg_file_reg[10][0]  ( .D(n258), .SI(\reg_file[9][7] ), .SE(n450), 
        .CK(CLK), .RN(n418), .Q(\reg_file[10][0] ) );
  SDFFRQX1M \reg_file_reg[8][7]  ( .D(n249), .SI(\reg_file[8][6] ), .SE(n447), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][7] ) );
  SDFFRQX1M \reg_file_reg[8][6]  ( .D(n248), .SI(\reg_file[8][5] ), .SE(n449), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][6] ) );
  SDFFRQX1M \reg_file_reg[8][5]  ( .D(n247), .SI(\reg_file[8][4] ), .SE(n448), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][5] ) );
  SDFFRQX1M \reg_file_reg[8][4]  ( .D(n246), .SI(\reg_file[8][3] ), .SE(n450), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][4] ) );
  SDFFRQX1M \reg_file_reg[8][3]  ( .D(n245), .SI(\reg_file[8][2] ), .SE(n447), 
        .CK(CLK), .RN(n417), .Q(\reg_file[8][3] ) );
  SDFFRQX1M \reg_file_reg[8][2]  ( .D(n244), .SI(\reg_file[8][1] ), .SE(n449), 
        .CK(CLK), .RN(n419), .Q(\reg_file[8][2] ) );
  SDFFRQX1M \reg_file_reg[8][1]  ( .D(n243), .SI(\reg_file[8][0] ), .SE(n448), 
        .CK(CLK), .RN(n419), .Q(\reg_file[8][1] ) );
  SDFFRQX1M \reg_file_reg[8][0]  ( .D(n242), .SI(\reg_file[7][7] ), .SE(n450), 
        .CK(CLK), .RN(n418), .Q(\reg_file[8][0] ) );
  SDFFRQX1M \reg_file_reg[6][7]  ( .D(n233), .SI(\reg_file[6][6] ), .SE(n447), 
        .CK(CLK), .RN(n418), .Q(\reg_file[6][7] ) );
  SDFFRQX1M \reg_file_reg[6][6]  ( .D(n232), .SI(\reg_file[6][5] ), .SE(n449), 
        .CK(CLK), .RN(n418), .Q(\reg_file[6][6] ) );
  SDFFRQX1M \reg_file_reg[6][5]  ( .D(n231), .SI(\reg_file[6][4] ), .SE(n448), 
        .CK(CLK), .RN(n420), .Q(\reg_file[6][5] ) );
  SDFFRQX1M \reg_file_reg[6][4]  ( .D(n230), .SI(\reg_file[6][3] ), .SE(n450), 
        .CK(CLK), .RN(n420), .Q(\reg_file[6][4] ) );
  SDFFRQX1M \reg_file_reg[6][3]  ( .D(n229), .SI(\reg_file[6][2] ), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(\reg_file[6][3] ) );
  SDFFRQX1M \reg_file_reg[6][2]  ( .D(n228), .SI(\reg_file[6][1] ), .SE(n449), 
        .CK(CLK), .RN(n419), .Q(\reg_file[6][2] ) );
  SDFFRQX1M \reg_file_reg[6][1]  ( .D(n227), .SI(\reg_file[6][0] ), .SE(n448), 
        .CK(CLK), .RN(n419), .Q(\reg_file[6][1] ) );
  SDFFRQX1M \reg_file_reg[6][0]  ( .D(n226), .SI(\reg_file[5][7] ), .SE(n450), 
        .CK(CLK), .RN(n419), .Q(\reg_file[6][0] ) );
  SDFFRQX1M \reg_file_reg[4][7]  ( .D(n217), .SI(\reg_file[4][6] ), .SE(n447), 
        .CK(CLK), .RN(n421), .Q(\reg_file[4][7] ) );
  SDFFRQX1M \reg_file_reg[4][6]  ( .D(n216), .SI(\reg_file[4][5] ), .SE(n449), 
        .CK(CLK), .RN(n421), .Q(\reg_file[4][6] ) );
  SDFFRQX1M \reg_file_reg[4][5]  ( .D(n215), .SI(\reg_file[4][4] ), .SE(n448), 
        .CK(CLK), .RN(n421), .Q(\reg_file[4][5] ) );
  SDFFRQX1M \reg_file_reg[4][4]  ( .D(n214), .SI(\reg_file[4][3] ), .SE(n450), 
        .CK(CLK), .RN(n420), .Q(\reg_file[4][4] ) );
  SDFFRQX1M \reg_file_reg[4][3]  ( .D(n213), .SI(\reg_file[4][2] ), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(\reg_file[4][3] ) );
  SDFFRQX1M \reg_file_reg[4][2]  ( .D(n212), .SI(\reg_file[4][1] ), .SE(n449), 
        .CK(CLK), .RN(n420), .Q(\reg_file[4][2] ) );
  SDFFRQX1M \reg_file_reg[4][1]  ( .D(n211), .SI(\reg_file[4][0] ), .SE(n448), 
        .CK(CLK), .RN(n420), .Q(\reg_file[4][1] ) );
  SDFFRQX1M \reg_file_reg[4][0]  ( .D(n210), .SI(DIV_ratio[7]), .SE(n450), 
        .CK(CLK), .RN(n420), .Q(\reg_file[4][0] ) );
  SDFFRQX1M \RdData_reg[7]  ( .D(n313), .SI(RdData[6]), .SE(n447), .CK(CLK), 
        .RN(n422), .Q(n452) );
  SDFFRQX1M \RdData_reg[6]  ( .D(n312), .SI(RdData[5]), .SE(n449), .CK(CLK), 
        .RN(n414), .Q(RdData[6]) );
  SDFFRQX1M \RdData_reg[5]  ( .D(n311), .SI(RdData[4]), .SE(n448), .CK(CLK), 
        .RN(n414), .Q(RdData[5]) );
  SDFFRQX1M \RdData_reg[4]  ( .D(n310), .SI(RdData[3]), .SE(n450), .CK(CLK), 
        .RN(n413), .Q(RdData[4]) );
  SDFFRQX1M \RdData_reg[3]  ( .D(n309), .SI(RdData[2]), .SE(n447), .CK(CLK), 
        .RN(n413), .Q(RdData[3]) );
  SDFFRQX1M \RdData_reg[2]  ( .D(n308), .SI(RdData[1]), .SE(n449), .CK(CLK), 
        .RN(n413), .Q(RdData[2]) );
  SDFFRQX1M \RdData_reg[1]  ( .D(n307), .SI(RdData[0]), .SE(n448), .CK(CLK), 
        .RN(n413), .Q(RdData[1]) );
  SDFFRQX1M \RdData_reg[0]  ( .D(n306), .SI(test_si1), .SE(n450), .CK(CLK), 
        .RN(n413), .Q(RdData[0]) );
  SDFFRQX1M rd_valid_reg ( .D(n437), .SI(test_si2), .SE(n447), .CK(CLK), .RN(
        n419), .Q(rd_valid) );
  SDFFRQX1M \reg_file_reg[1][7]  ( .D(n193), .SI(op_B[6]), .SE(n449), .CK(CLK), 
        .RN(n421), .Q(op_B[7]) );
  SDFFRQX1M \reg_file_reg[1][6]  ( .D(n192), .SI(op_B[5]), .SE(n448), .CK(CLK), 
        .RN(n421), .Q(op_B[6]) );
  SDFFRQX1M \reg_file_reg[1][5]  ( .D(n191), .SI(op_B[4]), .SE(n450), .CK(CLK), 
        .RN(n421), .Q(op_B[5]) );
  SDFFRQX1M \reg_file_reg[0][7]  ( .D(n185), .SI(op_A[6]), .SE(n447), .CK(CLK), 
        .RN(n422), .Q(op_A[7]) );
  SDFFRQX1M \reg_file_reg[0][6]  ( .D(n184), .SI(op_A[5]), .SE(n449), .CK(CLK), 
        .RN(n421), .Q(op_A[6]) );
  SDFFRQX1M \reg_file_reg[0][5]  ( .D(n183), .SI(op_A[4]), .SE(n448), .CK(CLK), 
        .RN(n422), .Q(op_A[5]) );
  SDFFRQX1M \reg_file_reg[0][4]  ( .D(n182), .SI(op_A[3]), .SE(n450), .CK(CLK), 
        .RN(n422), .Q(op_A[4]) );
  SDFFRQX1M \reg_file_reg[0][3]  ( .D(n181), .SI(op_A[2]), .SE(n447), .CK(CLK), 
        .RN(n422), .Q(op_A[3]) );
  SDFFRQX1M \reg_file_reg[0][2]  ( .D(n180), .SI(op_A[1]), .SE(n449), .CK(CLK), 
        .RN(n422), .Q(op_A[2]) );
  SDFFRQX1M \reg_file_reg[0][1]  ( .D(n179), .SI(op_A[0]), .SE(n448), .CK(CLK), 
        .RN(n422), .Q(op_A[1]) );
  SDFFRQX1M \reg_file_reg[0][0]  ( .D(n178), .SI(rd_valid), .SE(n450), .CK(CLK), .RN(n422), .Q(op_A[0]) );
  SDFFRQX1M \reg_file_reg[2][1]  ( .D(n195), .SI(UART_CON[0]), .SE(n447), .CK(
        CLK), .RN(n421), .Q(UART_CON[1]) );
  SDFFRQX1M \reg_file_reg[3][0]  ( .D(n202), .SI(UART_CON[7]), .SE(n449), .CK(
        CLK), .RN(n422), .Q(DIV_ratio[0]) );
  SDFFRQX1M \reg_file_reg[3][3]  ( .D(n205), .SI(DIV_ratio[2]), .SE(n448), 
        .CK(CLK), .RN(n420), .Q(DIV_ratio[3]) );
  SDFFRQX1M \reg_file_reg[3][1]  ( .D(n203), .SI(DIV_ratio[0]), .SE(n450), 
        .CK(CLK), .RN(n420), .Q(DIV_ratio[1]) );
  SDFFRQX1M \reg_file_reg[3][2]  ( .D(n204), .SI(DIV_ratio[1]), .SE(n447), 
        .CK(CLK), .RN(n420), .Q(DIV_ratio[2]) );
  SDFFRQX1M \reg_file_reg[3][7]  ( .D(n209), .SI(DIV_ratio[6]), .SE(n449), 
        .CK(CLK), .RN(n420), .Q(DIV_ratio[7]) );
  SDFFRQX1M \reg_file_reg[3][6]  ( .D(n208), .SI(DIV_ratio[5]), .SE(n448), 
        .CK(CLK), .RN(n420), .Q(DIV_ratio[6]) );
  SDFFRQX1M \reg_file_reg[3][4]  ( .D(n206), .SI(DIV_ratio[3]), .SE(n450), 
        .CK(CLK), .RN(n420), .Q(DIV_ratio[4]) );
  SDFFSQX2M \reg_file_reg[3][5]  ( .D(n207), .SI(DIV_ratio[4]), .SE(n449), 
        .CK(CLK), .SN(n413), .Q(DIV_ratio[5]) );
  SDFFSQX2M \reg_file_reg[2][0]  ( .D(n194), .SI(op_B[7]), .SE(n448), .CK(CLK), 
        .SN(n413), .Q(UART_CON[0]) );
  SDFFRQX1M \reg_file_reg[2][6]  ( .D(n200), .SI(UART_CON[5]), .SE(n447), .CK(
        CLK), .RN(n422), .Q(UART_CON[6]) );
  SDFFSQX2M \reg_file_reg[2][7]  ( .D(n201), .SI(UART_CON[6]), .SE(n447), .CK(
        CLK), .SN(n413), .Q(UART_CON[7]) );
  SDFFRQX1M \reg_file_reg[1][2]  ( .D(n188), .SI(op_B[1]), .SE(n449), .CK(CLK), 
        .RN(n421), .Q(op_B[2]) );
  SDFFRQX1M \reg_file_reg[1][0]  ( .D(n186), .SI(op_A[7]), .SE(n448), .CK(CLK), 
        .RN(n422), .Q(op_B[0]) );
  SDFFRQX1M \reg_file_reg[2][2]  ( .D(n196), .SI(UART_CON[1]), .SE(n450), .CK(
        CLK), .RN(n421), .Q(UART_CON[2]) );
  SDFFRQX1M \reg_file_reg[1][3]  ( .D(n189), .SI(op_B[2]), .SE(n447), .CK(CLK), 
        .RN(n421), .Q(op_B[3]) );
  SDFFRQX1M \reg_file_reg[1][4]  ( .D(n190), .SI(op_B[3]), .SE(n449), .CK(CLK), 
        .RN(n421), .Q(op_B[4]) );
  SDFFRQX1M \reg_file_reg[1][1]  ( .D(n187), .SI(op_B[0]), .SE(n448), .CK(CLK), 
        .RN(n413), .Q(op_B[1]) );
  SDFFRQX1M \reg_file_reg[2][4]  ( .D(n198), .SI(UART_CON[3]), .SE(n450), .CK(
        CLK), .RN(n421), .Q(UART_CON[4]) );
  SDFFRQX1M \reg_file_reg[2][5]  ( .D(n199), .SI(UART_CON[4]), .SE(n449), .CK(
        CLK), .RN(n422), .Q(UART_CON[5]) );
  SDFFRQX1M \reg_file_reg[2][3]  ( .D(n197), .SI(UART_CON[2]), .SE(n448), .CK(
        CLK), .RN(n421), .Q(UART_CON[3]) );
  NOR2X2M U140 ( .A(n434), .B(N13), .Y(n156) );
  NOR2X2M U141 ( .A(N12), .B(N13), .Y(n151) );
  INVX2M U142 ( .A(n138), .Y(n409) );
  NAND2X2M U143 ( .A(n156), .B(n152), .Y(n155) );
  NAND2X2M U144 ( .A(n156), .B(n154), .Y(n157) );
  NAND2X2M U145 ( .A(n159), .B(n152), .Y(n158) );
  NAND2X2M U146 ( .A(n159), .B(n154), .Y(n160) );
  NAND2X2M U147 ( .A(n162), .B(n152), .Y(n161) );
  NAND2X2M U148 ( .A(n162), .B(n154), .Y(n164) );
  NAND2X2M U149 ( .A(n167), .B(n159), .Y(n172) );
  NAND2X2M U150 ( .A(n169), .B(n159), .Y(n173) );
  NAND2X2M U151 ( .A(n167), .B(n162), .Y(n174) );
  NAND2X2M U152 ( .A(n169), .B(n162), .Y(n176) );
  NAND2X2M U153 ( .A(n154), .B(n151), .Y(n153) );
  NAND2X2M U154 ( .A(n167), .B(n151), .Y(n166) );
  NAND2X2M U155 ( .A(n169), .B(n151), .Y(n168) );
  NAND2X2M U156 ( .A(n167), .B(n156), .Y(n170) );
  NAND2X2M U157 ( .A(n169), .B(n156), .Y(n171) );
  NAND2X2M U158 ( .A(n151), .B(n152), .Y(n150) );
  OR2X2M U159 ( .A(n434), .B(n406), .Y(n138) );
  AND2X2M U160 ( .A(n163), .B(n406), .Y(n152) );
  AND2X2M U161 ( .A(n175), .B(n406), .Y(n167) );
  INVX2M U162 ( .A(n141), .Y(n410) );
  INVX2M U163 ( .A(n139), .Y(n412) );
  INVX2M U164 ( .A(n140), .Y(n411) );
  OR2X2M U165 ( .A(N11), .B(N12), .Y(n139) );
  OR2X2M U166 ( .A(n406), .B(N12), .Y(n140) );
  OR2X2M U167 ( .A(n434), .B(N11), .Y(n141) );
  AND2X2M U168 ( .A(n163), .B(N11), .Y(n154) );
  AND2X2M U169 ( .A(n175), .B(N11), .Y(n169) );
  AND2X2M U170 ( .A(N13), .B(n434), .Y(n159) );
  AND2X2M U171 ( .A(N13), .B(N12), .Y(n162) );
  INVX2M U172 ( .A(N12), .Y(n434) );
  NOR2BX2M U173 ( .AN(n165), .B(N14), .Y(n163) );
  INVX2M U174 ( .A(N11), .Y(n406) );
  INVX2M U175 ( .A(N13), .Y(n407) );
  INVX2M U176 ( .A(n177), .Y(n437) );
  INVX2M U177 ( .A(N14), .Y(n408) );
  AND2X2M U178 ( .A(N14), .B(n165), .Y(n175) );
  BUFX2M U179 ( .A(n423), .Y(n421) );
  BUFX2M U180 ( .A(n424), .Y(n420) );
  BUFX2M U181 ( .A(n424), .Y(n419) );
  BUFX2M U182 ( .A(n425), .Y(n417) );
  BUFX2M U183 ( .A(n426), .Y(n416) );
  BUFX2M U184 ( .A(n426), .Y(n415) );
  BUFX2M U185 ( .A(n425), .Y(n418) );
  BUFX2M U186 ( .A(n427), .Y(n414) );
  BUFX2M U187 ( .A(n427), .Y(n413) );
  BUFX2M U188 ( .A(n423), .Y(n422) );
  INVX2M U189 ( .A(WrData[0]), .Y(n436) );
  INVX2M U190 ( .A(WrData[1]), .Y(n435) );
  INVX2M U191 ( .A(WrData[2]), .Y(n433) );
  INVX2M U192 ( .A(WrData[3]), .Y(n432) );
  INVX2M U193 ( .A(WrData[4]), .Y(n431) );
  INVX2M U194 ( .A(WrData[5]), .Y(n430) );
  INVX2M U195 ( .A(WrData[6]), .Y(n429) );
  INVX2M U196 ( .A(WrData[7]), .Y(n428) );
  NAND2X2M U197 ( .A(RdEn), .B(n438), .Y(n177) );
  NOR2X2M U198 ( .A(n438), .B(RdEn), .Y(n165) );
  BUFX2M U199 ( .A(RST), .Y(n424) );
  BUFX2M U200 ( .A(RST), .Y(n426) );
  BUFX2M U201 ( .A(RST), .Y(n425) );
  BUFX2M U202 ( .A(RST), .Y(n427) );
  BUFX2M U203 ( .A(RST), .Y(n423) );
  OAI2BB2X1M U204 ( .B0(n150), .B1(n436), .A0N(op_A[0]), .A1N(n150), .Y(n178)
         );
  OAI2BB2X1M U205 ( .B0(n150), .B1(n435), .A0N(op_A[1]), .A1N(n150), .Y(n179)
         );
  OAI2BB2X1M U206 ( .B0(n150), .B1(n433), .A0N(op_A[2]), .A1N(n150), .Y(n180)
         );
  OAI2BB2X1M U207 ( .B0(n150), .B1(n432), .A0N(op_A[3]), .A1N(n150), .Y(n181)
         );
  OAI2BB2X1M U208 ( .B0(n150), .B1(n431), .A0N(op_A[4]), .A1N(n150), .Y(n182)
         );
  OAI2BB2X1M U209 ( .B0(n150), .B1(n430), .A0N(op_A[5]), .A1N(n150), .Y(n183)
         );
  OAI2BB2X1M U210 ( .B0(n150), .B1(n429), .A0N(op_A[6]), .A1N(n150), .Y(n184)
         );
  OAI2BB2X1M U211 ( .B0(n150), .B1(n428), .A0N(op_A[7]), .A1N(n150), .Y(n185)
         );
  OAI2BB2X1M U212 ( .B0(n435), .B1(n155), .A0N(UART_CON[1]), .A1N(n155), .Y(
        n195) );
  OAI2BB2X1M U213 ( .B0(n433), .B1(n155), .A0N(UART_CON[2]), .A1N(n155), .Y(
        n196) );
  OAI2BB2X1M U214 ( .B0(n432), .B1(n155), .A0N(UART_CON[3]), .A1N(n155), .Y(
        n197) );
  OAI2BB2X1M U215 ( .B0(n431), .B1(n155), .A0N(UART_CON[4]), .A1N(n155), .Y(
        n198) );
  OAI2BB2X1M U216 ( .B0(n430), .B1(n155), .A0N(UART_CON[5]), .A1N(n155), .Y(
        n199) );
  OAI2BB2X1M U217 ( .B0(n429), .B1(n155), .A0N(UART_CON[6]), .A1N(n155), .Y(
        n200) );
  OAI2BB2X1M U218 ( .B0(n436), .B1(n157), .A0N(DIV_ratio[0]), .A1N(n157), .Y(
        n202) );
  OAI2BB2X1M U219 ( .B0(n435), .B1(n157), .A0N(DIV_ratio[1]), .A1N(n157), .Y(
        n203) );
  OAI2BB2X1M U220 ( .B0(n433), .B1(n157), .A0N(DIV_ratio[2]), .A1N(n157), .Y(
        n204) );
  OAI2BB2X1M U221 ( .B0(n432), .B1(n157), .A0N(DIV_ratio[3]), .A1N(n157), .Y(
        n205) );
  OAI2BB2X1M U222 ( .B0(n431), .B1(n157), .A0N(DIV_ratio[4]), .A1N(n157), .Y(
        n206) );
  OAI2BB2X1M U223 ( .B0(n429), .B1(n157), .A0N(DIV_ratio[6]), .A1N(n157), .Y(
        n208) );
  OAI2BB2X1M U224 ( .B0(n428), .B1(n157), .A0N(DIV_ratio[7]), .A1N(n157), .Y(
        n209) );
  OAI2BB2X1M U225 ( .B0(n436), .B1(n153), .A0N(op_B[0]), .A1N(n153), .Y(n186)
         );
  OAI2BB2X1M U226 ( .B0(n435), .B1(n153), .A0N(op_B[1]), .A1N(n153), .Y(n187)
         );
  OAI2BB2X1M U227 ( .B0(n433), .B1(n153), .A0N(op_B[2]), .A1N(n153), .Y(n188)
         );
  OAI2BB2X1M U228 ( .B0(n432), .B1(n153), .A0N(op_B[3]), .A1N(n153), .Y(n189)
         );
  OAI2BB2X1M U229 ( .B0(n431), .B1(n153), .A0N(op_B[4]), .A1N(n153), .Y(n190)
         );
  OAI2BB2X1M U230 ( .B0(n430), .B1(n153), .A0N(op_B[5]), .A1N(n153), .Y(n191)
         );
  OAI2BB2X1M U231 ( .B0(n429), .B1(n153), .A0N(op_B[6]), .A1N(n153), .Y(n192)
         );
  OAI2BB2X1M U232 ( .B0(n428), .B1(n153), .A0N(op_B[7]), .A1N(n153), .Y(n193)
         );
  OAI2BB2X1M U233 ( .B0(n436), .B1(n166), .A0N(\reg_file[8][0] ), .A1N(n166), 
        .Y(n242) );
  OAI2BB2X1M U234 ( .B0(n435), .B1(n166), .A0N(\reg_file[8][1] ), .A1N(n166), 
        .Y(n243) );
  OAI2BB2X1M U235 ( .B0(n433), .B1(n166), .A0N(\reg_file[8][2] ), .A1N(n166), 
        .Y(n244) );
  OAI2BB2X1M U236 ( .B0(n432), .B1(n166), .A0N(\reg_file[8][3] ), .A1N(n166), 
        .Y(n245) );
  OAI2BB2X1M U237 ( .B0(n431), .B1(n166), .A0N(\reg_file[8][4] ), .A1N(n166), 
        .Y(n246) );
  OAI2BB2X1M U238 ( .B0(n430), .B1(n166), .A0N(\reg_file[8][5] ), .A1N(n166), 
        .Y(n247) );
  OAI2BB2X1M U239 ( .B0(n429), .B1(n166), .A0N(\reg_file[8][6] ), .A1N(n166), 
        .Y(n248) );
  OAI2BB2X1M U240 ( .B0(n428), .B1(n166), .A0N(\reg_file[8][7] ), .A1N(n166), 
        .Y(n249) );
  OAI2BB2X1M U241 ( .B0(n436), .B1(n168), .A0N(\reg_file[9][0] ), .A1N(n168), 
        .Y(n250) );
  OAI2BB2X1M U242 ( .B0(n435), .B1(n168), .A0N(\reg_file[9][1] ), .A1N(n168), 
        .Y(n251) );
  OAI2BB2X1M U243 ( .B0(n433), .B1(n168), .A0N(\reg_file[9][2] ), .A1N(n168), 
        .Y(n252) );
  OAI2BB2X1M U244 ( .B0(n432), .B1(n168), .A0N(\reg_file[9][3] ), .A1N(n168), 
        .Y(n253) );
  OAI2BB2X1M U245 ( .B0(n431), .B1(n168), .A0N(\reg_file[9][4] ), .A1N(n168), 
        .Y(n254) );
  OAI2BB2X1M U246 ( .B0(n430), .B1(n168), .A0N(\reg_file[9][5] ), .A1N(n168), 
        .Y(n255) );
  OAI2BB2X1M U247 ( .B0(n429), .B1(n168), .A0N(\reg_file[9][6] ), .A1N(n168), 
        .Y(n256) );
  OAI2BB2X1M U248 ( .B0(n428), .B1(n168), .A0N(\reg_file[9][7] ), .A1N(n168), 
        .Y(n257) );
  OAI2BB2X1M U249 ( .B0(n436), .B1(n170), .A0N(\reg_file[10][0] ), .A1N(n170), 
        .Y(n258) );
  OAI2BB2X1M U250 ( .B0(n435), .B1(n170), .A0N(\reg_file[10][1] ), .A1N(n170), 
        .Y(n259) );
  OAI2BB2X1M U251 ( .B0(n433), .B1(n170), .A0N(\reg_file[10][2] ), .A1N(n170), 
        .Y(n260) );
  OAI2BB2X1M U252 ( .B0(n432), .B1(n170), .A0N(\reg_file[10][3] ), .A1N(n170), 
        .Y(n261) );
  OAI2BB2X1M U253 ( .B0(n431), .B1(n170), .A0N(\reg_file[10][4] ), .A1N(n170), 
        .Y(n262) );
  OAI2BB2X1M U254 ( .B0(n430), .B1(n170), .A0N(\reg_file[10][5] ), .A1N(n170), 
        .Y(n263) );
  OAI2BB2X1M U255 ( .B0(n429), .B1(n170), .A0N(\reg_file[10][6] ), .A1N(n170), 
        .Y(n264) );
  OAI2BB2X1M U256 ( .B0(n428), .B1(n170), .A0N(n451), .A1N(n170), .Y(n265) );
  OAI2BB2X1M U257 ( .B0(n436), .B1(n171), .A0N(\reg_file[11][0] ), .A1N(n171), 
        .Y(n266) );
  OAI2BB2X1M U258 ( .B0(n435), .B1(n171), .A0N(\reg_file[11][1] ), .A1N(n171), 
        .Y(n267) );
  OAI2BB2X1M U259 ( .B0(n433), .B1(n171), .A0N(\reg_file[11][2] ), .A1N(n171), 
        .Y(n268) );
  OAI2BB2X1M U260 ( .B0(n432), .B1(n171), .A0N(\reg_file[11][3] ), .A1N(n171), 
        .Y(n269) );
  OAI2BB2X1M U261 ( .B0(n431), .B1(n171), .A0N(\reg_file[11][4] ), .A1N(n171), 
        .Y(n270) );
  OAI2BB2X1M U262 ( .B0(n430), .B1(n171), .A0N(\reg_file[11][5] ), .A1N(n171), 
        .Y(n271) );
  OAI2BB2X1M U263 ( .B0(n429), .B1(n171), .A0N(\reg_file[11][6] ), .A1N(n171), 
        .Y(n272) );
  OAI2BB2X1M U264 ( .B0(n428), .B1(n171), .A0N(\reg_file[11][7] ), .A1N(n171), 
        .Y(n273) );
  OAI2BB2X1M U265 ( .B0(n436), .B1(n155), .A0N(UART_CON[0]), .A1N(n155), .Y(
        n194) );
  OAI2BB2X1M U266 ( .B0(n428), .B1(n155), .A0N(UART_CON[7]), .A1N(n155), .Y(
        n201) );
  OAI2BB2X1M U267 ( .B0(n430), .B1(n157), .A0N(DIV_ratio[5]), .A1N(n157), .Y(
        n207) );
  OAI2BB2X1M U268 ( .B0(n436), .B1(n160), .A0N(\reg_file[5][0] ), .A1N(n160), 
        .Y(n218) );
  OAI2BB2X1M U269 ( .B0(n435), .B1(n160), .A0N(\reg_file[5][1] ), .A1N(n160), 
        .Y(n219) );
  OAI2BB2X1M U270 ( .B0(n433), .B1(n160), .A0N(\reg_file[5][2] ), .A1N(n160), 
        .Y(n220) );
  OAI2BB2X1M U271 ( .B0(n432), .B1(n160), .A0N(\reg_file[5][3] ), .A1N(n160), 
        .Y(n221) );
  OAI2BB2X1M U272 ( .B0(n431), .B1(n160), .A0N(\reg_file[5][4] ), .A1N(n160), 
        .Y(n222) );
  OAI2BB2X1M U273 ( .B0(n430), .B1(n160), .A0N(\reg_file[5][5] ), .A1N(n160), 
        .Y(n223) );
  OAI2BB2X1M U274 ( .B0(n429), .B1(n160), .A0N(\reg_file[5][6] ), .A1N(n160), 
        .Y(n224) );
  OAI2BB2X1M U275 ( .B0(n428), .B1(n160), .A0N(\reg_file[5][7] ), .A1N(n160), 
        .Y(n225) );
  OAI2BB2X1M U276 ( .B0(n436), .B1(n164), .A0N(\reg_file[7][0] ), .A1N(n164), 
        .Y(n234) );
  OAI2BB2X1M U277 ( .B0(n435), .B1(n164), .A0N(\reg_file[7][1] ), .A1N(n164), 
        .Y(n235) );
  OAI2BB2X1M U278 ( .B0(n433), .B1(n164), .A0N(\reg_file[7][2] ), .A1N(n164), 
        .Y(n236) );
  OAI2BB2X1M U279 ( .B0(n432), .B1(n164), .A0N(\reg_file[7][3] ), .A1N(n164), 
        .Y(n237) );
  OAI2BB2X1M U280 ( .B0(n431), .B1(n164), .A0N(\reg_file[7][4] ), .A1N(n164), 
        .Y(n238) );
  OAI2BB2X1M U281 ( .B0(n430), .B1(n164), .A0N(\reg_file[7][5] ), .A1N(n164), 
        .Y(n239) );
  OAI2BB2X1M U282 ( .B0(n429), .B1(n164), .A0N(\reg_file[7][6] ), .A1N(n164), 
        .Y(n240) );
  OAI2BB2X1M U283 ( .B0(n428), .B1(n164), .A0N(\reg_file[7][7] ), .A1N(n164), 
        .Y(n241) );
  OAI2BB2X1M U284 ( .B0(n436), .B1(n172), .A0N(\reg_file[12][0] ), .A1N(n172), 
        .Y(n274) );
  OAI2BB2X1M U285 ( .B0(n435), .B1(n172), .A0N(\reg_file[12][1] ), .A1N(n172), 
        .Y(n275) );
  OAI2BB2X1M U286 ( .B0(n433), .B1(n172), .A0N(\reg_file[12][2] ), .A1N(n172), 
        .Y(n276) );
  OAI2BB2X1M U287 ( .B0(n432), .B1(n172), .A0N(\reg_file[12][3] ), .A1N(n172), 
        .Y(n277) );
  OAI2BB2X1M U288 ( .B0(n431), .B1(n172), .A0N(\reg_file[12][4] ), .A1N(n172), 
        .Y(n278) );
  OAI2BB2X1M U289 ( .B0(n430), .B1(n172), .A0N(\reg_file[12][5] ), .A1N(n172), 
        .Y(n279) );
  OAI2BB2X1M U290 ( .B0(n429), .B1(n172), .A0N(\reg_file[12][6] ), .A1N(n172), 
        .Y(n280) );
  OAI2BB2X1M U291 ( .B0(n428), .B1(n172), .A0N(\reg_file[12][7] ), .A1N(n172), 
        .Y(n281) );
  OAI2BB2X1M U292 ( .B0(n436), .B1(n173), .A0N(\reg_file[13][0] ), .A1N(n173), 
        .Y(n282) );
  OAI2BB2X1M U293 ( .B0(n435), .B1(n173), .A0N(\reg_file[13][1] ), .A1N(n173), 
        .Y(n283) );
  OAI2BB2X1M U294 ( .B0(n433), .B1(n173), .A0N(\reg_file[13][2] ), .A1N(n173), 
        .Y(n284) );
  OAI2BB2X1M U295 ( .B0(n432), .B1(n173), .A0N(\reg_file[13][3] ), .A1N(n173), 
        .Y(n285) );
  OAI2BB2X1M U296 ( .B0(n431), .B1(n173), .A0N(\reg_file[13][4] ), .A1N(n173), 
        .Y(n286) );
  OAI2BB2X1M U297 ( .B0(n430), .B1(n173), .A0N(\reg_file[13][5] ), .A1N(n173), 
        .Y(n287) );
  OAI2BB2X1M U298 ( .B0(n429), .B1(n173), .A0N(\reg_file[13][6] ), .A1N(n173), 
        .Y(n288) );
  OAI2BB2X1M U299 ( .B0(n428), .B1(n173), .A0N(\reg_file[13][7] ), .A1N(n173), 
        .Y(n289) );
  OAI2BB2X1M U300 ( .B0(n436), .B1(n174), .A0N(\reg_file[14][0] ), .A1N(n174), 
        .Y(n290) );
  OAI2BB2X1M U301 ( .B0(n435), .B1(n174), .A0N(\reg_file[14][1] ), .A1N(n174), 
        .Y(n291) );
  OAI2BB2X1M U302 ( .B0(n433), .B1(n174), .A0N(\reg_file[14][2] ), .A1N(n174), 
        .Y(n292) );
  OAI2BB2X1M U303 ( .B0(n432), .B1(n174), .A0N(\reg_file[14][3] ), .A1N(n174), 
        .Y(n293) );
  OAI2BB2X1M U304 ( .B0(n431), .B1(n174), .A0N(\reg_file[14][4] ), .A1N(n174), 
        .Y(n294) );
  OAI2BB2X1M U305 ( .B0(n430), .B1(n174), .A0N(\reg_file[14][5] ), .A1N(n174), 
        .Y(n295) );
  OAI2BB2X1M U306 ( .B0(n429), .B1(n174), .A0N(\reg_file[14][6] ), .A1N(n174), 
        .Y(n296) );
  OAI2BB2X1M U307 ( .B0(n428), .B1(n174), .A0N(\reg_file[14][7] ), .A1N(n174), 
        .Y(n297) );
  OAI2BB2X1M U308 ( .B0(n436), .B1(n176), .A0N(\reg_file[15][0] ), .A1N(n176), 
        .Y(n298) );
  OAI2BB2X1M U309 ( .B0(n435), .B1(n176), .A0N(\reg_file[15][1] ), .A1N(n176), 
        .Y(n299) );
  OAI2BB2X1M U310 ( .B0(n433), .B1(n176), .A0N(\reg_file[15][2] ), .A1N(n176), 
        .Y(n300) );
  OAI2BB2X1M U311 ( .B0(n432), .B1(n176), .A0N(\reg_file[15][3] ), .A1N(n176), 
        .Y(n301) );
  OAI2BB2X1M U312 ( .B0(n431), .B1(n176), .A0N(\reg_file[15][4] ), .A1N(n176), 
        .Y(n302) );
  OAI2BB2X1M U313 ( .B0(n430), .B1(n176), .A0N(\reg_file[15][5] ), .A1N(n176), 
        .Y(n303) );
  OAI2BB2X1M U314 ( .B0(n429), .B1(n176), .A0N(\reg_file[15][6] ), .A1N(n176), 
        .Y(n304) );
  OAI2BB2X1M U315 ( .B0(n428), .B1(n176), .A0N(\reg_file[15][7] ), .A1N(n176), 
        .Y(n305) );
  OAI2BB2X1M U316 ( .B0(n436), .B1(n158), .A0N(\reg_file[4][0] ), .A1N(n158), 
        .Y(n210) );
  OAI2BB2X1M U317 ( .B0(n435), .B1(n158), .A0N(\reg_file[4][1] ), .A1N(n158), 
        .Y(n211) );
  OAI2BB2X1M U318 ( .B0(n433), .B1(n158), .A0N(\reg_file[4][2] ), .A1N(n158), 
        .Y(n212) );
  OAI2BB2X1M U319 ( .B0(n432), .B1(n158), .A0N(\reg_file[4][3] ), .A1N(n158), 
        .Y(n213) );
  OAI2BB2X1M U320 ( .B0(n431), .B1(n158), .A0N(\reg_file[4][4] ), .A1N(n158), 
        .Y(n214) );
  OAI2BB2X1M U321 ( .B0(n430), .B1(n158), .A0N(\reg_file[4][5] ), .A1N(n158), 
        .Y(n215) );
  OAI2BB2X1M U322 ( .B0(n429), .B1(n158), .A0N(\reg_file[4][6] ), .A1N(n158), 
        .Y(n216) );
  OAI2BB2X1M U323 ( .B0(n428), .B1(n158), .A0N(\reg_file[4][7] ), .A1N(n158), 
        .Y(n217) );
  OAI2BB2X1M U324 ( .B0(n436), .B1(n161), .A0N(\reg_file[6][0] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U325 ( .B0(n435), .B1(n161), .A0N(\reg_file[6][1] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U326 ( .B0(n433), .B1(n161), .A0N(\reg_file[6][2] ), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U327 ( .B0(n432), .B1(n161), .A0N(\reg_file[6][3] ), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U328 ( .B0(n431), .B1(n161), .A0N(\reg_file[6][4] ), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U329 ( .B0(n430), .B1(n161), .A0N(\reg_file[6][5] ), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U330 ( .B0(n429), .B1(n161), .A0N(\reg_file[6][6] ), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U331 ( .B0(n428), .B1(n161), .A0N(\reg_file[6][7] ), .A1N(n161), 
        .Y(n233) );
  INVX2M U332 ( .A(WrEn), .Y(n438) );
  AO22X1M U333 ( .A0(N43), .A1(n437), .B0(RdData[0]), .B1(n177), .Y(n306) );
  AO22X1M U334 ( .A0(N42), .A1(n437), .B0(RdData[1]), .B1(n177), .Y(n307) );
  AO22X1M U335 ( .A0(N41), .A1(n437), .B0(RdData[2]), .B1(n177), .Y(n308) );
  AO22X1M U336 ( .A0(N40), .A1(n437), .B0(RdData[3]), .B1(n177), .Y(n309) );
  AO22X1M U337 ( .A0(N39), .A1(n437), .B0(RdData[4]), .B1(n177), .Y(n310) );
  AO22X1M U338 ( .A0(N38), .A1(n437), .B0(RdData[5]), .B1(n177), .Y(n311) );
  AO22X1M U339 ( .A0(N37), .A1(n437), .B0(RdData[6]), .B1(n177), .Y(n312) );
  AO22X1M U340 ( .A0(N36), .A1(n437), .B0(n177), .B1(n444), .Y(n313) );
  AOI22X1M U341 ( .A0(\reg_file[10][0] ), .A1(n410), .B0(\reg_file[11][0] ), 
        .B1(n409), .Y(n143) );
  AOI22X1M U342 ( .A0(\reg_file[8][0] ), .A1(n412), .B0(\reg_file[9][0] ), 
        .B1(n411), .Y(n142) );
  CLKNAND2X2M U343 ( .A(N14), .B(n407), .Y(n390) );
  AOI21X1M U344 ( .A0(n143), .A1(n142), .B0(n390), .Y(n317) );
  AOI22X1M U345 ( .A0(\reg_file[14][0] ), .A1(n410), .B0(\reg_file[15][0] ), 
        .B1(n409), .Y(n145) );
  AOI22X1M U346 ( .A0(\reg_file[12][0] ), .A1(n412), .B0(\reg_file[13][0] ), 
        .B1(n411), .Y(n144) );
  CLKNAND2X2M U347 ( .A(N14), .B(N13), .Y(n393) );
  AOI21X1M U348 ( .A0(n145), .A1(n144), .B0(n393), .Y(n316) );
  AOI22X1M U349 ( .A0(UART_CON[0]), .A1(n410), .B0(DIV_ratio[0]), .B1(n409), 
        .Y(n147) );
  AOI22X1M U350 ( .A0(op_A[0]), .A1(n412), .B0(op_B[0]), .B1(n411), .Y(n146)
         );
  CLKNAND2X2M U351 ( .A(n407), .B(n408), .Y(n396) );
  AOI21X1M U352 ( .A0(n147), .A1(n146), .B0(n396), .Y(n315) );
  AOI22X1M U353 ( .A0(\reg_file[6][0] ), .A1(n410), .B0(\reg_file[7][0] ), 
        .B1(n409), .Y(n149) );
  AOI22X1M U354 ( .A0(\reg_file[4][0] ), .A1(n412), .B0(\reg_file[5][0] ), 
        .B1(n411), .Y(n148) );
  CLKNAND2X2M U355 ( .A(N13), .B(n408), .Y(n399) );
  AOI21X1M U356 ( .A0(n149), .A1(n148), .B0(n399), .Y(n314) );
  OR4X1M U357 ( .A(n317), .B(n316), .C(n315), .D(n314), .Y(N43) );
  AOI22X1M U358 ( .A0(\reg_file[10][1] ), .A1(n410), .B0(\reg_file[11][1] ), 
        .B1(n409), .Y(n319) );
  AOI22X1M U359 ( .A0(\reg_file[8][1] ), .A1(n412), .B0(\reg_file[9][1] ), 
        .B1(n411), .Y(n318) );
  AOI21X1M U360 ( .A0(n319), .A1(n318), .B0(n390), .Y(n329) );
  AOI22X1M U361 ( .A0(\reg_file[14][1] ), .A1(n410), .B0(\reg_file[15][1] ), 
        .B1(n409), .Y(n321) );
  AOI22X1M U362 ( .A0(\reg_file[12][1] ), .A1(n412), .B0(\reg_file[13][1] ), 
        .B1(n411), .Y(n320) );
  AOI21X1M U363 ( .A0(n321), .A1(n320), .B0(n393), .Y(n328) );
  AOI22X1M U364 ( .A0(UART_CON[1]), .A1(n410), .B0(DIV_ratio[1]), .B1(n409), 
        .Y(n323) );
  AOI22X1M U365 ( .A0(op_A[1]), .A1(n412), .B0(op_B[1]), .B1(n411), .Y(n322)
         );
  AOI21X1M U366 ( .A0(n323), .A1(n322), .B0(n396), .Y(n327) );
  AOI22X1M U367 ( .A0(\reg_file[6][1] ), .A1(n410), .B0(\reg_file[7][1] ), 
        .B1(n409), .Y(n325) );
  AOI22X1M U368 ( .A0(\reg_file[4][1] ), .A1(n412), .B0(\reg_file[5][1] ), 
        .B1(n411), .Y(n324) );
  AOI21X1M U369 ( .A0(n325), .A1(n324), .B0(n399), .Y(n326) );
  OR4X1M U370 ( .A(n329), .B(n328), .C(n327), .D(n326), .Y(N42) );
  AOI22X1M U371 ( .A0(\reg_file[10][2] ), .A1(n410), .B0(\reg_file[11][2] ), 
        .B1(n409), .Y(n331) );
  AOI22X1M U372 ( .A0(\reg_file[8][2] ), .A1(n412), .B0(\reg_file[9][2] ), 
        .B1(n411), .Y(n330) );
  AOI21X1M U373 ( .A0(n331), .A1(n330), .B0(n390), .Y(n341) );
  AOI22X1M U374 ( .A0(\reg_file[14][2] ), .A1(n410), .B0(\reg_file[15][2] ), 
        .B1(n409), .Y(n333) );
  AOI22X1M U375 ( .A0(\reg_file[12][2] ), .A1(n412), .B0(\reg_file[13][2] ), 
        .B1(n411), .Y(n332) );
  AOI21X1M U376 ( .A0(n333), .A1(n332), .B0(n393), .Y(n340) );
  AOI22X1M U377 ( .A0(UART_CON[2]), .A1(n410), .B0(DIV_ratio[2]), .B1(n409), 
        .Y(n335) );
  AOI22X1M U378 ( .A0(op_A[2]), .A1(n412), .B0(op_B[2]), .B1(n411), .Y(n334)
         );
  AOI21X1M U379 ( .A0(n335), .A1(n334), .B0(n396), .Y(n339) );
  AOI22X1M U380 ( .A0(\reg_file[6][2] ), .A1(n410), .B0(\reg_file[7][2] ), 
        .B1(n409), .Y(n337) );
  AOI22X1M U381 ( .A0(\reg_file[4][2] ), .A1(n412), .B0(\reg_file[5][2] ), 
        .B1(n411), .Y(n336) );
  AOI21X1M U382 ( .A0(n337), .A1(n336), .B0(n399), .Y(n338) );
  OR4X1M U383 ( .A(n341), .B(n340), .C(n339), .D(n338), .Y(N41) );
  AOI22X1M U384 ( .A0(\reg_file[10][3] ), .A1(n410), .B0(\reg_file[11][3] ), 
        .B1(n409), .Y(n343) );
  AOI22X1M U385 ( .A0(\reg_file[8][3] ), .A1(n412), .B0(\reg_file[9][3] ), 
        .B1(n411), .Y(n342) );
  AOI21X1M U386 ( .A0(n343), .A1(n342), .B0(n390), .Y(n353) );
  AOI22X1M U387 ( .A0(\reg_file[14][3] ), .A1(n410), .B0(\reg_file[15][3] ), 
        .B1(n409), .Y(n345) );
  AOI22X1M U388 ( .A0(\reg_file[12][3] ), .A1(n412), .B0(\reg_file[13][3] ), 
        .B1(n411), .Y(n344) );
  AOI21X1M U389 ( .A0(n345), .A1(n344), .B0(n393), .Y(n352) );
  AOI22X1M U390 ( .A0(UART_CON[3]), .A1(n410), .B0(DIV_ratio[3]), .B1(n409), 
        .Y(n347) );
  AOI22X1M U391 ( .A0(op_A[3]), .A1(n412), .B0(op_B[3]), .B1(n411), .Y(n346)
         );
  AOI21X1M U392 ( .A0(n347), .A1(n346), .B0(n396), .Y(n351) );
  AOI22X1M U393 ( .A0(\reg_file[6][3] ), .A1(n410), .B0(\reg_file[7][3] ), 
        .B1(n409), .Y(n349) );
  AOI22X1M U394 ( .A0(\reg_file[4][3] ), .A1(n412), .B0(\reg_file[5][3] ), 
        .B1(n411), .Y(n348) );
  AOI21X1M U395 ( .A0(n349), .A1(n348), .B0(n399), .Y(n350) );
  OR4X1M U396 ( .A(n353), .B(n352), .C(n351), .D(n350), .Y(N40) );
  AOI22X1M U397 ( .A0(\reg_file[10][4] ), .A1(n410), .B0(\reg_file[11][4] ), 
        .B1(n409), .Y(n355) );
  AOI22X1M U398 ( .A0(\reg_file[8][4] ), .A1(n412), .B0(\reg_file[9][4] ), 
        .B1(n411), .Y(n354) );
  AOI21X1M U399 ( .A0(n355), .A1(n354), .B0(n390), .Y(n365) );
  AOI22X1M U400 ( .A0(\reg_file[14][4] ), .A1(n410), .B0(\reg_file[15][4] ), 
        .B1(n409), .Y(n357) );
  AOI22X1M U401 ( .A0(\reg_file[12][4] ), .A1(n412), .B0(\reg_file[13][4] ), 
        .B1(n411), .Y(n356) );
  AOI21X1M U402 ( .A0(n357), .A1(n356), .B0(n393), .Y(n364) );
  AOI22X1M U403 ( .A0(UART_CON[4]), .A1(n410), .B0(DIV_ratio[4]), .B1(n409), 
        .Y(n359) );
  AOI22X1M U404 ( .A0(op_A[4]), .A1(n412), .B0(op_B[4]), .B1(n411), .Y(n358)
         );
  AOI21X1M U405 ( .A0(n359), .A1(n358), .B0(n396), .Y(n363) );
  AOI22X1M U406 ( .A0(\reg_file[6][4] ), .A1(n410), .B0(\reg_file[7][4] ), 
        .B1(n409), .Y(n361) );
  AOI22X1M U407 ( .A0(\reg_file[4][4] ), .A1(n412), .B0(\reg_file[5][4] ), 
        .B1(n411), .Y(n360) );
  AOI21X1M U408 ( .A0(n361), .A1(n360), .B0(n399), .Y(n362) );
  OR4X1M U409 ( .A(n365), .B(n364), .C(n363), .D(n362), .Y(N39) );
  AOI22X1M U410 ( .A0(\reg_file[10][5] ), .A1(n410), .B0(\reg_file[11][5] ), 
        .B1(n409), .Y(n367) );
  AOI22X1M U411 ( .A0(\reg_file[8][5] ), .A1(n412), .B0(\reg_file[9][5] ), 
        .B1(n411), .Y(n366) );
  AOI21X1M U412 ( .A0(n367), .A1(n366), .B0(n390), .Y(n377) );
  AOI22X1M U413 ( .A0(\reg_file[14][5] ), .A1(n410), .B0(\reg_file[15][5] ), 
        .B1(n409), .Y(n369) );
  AOI22X1M U414 ( .A0(\reg_file[12][5] ), .A1(n412), .B0(\reg_file[13][5] ), 
        .B1(n411), .Y(n368) );
  AOI21X1M U415 ( .A0(n369), .A1(n368), .B0(n393), .Y(n376) );
  AOI22X1M U416 ( .A0(UART_CON[5]), .A1(n410), .B0(DIV_ratio[5]), .B1(n409), 
        .Y(n371) );
  AOI22X1M U417 ( .A0(op_A[5]), .A1(n412), .B0(op_B[5]), .B1(n411), .Y(n370)
         );
  AOI21X1M U418 ( .A0(n371), .A1(n370), .B0(n396), .Y(n375) );
  AOI22X1M U419 ( .A0(\reg_file[6][5] ), .A1(n410), .B0(\reg_file[7][5] ), 
        .B1(n409), .Y(n373) );
  AOI22X1M U420 ( .A0(\reg_file[4][5] ), .A1(n412), .B0(\reg_file[5][5] ), 
        .B1(n411), .Y(n372) );
  AOI21X1M U421 ( .A0(n373), .A1(n372), .B0(n399), .Y(n374) );
  OR4X1M U422 ( .A(n377), .B(n376), .C(n375), .D(n374), .Y(N38) );
  AOI22X1M U423 ( .A0(\reg_file[10][6] ), .A1(n410), .B0(\reg_file[11][6] ), 
        .B1(n409), .Y(n379) );
  AOI22X1M U424 ( .A0(\reg_file[8][6] ), .A1(n412), .B0(\reg_file[9][6] ), 
        .B1(n411), .Y(n378) );
  AOI21X1M U425 ( .A0(n379), .A1(n378), .B0(n390), .Y(n389) );
  AOI22X1M U426 ( .A0(\reg_file[14][6] ), .A1(n410), .B0(\reg_file[15][6] ), 
        .B1(n409), .Y(n381) );
  AOI22X1M U427 ( .A0(\reg_file[12][6] ), .A1(n412), .B0(\reg_file[13][6] ), 
        .B1(n411), .Y(n380) );
  AOI21X1M U428 ( .A0(n381), .A1(n380), .B0(n393), .Y(n388) );
  AOI22X1M U429 ( .A0(UART_CON[6]), .A1(n410), .B0(DIV_ratio[6]), .B1(n409), 
        .Y(n383) );
  AOI22X1M U430 ( .A0(op_A[6]), .A1(n412), .B0(op_B[6]), .B1(n411), .Y(n382)
         );
  AOI21X1M U431 ( .A0(n383), .A1(n382), .B0(n396), .Y(n387) );
  AOI22X1M U432 ( .A0(\reg_file[6][6] ), .A1(n410), .B0(\reg_file[7][6] ), 
        .B1(n409), .Y(n385) );
  AOI22X1M U433 ( .A0(\reg_file[4][6] ), .A1(n412), .B0(\reg_file[5][6] ), 
        .B1(n411), .Y(n384) );
  AOI21X1M U434 ( .A0(n385), .A1(n384), .B0(n399), .Y(n386) );
  OR4X1M U435 ( .A(n389), .B(n388), .C(n387), .D(n386), .Y(N37) );
  AOI22X1M U436 ( .A0(n451), .A1(n410), .B0(\reg_file[11][7] ), .B1(n409), .Y(
        n392) );
  AOI22X1M U437 ( .A0(\reg_file[8][7] ), .A1(n412), .B0(\reg_file[9][7] ), 
        .B1(n411), .Y(n391) );
  AOI21X1M U438 ( .A0(n392), .A1(n391), .B0(n390), .Y(n405) );
  AOI22X1M U439 ( .A0(\reg_file[14][7] ), .A1(n410), .B0(\reg_file[15][7] ), 
        .B1(n409), .Y(n395) );
  AOI22X1M U440 ( .A0(\reg_file[12][7] ), .A1(n412), .B0(\reg_file[13][7] ), 
        .B1(n411), .Y(n394) );
  AOI21X1M U441 ( .A0(n395), .A1(n394), .B0(n393), .Y(n404) );
  AOI22X1M U442 ( .A0(UART_CON[7]), .A1(n410), .B0(DIV_ratio[7]), .B1(n409), 
        .Y(n398) );
  AOI22X1M U443 ( .A0(op_A[7]), .A1(n412), .B0(op_B[7]), .B1(n411), .Y(n397)
         );
  AOI21X1M U444 ( .A0(n398), .A1(n397), .B0(n396), .Y(n403) );
  AOI22X1M U445 ( .A0(\reg_file[6][7] ), .A1(n410), .B0(\reg_file[7][7] ), 
        .B1(n409), .Y(n401) );
  AOI22X1M U446 ( .A0(\reg_file[4][7] ), .A1(n412), .B0(\reg_file[5][7] ), 
        .B1(n411), .Y(n400) );
  AOI21X1M U447 ( .A0(n401), .A1(n400), .B0(n399), .Y(n402) );
  OR4X1M U448 ( .A(n405), .B(n404), .C(n403), .D(n402), .Y(N36) );
  DLY1X1M U450 ( .A(n452), .Y(n444) );
  INVXLM U451 ( .A(test_so1), .Y(n445) );
  INVXLM U452 ( .A(n445), .Y(n446) );
  DLY1X1M U453 ( .A(test_se), .Y(n447) );
  DLY1X1M U454 ( .A(test_se), .Y(n448) );
  DLY1X1M U455 ( .A(test_se), .Y(n449) );
  DLY1X1M U456 ( .A(test_se), .Y(n450) );
  DLY1X1M U457 ( .A(n446), .Y(n451) );
  CLKBUFX2M U3 ( .A(n452), .Y(RdData[7]) );
  INVXLM U4 ( .A(\reg_file[10][7] ), .Y(n1) );
  INVX2M U5 ( .A(n1), .Y(test_so1) );
endmodule


module FIFO_Mem_DATA_WIDTH8_FIFO_DEPTH8_test_1 ( rst_n, clk, wdata, wclken, 
        waddr, raddr, rdata, test_si2, test_si1, test_so2, test_so1, test_se
 );
  input [7:0] wdata;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] rdata;
  input rst_n, clk, wclken, test_si2, test_si1, test_se;
  output test_so2, test_so1;
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
         \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n203, n204, n205, n206, n207,
         n208, n209, n210, n1;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];
  assign test_so2 = \mem[7][7] ;

  SDFFRQX1M \mem_reg[1][7]  ( .D(n100), .SI(\mem[1][6] ), .SE(n209), .CK(clk), 
        .RN(n181), .Q(\mem[1][7] ) );
  SDFFRQX1M \mem_reg[1][6]  ( .D(n99), .SI(\mem[1][5] ), .SE(n208), .CK(clk), 
        .RN(n181), .Q(\mem[1][6] ) );
  SDFFRQX1M \mem_reg[1][5]  ( .D(n98), .SI(\mem[1][4] ), .SE(n207), .CK(clk), 
        .RN(n181), .Q(\mem[1][5] ) );
  SDFFRQX1M \mem_reg[1][4]  ( .D(n97), .SI(\mem[1][3] ), .SE(n206), .CK(clk), 
        .RN(n181), .Q(\mem[1][4] ) );
  SDFFRQX1M \mem_reg[1][3]  ( .D(n96), .SI(\mem[1][2] ), .SE(n209), .CK(clk), 
        .RN(n180), .Q(\mem[1][3] ) );
  SDFFRQX1M \mem_reg[1][2]  ( .D(n95), .SI(\mem[1][1] ), .SE(n208), .CK(clk), 
        .RN(n180), .Q(\mem[1][2] ) );
  SDFFRQX1M \mem_reg[1][1]  ( .D(n94), .SI(\mem[1][0] ), .SE(n207), .CK(clk), 
        .RN(n180), .Q(\mem[1][1] ) );
  SDFFRQX1M \mem_reg[1][0]  ( .D(n93), .SI(\mem[0][7] ), .SE(n206), .CK(clk), 
        .RN(n180), .Q(\mem[1][0] ) );
  SDFFRQX1M \mem_reg[0][7]  ( .D(n92), .SI(\mem[0][6] ), .SE(n209), .CK(clk), 
        .RN(n180), .Q(\mem[0][7] ) );
  SDFFRQX1M \mem_reg[0][6]  ( .D(n91), .SI(\mem[0][5] ), .SE(n208), .CK(clk), 
        .RN(n180), .Q(\mem[0][6] ) );
  SDFFRQX1M \mem_reg[0][5]  ( .D(n90), .SI(\mem[0][4] ), .SE(n207), .CK(clk), 
        .RN(n180), .Q(\mem[0][5] ) );
  SDFFRQX1M \mem_reg[0][4]  ( .D(n89), .SI(\mem[0][3] ), .SE(n206), .CK(clk), 
        .RN(n180), .Q(\mem[0][4] ) );
  SDFFRQX1M \mem_reg[0][3]  ( .D(n88), .SI(\mem[0][2] ), .SE(n209), .CK(clk), 
        .RN(n180), .Q(\mem[0][3] ) );
  SDFFRQX1M \mem_reg[0][2]  ( .D(n87), .SI(\mem[0][1] ), .SE(n208), .CK(clk), 
        .RN(n180), .Q(\mem[0][2] ) );
  SDFFRQX1M \mem_reg[0][1]  ( .D(n86), .SI(\mem[0][0] ), .SE(n207), .CK(clk), 
        .RN(n180), .Q(\mem[0][1] ) );
  SDFFRQX1M \mem_reg[0][0]  ( .D(n85), .SI(test_si1), .SE(n206), .CK(clk), 
        .RN(n180), .Q(\mem[0][0] ) );
  SDFFRQX1M \mem_reg[5][7]  ( .D(n132), .SI(\mem[5][6] ), .SE(n209), .CK(clk), 
        .RN(n183), .Q(\mem[5][7] ) );
  SDFFRQX1M \mem_reg[5][6]  ( .D(n131), .SI(\mem[5][5] ), .SE(n208), .CK(clk), 
        .RN(n183), .Q(\mem[5][6] ) );
  SDFFRQX1M \mem_reg[5][5]  ( .D(n130), .SI(\mem[5][4] ), .SE(n207), .CK(clk), 
        .RN(n183), .Q(\mem[5][5] ) );
  SDFFRQX1M \mem_reg[5][4]  ( .D(n129), .SI(\mem[5][3] ), .SE(n206), .CK(clk), 
        .RN(n183), .Q(\mem[5][4] ) );
  SDFFRQX1M \mem_reg[5][3]  ( .D(n128), .SI(\mem[5][2] ), .SE(n209), .CK(clk), 
        .RN(n183), .Q(\mem[5][3] ) );
  SDFFRQX1M \mem_reg[5][2]  ( .D(n127), .SI(\mem[5][1] ), .SE(n208), .CK(clk), 
        .RN(n183), .Q(\mem[5][2] ) );
  SDFFRQX1M \mem_reg[5][1]  ( .D(n126), .SI(\mem[5][0] ), .SE(n207), .CK(clk), 
        .RN(n183), .Q(\mem[5][1] ) );
  SDFFRQX1M \mem_reg[5][0]  ( .D(n125), .SI(\mem[4][7] ), .SE(n206), .CK(clk), 
        .RN(n183), .Q(\mem[5][0] ) );
  SDFFRQX1M \mem_reg[4][7]  ( .D(n124), .SI(\mem[4][6] ), .SE(n209), .CK(clk), 
        .RN(n183), .Q(\mem[4][7] ) );
  SDFFRQX1M \mem_reg[4][6]  ( .D(n123), .SI(\mem[4][5] ), .SE(n208), .CK(clk), 
        .RN(n183), .Q(\mem[4][6] ) );
  SDFFRQX1M \mem_reg[4][5]  ( .D(n122), .SI(\mem[4][4] ), .SE(n207), .CK(clk), 
        .RN(n183), .Q(\mem[4][5] ) );
  SDFFRQX1M \mem_reg[4][4]  ( .D(n121), .SI(\mem[4][3] ), .SE(n206), .CK(clk), 
        .RN(n183), .Q(\mem[4][4] ) );
  SDFFRQX1M \mem_reg[4][3]  ( .D(n120), .SI(\mem[4][2] ), .SE(n209), .CK(clk), 
        .RN(n182), .Q(\mem[4][3] ) );
  SDFFRQX1M \mem_reg[4][2]  ( .D(n119), .SI(\mem[4][1] ), .SE(n208), .CK(clk), 
        .RN(n182), .Q(\mem[4][2] ) );
  SDFFRQX1M \mem_reg[4][1]  ( .D(n118), .SI(\mem[4][0] ), .SE(n207), .CK(clk), 
        .RN(n182), .Q(\mem[4][1] ) );
  SDFFRQX1M \mem_reg[4][0]  ( .D(n117), .SI(\mem[3][7] ), .SE(n206), .CK(clk), 
        .RN(n182), .Q(\mem[4][0] ) );
  SDFFRQX1M \mem_reg[7][7]  ( .D(n148), .SI(\mem[7][6] ), .SE(n209), .CK(clk), 
        .RN(n185), .Q(\mem[7][7] ) );
  SDFFRQX1M \mem_reg[7][6]  ( .D(n147), .SI(\mem[7][5] ), .SE(n208), .CK(clk), 
        .RN(n185), .Q(\mem[7][6] ) );
  SDFFRQX1M \mem_reg[7][5]  ( .D(n146), .SI(\mem[7][4] ), .SE(n207), .CK(clk), 
        .RN(n185), .Q(\mem[7][5] ) );
  SDFFRQX1M \mem_reg[7][4]  ( .D(n145), .SI(\mem[7][3] ), .SE(n206), .CK(clk), 
        .RN(n185), .Q(\mem[7][4] ) );
  SDFFRQX1M \mem_reg[7][3]  ( .D(n144), .SI(\mem[7][2] ), .SE(n209), .CK(clk), 
        .RN(n184), .Q(\mem[7][3] ) );
  SDFFRQX1M \mem_reg[7][2]  ( .D(n143), .SI(\mem[7][1] ), .SE(n208), .CK(clk), 
        .RN(n184), .Q(\mem[7][2] ) );
  SDFFRQX1M \mem_reg[7][1]  ( .D(n142), .SI(\mem[7][0] ), .SE(n207), .CK(clk), 
        .RN(n184), .Q(\mem[7][1] ) );
  SDFFRQX1M \mem_reg[7][0]  ( .D(n141), .SI(\mem[6][7] ), .SE(n206), .CK(clk), 
        .RN(n184), .Q(\mem[7][0] ) );
  SDFFRQX1M \mem_reg[6][7]  ( .D(n140), .SI(\mem[6][6] ), .SE(n209), .CK(clk), 
        .RN(n184), .Q(\mem[6][7] ) );
  SDFFRQX1M \mem_reg[6][6]  ( .D(n139), .SI(\mem[6][5] ), .SE(n208), .CK(clk), 
        .RN(n184), .Q(\mem[6][6] ) );
  SDFFRQX1M \mem_reg[6][5]  ( .D(n138), .SI(\mem[6][4] ), .SE(n207), .CK(clk), 
        .RN(n184), .Q(\mem[6][5] ) );
  SDFFRQX1M \mem_reg[6][4]  ( .D(n137), .SI(\mem[6][3] ), .SE(n206), .CK(clk), 
        .RN(n184), .Q(\mem[6][4] ) );
  SDFFRQX1M \mem_reg[6][3]  ( .D(n136), .SI(\mem[6][2] ), .SE(n209), .CK(clk), 
        .RN(n184), .Q(\mem[6][3] ) );
  SDFFRQX1M \mem_reg[6][2]  ( .D(n135), .SI(\mem[6][1] ), .SE(n208), .CK(clk), 
        .RN(n184), .Q(\mem[6][2] ) );
  SDFFRQX1M \mem_reg[6][1]  ( .D(n134), .SI(\mem[6][0] ), .SE(n207), .CK(clk), 
        .RN(n184), .Q(\mem[6][1] ) );
  SDFFRQX1M \mem_reg[6][0]  ( .D(n133), .SI(\mem[5][7] ), .SE(n206), .CK(clk), 
        .RN(n184), .Q(\mem[6][0] ) );
  SDFFRQX1M \mem_reg[3][7]  ( .D(n116), .SI(\mem[3][6] ), .SE(n209), .CK(clk), 
        .RN(n182), .Q(\mem[3][7] ) );
  SDFFRQX1M \mem_reg[3][6]  ( .D(n115), .SI(\mem[3][5] ), .SE(n208), .CK(clk), 
        .RN(n182), .Q(\mem[3][6] ) );
  SDFFRQX1M \mem_reg[3][5]  ( .D(n114), .SI(\mem[3][4] ), .SE(n207), .CK(clk), 
        .RN(n182), .Q(\mem[3][5] ) );
  SDFFRQX1M \mem_reg[3][4]  ( .D(n113), .SI(\mem[3][3] ), .SE(n206), .CK(clk), 
        .RN(n182), .Q(\mem[3][4] ) );
  SDFFRQX1M \mem_reg[3][3]  ( .D(n112), .SI(\mem[3][2] ), .SE(n209), .CK(clk), 
        .RN(n182), .Q(\mem[3][3] ) );
  SDFFRQX1M \mem_reg[3][2]  ( .D(n111), .SI(\mem[3][1] ), .SE(n208), .CK(clk), 
        .RN(n182), .Q(\mem[3][2] ) );
  SDFFRQX1M \mem_reg[3][1]  ( .D(n110), .SI(\mem[3][0] ), .SE(n207), .CK(clk), 
        .RN(n182), .Q(\mem[3][1] ) );
  SDFFRQX1M \mem_reg[3][0]  ( .D(n109), .SI(\mem[2][7] ), .SE(n206), .CK(clk), 
        .RN(n182), .Q(\mem[3][0] ) );
  SDFFRQX1M \mem_reg[2][7]  ( .D(n108), .SI(\mem[2][6] ), .SE(n209), .CK(clk), 
        .RN(n181), .Q(\mem[2][7] ) );
  SDFFRQX1M \mem_reg[2][6]  ( .D(n107), .SI(\mem[2][5] ), .SE(n208), .CK(clk), 
        .RN(n181), .Q(\mem[2][6] ) );
  SDFFRQX1M \mem_reg[2][5]  ( .D(n106), .SI(\mem[2][4] ), .SE(n207), .CK(clk), 
        .RN(n181), .Q(\mem[2][5] ) );
  SDFFRQX1M \mem_reg[2][4]  ( .D(n105), .SI(\mem[2][3] ), .SE(n206), .CK(clk), 
        .RN(n181), .Q(\mem[2][4] ) );
  SDFFRQX1M \mem_reg[2][3]  ( .D(n104), .SI(\mem[2][2] ), .SE(n209), .CK(clk), 
        .RN(n181), .Q(\mem[2][3] ) );
  SDFFRQX1M \mem_reg[2][2]  ( .D(n103), .SI(\mem[2][1] ), .SE(n208), .CK(clk), 
        .RN(n181), .Q(\mem[2][2] ) );
  SDFFRQX1M \mem_reg[2][1]  ( .D(n102), .SI(\mem[2][0] ), .SE(n207), .CK(clk), 
        .RN(n181), .Q(\mem[2][1] ) );
  SDFFRQX1M \mem_reg[2][0]  ( .D(n101), .SI(test_si2), .SE(n206), .CK(clk), 
        .RN(n181), .Q(\mem[2][0] ) );
  BUFX2M U66 ( .A(n78), .Y(n189) );
  BUFX2M U67 ( .A(n82), .Y(n188) );
  BUFX2M U68 ( .A(n83), .Y(n187) );
  BUFX2M U69 ( .A(n84), .Y(n186) );
  BUFX2M U70 ( .A(n178), .Y(n180) );
  BUFX2M U71 ( .A(n178), .Y(n181) );
  BUFX2M U72 ( .A(n178), .Y(n182) );
  BUFX2M U73 ( .A(n179), .Y(n183) );
  BUFX2M U74 ( .A(n179), .Y(n184) );
  BUFX2M U75 ( .A(n179), .Y(n185) );
  BUFX2M U76 ( .A(rst_n), .Y(n178) );
  BUFX2M U77 ( .A(rst_n), .Y(n179) );
  NAND3X2M U78 ( .A(n190), .B(n191), .C(n81), .Y(n80) );
  NAND3X2M U79 ( .A(n190), .B(n191), .C(n76), .Y(n75) );
  NOR2X2M U80 ( .A(n175), .B(n176), .Y(n171) );
  NAND3X2M U81 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n79) );
  NAND3X2M U82 ( .A(n76), .B(n191), .C(waddr[0]), .Y(n77) );
  NOR2BX2M U83 ( .AN(wclken), .B(waddr[2]), .Y(n76) );
  NOR2X2M U84 ( .A(n175), .B(N11), .Y(n172) );
  INVX2M U85 ( .A(waddr[1]), .Y(n191) );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n199), .A0N(\mem[0][0] ), .A1N(n75), .Y(n85)
         );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n198), .A0N(\mem[0][1] ), .A1N(n75), .Y(n86)
         );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n197), .A0N(\mem[0][2] ), .A1N(n75), .Y(n87)
         );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n196), .A0N(\mem[0][3] ), .A1N(n75), .Y(n88)
         );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n195), .A0N(\mem[0][4] ), .A1N(n75), .Y(n89)
         );
  OAI2BB2X1M U91 ( .B0(n75), .B1(n194), .A0N(\mem[0][5] ), .A1N(n75), .Y(n90)
         );
  OAI2BB2X1M U92 ( .B0(n75), .B1(n193), .A0N(\mem[0][6] ), .A1N(n75), .Y(n91)
         );
  OAI2BB2X1M U93 ( .B0(n75), .B1(n192), .A0N(\mem[0][7] ), .A1N(n75), .Y(n92)
         );
  OAI2BB2X1M U94 ( .B0(n199), .B1(n79), .A0N(\mem[3][0] ), .A1N(n79), .Y(n109)
         );
  OAI2BB2X1M U95 ( .B0(n198), .B1(n79), .A0N(\mem[3][1] ), .A1N(n79), .Y(n110)
         );
  OAI2BB2X1M U96 ( .B0(n197), .B1(n79), .A0N(\mem[3][2] ), .A1N(n79), .Y(n111)
         );
  OAI2BB2X1M U97 ( .B0(n196), .B1(n79), .A0N(\mem[3][3] ), .A1N(n79), .Y(n112)
         );
  OAI2BB2X1M U98 ( .B0(n195), .B1(n79), .A0N(\mem[3][4] ), .A1N(n79), .Y(n113)
         );
  OAI2BB2X1M U99 ( .B0(n194), .B1(n79), .A0N(\mem[3][5] ), .A1N(n79), .Y(n114)
         );
  OAI2BB2X1M U100 ( .B0(n193), .B1(n79), .A0N(\mem[3][6] ), .A1N(n79), .Y(n115) );
  OAI2BB2X1M U101 ( .B0(n192), .B1(n79), .A0N(\mem[3][7] ), .A1N(n79), .Y(n116) );
  INVX2M U102 ( .A(waddr[0]), .Y(n190) );
  OAI2BB2X1M U103 ( .B0(n199), .B1(n77), .A0N(\mem[1][0] ), .A1N(n77), .Y(n93)
         );
  OAI2BB2X1M U104 ( .B0(n198), .B1(n77), .A0N(\mem[1][1] ), .A1N(n77), .Y(n94)
         );
  OAI2BB2X1M U105 ( .B0(n197), .B1(n77), .A0N(\mem[1][2] ), .A1N(n77), .Y(n95)
         );
  OAI2BB2X1M U106 ( .B0(n196), .B1(n77), .A0N(\mem[1][3] ), .A1N(n77), .Y(n96)
         );
  OAI2BB2X1M U107 ( .B0(n195), .B1(n77), .A0N(\mem[1][4] ), .A1N(n77), .Y(n97)
         );
  OAI2BB2X1M U108 ( .B0(n194), .B1(n77), .A0N(\mem[1][5] ), .A1N(n77), .Y(n98)
         );
  OAI2BB2X1M U109 ( .B0(n193), .B1(n77), .A0N(\mem[1][6] ), .A1N(n77), .Y(n99)
         );
  OAI2BB2X1M U110 ( .B0(n192), .B1(n77), .A0N(n210), .A1N(n77), .Y(n100) );
  OAI2BB2X1M U111 ( .B0(n199), .B1(n80), .A0N(\mem[4][0] ), .A1N(n80), .Y(n117) );
  OAI2BB2X1M U112 ( .B0(n198), .B1(n80), .A0N(\mem[4][1] ), .A1N(n80), .Y(n118) );
  OAI2BB2X1M U113 ( .B0(n197), .B1(n80), .A0N(\mem[4][2] ), .A1N(n80), .Y(n119) );
  OAI2BB2X1M U114 ( .B0(n196), .B1(n80), .A0N(\mem[4][3] ), .A1N(n80), .Y(n120) );
  OAI2BB2X1M U115 ( .B0(n195), .B1(n80), .A0N(\mem[4][4] ), .A1N(n80), .Y(n121) );
  OAI2BB2X1M U116 ( .B0(n194), .B1(n80), .A0N(\mem[4][5] ), .A1N(n80), .Y(n122) );
  OAI2BB2X1M U117 ( .B0(n193), .B1(n80), .A0N(\mem[4][6] ), .A1N(n80), .Y(n123) );
  OAI2BB2X1M U118 ( .B0(n192), .B1(n80), .A0N(\mem[4][7] ), .A1N(n80), .Y(n124) );
  NOR2X2M U119 ( .A(n176), .B(N12), .Y(n169) );
  NOR2X2M U120 ( .A(N11), .B(N12), .Y(n168) );
  INVX2M U121 ( .A(wdata[0]), .Y(n199) );
  INVX2M U122 ( .A(wdata[1]), .Y(n198) );
  INVX2M U123 ( .A(wdata[2]), .Y(n197) );
  INVX2M U124 ( .A(wdata[3]), .Y(n196) );
  INVX2M U125 ( .A(wdata[4]), .Y(n195) );
  INVX2M U126 ( .A(wdata[5]), .Y(n194) );
  INVX2M U127 ( .A(wdata[6]), .Y(n193) );
  INVX2M U128 ( .A(wdata[7]), .Y(n192) );
  OAI2BB2X1M U129 ( .B0(n199), .B1(n189), .A0N(\mem[2][0] ), .A1N(n189), .Y(
        n101) );
  OAI2BB2X1M U130 ( .B0(n198), .B1(n189), .A0N(\mem[2][1] ), .A1N(n189), .Y(
        n102) );
  OAI2BB2X1M U131 ( .B0(n197), .B1(n189), .A0N(\mem[2][2] ), .A1N(n189), .Y(
        n103) );
  OAI2BB2X1M U132 ( .B0(n196), .B1(n189), .A0N(\mem[2][3] ), .A1N(n189), .Y(
        n104) );
  OAI2BB2X1M U133 ( .B0(n195), .B1(n189), .A0N(\mem[2][4] ), .A1N(n189), .Y(
        n105) );
  OAI2BB2X1M U134 ( .B0(n194), .B1(n189), .A0N(\mem[2][5] ), .A1N(n189), .Y(
        n106) );
  OAI2BB2X1M U135 ( .B0(n193), .B1(n189), .A0N(\mem[2][6] ), .A1N(n189), .Y(
        n107) );
  OAI2BB2X1M U136 ( .B0(n192), .B1(n189), .A0N(\mem[2][7] ), .A1N(n189), .Y(
        n108) );
  OAI2BB2X1M U137 ( .B0(n199), .B1(n188), .A0N(\mem[5][0] ), .A1N(n188), .Y(
        n125) );
  OAI2BB2X1M U138 ( .B0(n198), .B1(n188), .A0N(\mem[5][1] ), .A1N(n188), .Y(
        n126) );
  OAI2BB2X1M U139 ( .B0(n197), .B1(n188), .A0N(\mem[5][2] ), .A1N(n188), .Y(
        n127) );
  OAI2BB2X1M U140 ( .B0(n196), .B1(n188), .A0N(\mem[5][3] ), .A1N(n188), .Y(
        n128) );
  OAI2BB2X1M U141 ( .B0(n195), .B1(n188), .A0N(\mem[5][4] ), .A1N(n188), .Y(
        n129) );
  OAI2BB2X1M U142 ( .B0(n194), .B1(n188), .A0N(\mem[5][5] ), .A1N(n188), .Y(
        n130) );
  OAI2BB2X1M U143 ( .B0(n193), .B1(n188), .A0N(\mem[5][6] ), .A1N(n188), .Y(
        n131) );
  OAI2BB2X1M U144 ( .B0(n192), .B1(n188), .A0N(\mem[5][7] ), .A1N(n188), .Y(
        n132) );
  OAI2BB2X1M U145 ( .B0(n199), .B1(n187), .A0N(\mem[6][0] ), .A1N(n187), .Y(
        n133) );
  OAI2BB2X1M U146 ( .B0(n198), .B1(n187), .A0N(\mem[6][1] ), .A1N(n187), .Y(
        n134) );
  OAI2BB2X1M U147 ( .B0(n197), .B1(n187), .A0N(\mem[6][2] ), .A1N(n187), .Y(
        n135) );
  OAI2BB2X1M U148 ( .B0(n196), .B1(n187), .A0N(\mem[6][3] ), .A1N(n187), .Y(
        n136) );
  OAI2BB2X1M U149 ( .B0(n195), .B1(n187), .A0N(\mem[6][4] ), .A1N(n187), .Y(
        n137) );
  OAI2BB2X1M U150 ( .B0(n194), .B1(n187), .A0N(\mem[6][5] ), .A1N(n187), .Y(
        n138) );
  OAI2BB2X1M U151 ( .B0(n193), .B1(n187), .A0N(\mem[6][6] ), .A1N(n187), .Y(
        n139) );
  OAI2BB2X1M U152 ( .B0(n192), .B1(n187), .A0N(\mem[6][7] ), .A1N(n187), .Y(
        n140) );
  OAI2BB2X1M U153 ( .B0(n199), .B1(n186), .A0N(\mem[7][0] ), .A1N(n186), .Y(
        n141) );
  OAI2BB2X1M U154 ( .B0(n198), .B1(n186), .A0N(\mem[7][1] ), .A1N(n186), .Y(
        n142) );
  OAI2BB2X1M U155 ( .B0(n197), .B1(n186), .A0N(\mem[7][2] ), .A1N(n186), .Y(
        n143) );
  OAI2BB2X1M U156 ( .B0(n196), .B1(n186), .A0N(\mem[7][3] ), .A1N(n186), .Y(
        n144) );
  OAI2BB2X1M U157 ( .B0(n195), .B1(n186), .A0N(\mem[7][4] ), .A1N(n186), .Y(
        n145) );
  OAI2BB2X1M U158 ( .B0(n194), .B1(n186), .A0N(\mem[7][5] ), .A1N(n186), .Y(
        n146) );
  OAI2BB2X1M U159 ( .B0(n193), .B1(n186), .A0N(\mem[7][6] ), .A1N(n186), .Y(
        n147) );
  OAI2BB2X1M U160 ( .B0(n192), .B1(n186), .A0N(\mem[7][7] ), .A1N(n186), .Y(
        n148) );
  AND2X2M U161 ( .A(waddr[2]), .B(wclken), .Y(n81) );
  NAND3X2M U162 ( .A(n76), .B(n190), .C(waddr[1]), .Y(n78) );
  NAND3X2M U163 ( .A(waddr[1]), .B(n190), .C(n81), .Y(n83) );
  NAND3X2M U164 ( .A(waddr[1]), .B(waddr[0]), .C(n81), .Y(n84) );
  NAND3X2M U165 ( .A(waddr[0]), .B(n191), .C(n81), .Y(n82) );
  INVX2M U166 ( .A(N11), .Y(n176) );
  INVX2M U167 ( .A(N12), .Y(n175) );
  INVX2M U168 ( .A(N10), .Y(n177) );
  AO22X1M U169 ( .A0(\mem[3][0] ), .A1(n169), .B0(\mem[1][0] ), .B1(n168), .Y(
        n65) );
  AOI221XLM U170 ( .A0(\mem[5][0] ), .A1(n172), .B0(\mem[7][0] ), .B1(n171), 
        .C0(n65), .Y(n68) );
  AO22X1M U171 ( .A0(\mem[2][0] ), .A1(n169), .B0(\mem[0][0] ), .B1(n168), .Y(
        n66) );
  AOI221XLM U172 ( .A0(\mem[4][0] ), .A1(n172), .B0(\mem[6][0] ), .B1(n171), 
        .C0(n66), .Y(n67) );
  OAI22X1M U173 ( .A0(n177), .A1(n68), .B0(N10), .B1(n67), .Y(rdata[0]) );
  AO22X1M U174 ( .A0(\mem[3][1] ), .A1(n169), .B0(\mem[1][1] ), .B1(n168), .Y(
        n69) );
  AOI221XLM U175 ( .A0(\mem[5][1] ), .A1(n172), .B0(\mem[7][1] ), .B1(n171), 
        .C0(n69), .Y(n72) );
  AO22X1M U176 ( .A0(\mem[2][1] ), .A1(n169), .B0(\mem[0][1] ), .B1(n168), .Y(
        n70) );
  AOI221XLM U177 ( .A0(\mem[4][1] ), .A1(n172), .B0(\mem[6][1] ), .B1(n171), 
        .C0(n70), .Y(n71) );
  OAI22X1M U178 ( .A0(n177), .A1(n72), .B0(N10), .B1(n71), .Y(rdata[1]) );
  AO22X1M U179 ( .A0(\mem[3][2] ), .A1(n169), .B0(\mem[1][2] ), .B1(n168), .Y(
        n73) );
  AOI221XLM U180 ( .A0(\mem[5][2] ), .A1(n172), .B0(\mem[7][2] ), .B1(n171), 
        .C0(n73), .Y(n150) );
  AO22X1M U181 ( .A0(\mem[2][2] ), .A1(n169), .B0(\mem[0][2] ), .B1(n168), .Y(
        n74) );
  AOI221XLM U182 ( .A0(\mem[4][2] ), .A1(n172), .B0(\mem[6][2] ), .B1(n171), 
        .C0(n74), .Y(n149) );
  OAI22X1M U183 ( .A0(n177), .A1(n150), .B0(N10), .B1(n149), .Y(rdata[2]) );
  AO22X1M U184 ( .A0(\mem[3][3] ), .A1(n169), .B0(\mem[1][3] ), .B1(n168), .Y(
        n151) );
  AOI221XLM U185 ( .A0(\mem[5][3] ), .A1(n172), .B0(\mem[7][3] ), .B1(n171), 
        .C0(n151), .Y(n154) );
  AO22X1M U186 ( .A0(\mem[2][3] ), .A1(n169), .B0(\mem[0][3] ), .B1(n168), .Y(
        n152) );
  AOI221XLM U187 ( .A0(\mem[4][3] ), .A1(n172), .B0(\mem[6][3] ), .B1(n171), 
        .C0(n152), .Y(n153) );
  OAI22X1M U188 ( .A0(n177), .A1(n154), .B0(N10), .B1(n153), .Y(rdata[3]) );
  AO22X1M U189 ( .A0(\mem[3][4] ), .A1(n169), .B0(\mem[1][4] ), .B1(n168), .Y(
        n155) );
  AOI221XLM U190 ( .A0(\mem[5][4] ), .A1(n172), .B0(\mem[7][4] ), .B1(n171), 
        .C0(n155), .Y(n158) );
  AO22X1M U191 ( .A0(\mem[2][4] ), .A1(n169), .B0(\mem[0][4] ), .B1(n168), .Y(
        n156) );
  AOI221XLM U192 ( .A0(\mem[4][4] ), .A1(n172), .B0(\mem[6][4] ), .B1(n171), 
        .C0(n156), .Y(n157) );
  OAI22X1M U193 ( .A0(n177), .A1(n158), .B0(N10), .B1(n157), .Y(rdata[4]) );
  AO22X1M U194 ( .A0(\mem[3][5] ), .A1(n169), .B0(\mem[1][5] ), .B1(n168), .Y(
        n159) );
  AOI221XLM U195 ( .A0(\mem[5][5] ), .A1(n172), .B0(\mem[7][5] ), .B1(n171), 
        .C0(n159), .Y(n162) );
  AO22X1M U196 ( .A0(\mem[2][5] ), .A1(n169), .B0(\mem[0][5] ), .B1(n168), .Y(
        n160) );
  AOI221XLM U197 ( .A0(\mem[4][5] ), .A1(n172), .B0(\mem[6][5] ), .B1(n171), 
        .C0(n160), .Y(n161) );
  OAI22X1M U198 ( .A0(n177), .A1(n162), .B0(N10), .B1(n161), .Y(rdata[5]) );
  AO22X1M U199 ( .A0(\mem[3][6] ), .A1(n169), .B0(\mem[1][6] ), .B1(n168), .Y(
        n163) );
  AOI221XLM U200 ( .A0(\mem[5][6] ), .A1(n172), .B0(\mem[7][6] ), .B1(n171), 
        .C0(n163), .Y(n166) );
  AO22X1M U201 ( .A0(\mem[2][6] ), .A1(n169), .B0(\mem[0][6] ), .B1(n168), .Y(
        n164) );
  AOI221XLM U202 ( .A0(\mem[4][6] ), .A1(n172), .B0(\mem[6][6] ), .B1(n171), 
        .C0(n164), .Y(n165) );
  OAI22X1M U203 ( .A0(n177), .A1(n166), .B0(N10), .B1(n165), .Y(rdata[6]) );
  AO22X1M U204 ( .A0(\mem[3][7] ), .A1(n169), .B0(n210), .B1(n168), .Y(n167)
         );
  AOI221XLM U205 ( .A0(\mem[5][7] ), .A1(n172), .B0(\mem[7][7] ), .B1(n171), 
        .C0(n167), .Y(n174) );
  AO22X1M U206 ( .A0(\mem[2][7] ), .A1(n169), .B0(\mem[0][7] ), .B1(n168), .Y(
        n170) );
  AOI221XLM U207 ( .A0(\mem[4][7] ), .A1(n172), .B0(\mem[6][7] ), .B1(n171), 
        .C0(n170), .Y(n173) );
  OAI22X1M U208 ( .A0(n174), .A1(n177), .B0(N10), .B1(n173), .Y(rdata[7]) );
  INVXLM U209 ( .A(test_so1), .Y(n203) );
  INVXLM U210 ( .A(n203), .Y(n204) );
  INVXLM U211 ( .A(test_se), .Y(n205) );
  INVXLM U212 ( .A(n205), .Y(n206) );
  INVXLM U213 ( .A(n205), .Y(n207) );
  INVXLM U214 ( .A(n205), .Y(n208) );
  INVXLM U215 ( .A(n205), .Y(n209) );
  DLY1X1M U216 ( .A(n204), .Y(n210) );
  INVXLM U2 ( .A(\mem[1][7] ), .Y(n1) );
  INVX2M U3 ( .A(n1), .Y(test_so1) );
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


module FIFO_WR_FIFO_DEPTH8_test_1 ( clk, wrst_n, winc, wq2_rptr, wfull, waddr, 
        wptr_reg, test_si, test_se );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] wptr_reg;
  input clk, wrst_n, winc, test_si, test_se;
  output wfull;
  wire   \wptr_bin[3] , n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22;
  wire   [3:0] wptr;

  SDFFRQX1M \wptr_bin_reg[3]  ( .D(n19), .SI(waddr[2]), .SE(test_se), .CK(clk), 
        .RN(wrst_n), .Q(\wptr_bin[3] ) );
  SDFFRQX1M \wptr_bin_reg[2]  ( .D(n20), .SI(waddr[1]), .SE(test_se), .CK(clk), 
        .RN(wrst_n), .Q(waddr[2]) );
  SDFFRQX1M \wptr_reg_reg[3]  ( .D(wptr[3]), .SI(wptr_reg[2]), .SE(test_se), 
        .CK(clk), .RN(wrst_n), .Q(wptr_reg[3]) );
  SDFFRQX1M \wptr_reg_reg[2]  ( .D(wptr[2]), .SI(wptr_reg[1]), .SE(test_se), 
        .CK(clk), .RN(wrst_n), .Q(wptr_reg[2]) );
  SDFFRQX1M \wptr_reg_reg[1]  ( .D(wptr[1]), .SI(wptr_reg[0]), .SE(test_se), 
        .CK(clk), .RN(wrst_n), .Q(wptr_reg[1]) );
  SDFFRQX1M \wptr_reg_reg[0]  ( .D(wptr[0]), .SI(\wptr_bin[3] ), .SE(test_se), 
        .CK(clk), .RN(wrst_n), .Q(wptr_reg[0]) );
  SDFFRQX1M \wptr_bin_reg[1]  ( .D(n21), .SI(waddr[0]), .SE(test_se), .CK(clk), 
        .RN(wrst_n), .Q(waddr[1]) );
  SDFFRQX1M \wptr_bin_reg[0]  ( .D(n22), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(wrst_n), .Q(waddr[0]) );
  NAND2X2M U11 ( .A(winc), .B(n14), .Y(n13) );
  INVX2M U12 ( .A(n14), .Y(wfull) );
  XNOR2X2M U13 ( .A(wq2_rptr[1]), .B(wptr[1]), .Y(n15) );
  NOR2BX2M U14 ( .AN(waddr[0]), .B(n13), .Y(n12) );
  XNOR2X2M U15 ( .A(waddr[2]), .B(n11), .Y(n20) );
  XNOR2X2M U16 ( .A(waddr[0]), .B(n13), .Y(n22) );
  NAND4X2M U17 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n14) );
  CLKXOR2X2M U18 ( .A(wq2_rptr[2]), .B(wptr[2]), .Y(n17) );
  CLKXOR2X2M U19 ( .A(wq2_rptr[3]), .B(wptr[3]), .Y(n18) );
  XNOR2X2M U20 ( .A(wq2_rptr[0]), .B(wptr[0]), .Y(n16) );
  NAND2X2M U21 ( .A(waddr[1]), .B(n12), .Y(n11) );
  CLKXOR2X2M U22 ( .A(waddr[1]), .B(n12), .Y(n21) );
  CLKXOR2X2M U23 ( .A(\wptr_bin[3] ), .B(n10), .Y(n19) );
  NOR2BX2M U24 ( .AN(waddr[2]), .B(n11), .Y(n10) );
  bin_2_gray_WIDTH4_0 B2G ( .bin_in({\wptr_bin[3] , waddr}), .gray_out(wptr)
         );
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


module FIFO_RD_FIFO_DEPTH8_test_1 ( clk, rrst_n, rinc, rq2_wptr, rempty, raddr, 
        rptr_reg, test_si, test_se );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr_reg;
  input clk, rrst_n, rinc, test_si, test_se;
  output rempty;
  wire   \rptr_bin[3] , n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22;
  wire   [3:0] rptr;

  SDFFRQX2M \rptr_bin_reg[3]  ( .D(n19), .SI(raddr[2]), .SE(test_se), .CK(clk), 
        .RN(rrst_n), .Q(\rptr_bin[3] ) );
  SDFFRQX2M \rptr_bin_reg[0]  ( .D(n22), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rrst_n), .Q(raddr[0]) );
  SDFFRQX2M \rptr_bin_reg[2]  ( .D(n20), .SI(raddr[1]), .SE(test_se), .CK(clk), 
        .RN(rrst_n), .Q(raddr[2]) );
  SDFFRQX2M \rptr_bin_reg[1]  ( .D(n21), .SI(raddr[0]), .SE(test_se), .CK(clk), 
        .RN(rrst_n), .Q(raddr[1]) );
  SDFFRQX2M \rptr_reg_reg[3]  ( .D(rptr[3]), .SI(rptr_reg[2]), .SE(test_se), 
        .CK(clk), .RN(rrst_n), .Q(rptr_reg[3]) );
  SDFFRQX2M \rptr_reg_reg[2]  ( .D(rptr[2]), .SI(rptr_reg[1]), .SE(test_se), 
        .CK(clk), .RN(rrst_n), .Q(rptr_reg[2]) );
  SDFFRQX2M \rptr_reg_reg[1]  ( .D(rptr[1]), .SI(rptr_reg[0]), .SE(test_se), 
        .CK(clk), .RN(rrst_n), .Q(rptr_reg[1]) );
  SDFFRQX2M \rptr_reg_reg[0]  ( .D(rptr[0]), .SI(\rptr_bin[3] ), .SE(test_se), 
        .CK(clk), .RN(rrst_n), .Q(rptr_reg[0]) );
  INVX2M U11 ( .A(n14), .Y(rempty) );
  XNOR2X2M U12 ( .A(rq2_wptr[1]), .B(rptr[1]), .Y(n15) );
  NOR2BX2M U13 ( .AN(raddr[0]), .B(n13), .Y(n12) );
  XNOR2X2M U14 ( .A(raddr[2]), .B(n11), .Y(n20) );
  XNOR2X2M U15 ( .A(raddr[0]), .B(n13), .Y(n22) );
  NAND4X2M U16 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n14) );
  XNOR2X2M U17 ( .A(rq2_wptr[3]), .B(rptr[3]), .Y(n17) );
  XNOR2X2M U18 ( .A(rq2_wptr[2]), .B(rptr[2]), .Y(n18) );
  XNOR2X2M U19 ( .A(rq2_wptr[0]), .B(rptr[0]), .Y(n16) );
  NAND2X2M U20 ( .A(raddr[1]), .B(n12), .Y(n11) );
  NAND2X2M U21 ( .A(rinc), .B(n14), .Y(n13) );
  CLKXOR2X2M U22 ( .A(raddr[1]), .B(n12), .Y(n21) );
  CLKXOR2X2M U23 ( .A(\rptr_bin[3] ), .B(n10), .Y(n19) );
  NOR2BX2M U24 ( .AN(raddr[2]), .B(n11), .Y(n10) );
  bin_2_gray_WIDTH4_1 B2G ( .bin_in({\rptr_bin[3] , raddr}), .gray_out(rptr)
         );
endmodule


module Double_FF_FIFO_DEPTH8_test_1 ( rst_n, clk, unsync_data, sync_data, 
        test_si, test_se );
  input [3:0] unsync_data;
  output [3:0] sync_data;
  input rst_n, clk, test_si, test_se;

  wire   [3:0] D_FF;

  SDFFRQX2M \sync_data_reg[3]  ( .D(D_FF[3]), .SI(sync_data[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_data[3]) );
  SDFFRQX2M \sync_data_reg[2]  ( .D(D_FF[2]), .SI(sync_data[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_data[2]) );
  SDFFRQX2M \sync_data_reg[1]  ( .D(D_FF[1]), .SI(sync_data[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_data[1]) );
  SDFFRQX2M \sync_data_reg[0]  ( .D(D_FF[0]), .SI(D_FF[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_data[0]) );
  SDFFRQX2M \D_FF_reg[3]  ( .D(unsync_data[3]), .SI(D_FF[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(D_FF[3]) );
  SDFFRQX2M \D_FF_reg[2]  ( .D(unsync_data[2]), .SI(D_FF[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(D_FF[2]) );
  SDFFRQX2M \D_FF_reg[1]  ( .D(unsync_data[1]), .SI(D_FF[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(D_FF[1]) );
  SDFFRQX2M \D_FF_reg[0]  ( .D(unsync_data[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(D_FF[0]) );
endmodule


module Double_FF_FIFO_DEPTH8_test_0 ( rst_n, clk, unsync_data, sync_data, 
        test_si, test_se );
  input [3:0] unsync_data;
  output [3:0] sync_data;
  input rst_n, clk, test_si, test_se;

  wire   [3:0] D_FF;

  SDFFRQX1M \sync_data_reg[1]  ( .D(D_FF[1]), .SI(sync_data[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_data[1]) );
  SDFFRQX1M \sync_data_reg[0]  ( .D(D_FF[0]), .SI(D_FF[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(sync_data[0]) );
  SDFFRQX1M \sync_data_reg[3]  ( .D(D_FF[3]), .SI(sync_data[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_data[3]) );
  SDFFRQX1M \sync_data_reg[2]  ( .D(D_FF[2]), .SI(sync_data[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_data[2]) );
  SDFFRQX1M \D_FF_reg[3]  ( .D(unsync_data[3]), .SI(D_FF[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(D_FF[3]) );
  SDFFRQX1M \D_FF_reg[2]  ( .D(unsync_data[2]), .SI(D_FF[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(D_FF[2]) );
  SDFFRQX1M \D_FF_reg[1]  ( .D(unsync_data[1]), .SI(D_FF[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(D_FF[1]) );
  SDFFRQX1M \D_FF_reg[0]  ( .D(unsync_data[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(D_FF[0]) );
endmodule


module FIFO_top_DATA_WIDTH8_FIFO_DEPTH8_test_1 ( w_clk, w_rst, w_inc, r_clk, 
        r_rst, r_inc, wr_data, full, empty, rd_data, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] wr_data;
  output [7:0] rd_data;
  input w_clk, w_rst, w_inc, r_clk, r_rst, r_inc, test_si2, test_si1, test_se;
  output full, empty, test_so2, test_so1;
  wire   wr_en, n2;
  wire   [2:0] wr_addr;
  wire   [2:0] rd_addr;
  wire   [3:0] rptr_sync;
  wire   [3:0] wptr_unsync;
  wire   [3:0] wptr_sync;
  wire   [3:0] rptr_unsync;
  assign test_so2 = wptr_sync[3];

  NOR2BX2M U1 ( .AN(w_inc), .B(full), .Y(wr_en) );
  FIFO_Mem_DATA_WIDTH8_FIFO_DEPTH8_test_1 MEM0 ( .rst_n(w_rst), .clk(w_clk), 
        .wdata(wr_data), .wclken(wr_en), .waddr(wr_addr), .raddr(rd_addr), 
        .rdata(rd_data), .test_si2(test_si2), .test_si1(test_si1), .test_so2(
        n2), .test_so1(test_so1), .test_se(test_se) );
  FIFO_WR_FIFO_DEPTH8_test_1 WR0 ( .clk(w_clk), .wrst_n(w_rst), .winc(w_inc), 
        .wq2_rptr(rptr_sync), .wfull(full), .waddr(wr_addr), .wptr_reg(
        wptr_unsync), .test_si(rptr_unsync[3]), .test_se(test_se) );
  FIFO_RD_FIFO_DEPTH8_test_1 RD0 ( .clk(r_clk), .rrst_n(r_rst), .rinc(r_inc), 
        .rq2_wptr(wptr_sync), .rempty(empty), .raddr(rd_addr), .rptr_reg(
        rptr_unsync), .test_si(n2), .test_se(test_se) );
  Double_FF_FIFO_DEPTH8_test_1 wr2rd_sync ( .rst_n(r_rst), .clk(r_clk), 
        .unsync_data(wptr_unsync), .sync_data(wptr_sync), .test_si(
        rptr_sync[3]), .test_se(test_se) );
  Double_FF_FIFO_DEPTH8_test_0 rd2rwrsync ( .rst_n(w_rst), .clk(w_clk), 
        .unsync_data(rptr_unsync), .sync_data(rptr_sync), .test_si(
        wptr_unsync[3]), .test_se(test_se) );
endmodule


module Pulse_generator_test_1 ( in, clk, rst_n, pulse, test_si, test_so, 
        test_se );
  input in, clk, rst_n, test_si, test_se;
  output pulse, test_so;
  wire   in_reg;
  assign test_so = in_reg;

  SDFFRQX2M in_reg_reg ( .D(in), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(in_reg) );
  NOR2BX2M U4 ( .AN(in), .B(in_reg), .Y(pulse) );
endmodule


module Multi_FF_NUM_STAGES2_test_1 ( bus_en, clk, rst_n, en_sync, test_si, 
        test_se );
  input bus_en, clk, rst_n, test_si, test_se;
  output en_sync;
  wire   \sync_reg[0] ;

  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(en_sync) );
  SDFFRQX1M \sync_reg_reg[0]  ( .D(bus_en), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(\sync_reg[0] ) );
endmodule


module Pulse_generator_test_0 ( in, clk, rst_n, pulse, test_so, test_se );
  input in, clk, rst_n, test_se;
  output pulse, test_so;
  wire   in_reg;
  assign test_so = in_reg;

  SDFFRQX1M in_reg_reg ( .D(in), .SI(in), .SE(test_se), .CK(clk), .RN(rst_n), 
        .Q(in_reg) );
  NOR2BX2M U4 ( .AN(in), .B(in_reg), .Y(pulse) );
endmodule


module DATA_SYNC_NUMBER_STAGES2_BUS_WIDTH8_test_1 ( unsync_bus, bus_enable, 
        clk, rst_n, sync_bus, enable_pulse, test_si, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, clk, rst_n, test_si, test_se;
  output enable_pulse;
  wire   MFF_out, pulse_gen_out, n10, n12;
  wire   [7:0] MUX_out;

  SDFFRQX1M \sync_bus_reg[7]  ( .D(MUX_out[7]), .SI(sync_bus[6]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[7]) );
  SDFFRQX1M \sync_bus_reg[3]  ( .D(MUX_out[3]), .SI(sync_bus[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[3]) );
  SDFFRQX1M \sync_bus_reg[0]  ( .D(MUX_out[0]), .SI(enable_pulse), .SE(test_se), .CK(clk), .RN(rst_n), .Q(sync_bus[0]) );
  SDFFRQX1M \sync_bus_reg[4]  ( .D(MUX_out[4]), .SI(sync_bus[3]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[4]) );
  SDFFRQX1M \sync_bus_reg[6]  ( .D(MUX_out[6]), .SI(sync_bus[5]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[6]) );
  SDFFRQX1M \sync_bus_reg[2]  ( .D(MUX_out[2]), .SI(sync_bus[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[2]) );
  SDFFRQX1M \sync_bus_reg[1]  ( .D(MUX_out[1]), .SI(sync_bus[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[1]) );
  SDFFRQX1M \sync_bus_reg[5]  ( .D(MUX_out[5]), .SI(sync_bus[4]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(sync_bus[5]) );
  SDFFRQX1M enable_pulse_reg ( .D(pulse_gen_out), .SI(n12), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(enable_pulse) );
  INVX2M U12 ( .A(pulse_gen_out), .Y(n10) );
  AO22X1M U13 ( .A0(unsync_bus[0]), .A1(pulse_gen_out), .B0(sync_bus[0]), .B1(
        n10), .Y(MUX_out[0]) );
  AO22X1M U14 ( .A0(unsync_bus[1]), .A1(pulse_gen_out), .B0(sync_bus[1]), .B1(
        n10), .Y(MUX_out[1]) );
  AO22X1M U15 ( .A0(unsync_bus[2]), .A1(pulse_gen_out), .B0(sync_bus[2]), .B1(
        n10), .Y(MUX_out[2]) );
  AO22X1M U16 ( .A0(unsync_bus[3]), .A1(pulse_gen_out), .B0(sync_bus[3]), .B1(
        n10), .Y(MUX_out[3]) );
  AO22X1M U17 ( .A0(unsync_bus[4]), .A1(pulse_gen_out), .B0(sync_bus[4]), .B1(
        n10), .Y(MUX_out[4]) );
  AO22X1M U18 ( .A0(unsync_bus[5]), .A1(pulse_gen_out), .B0(sync_bus[5]), .B1(
        n10), .Y(MUX_out[5]) );
  AO22X1M U19 ( .A0(unsync_bus[6]), .A1(pulse_gen_out), .B0(sync_bus[6]), .B1(
        n10), .Y(MUX_out[6]) );
  AO22X1M U20 ( .A0(unsync_bus[7]), .A1(pulse_gen_out), .B0(sync_bus[7]), .B1(
        n10), .Y(MUX_out[7]) );
  Multi_FF_NUM_STAGES2_test_1 MFF0 ( .bus_en(bus_enable), .clk(clk), .rst_n(
        rst_n), .en_sync(MFF_out), .test_si(test_si), .test_se(test_se) );
  Pulse_generator_test_0 PG0 ( .in(MFF_out), .clk(clk), .rst_n(rst_n), .pulse(
        pulse_gen_out), .test_so(n12), .test_se(test_se) );
endmodule


module FSM_TX_test_1 ( clk, rst_n, valid, ser_done, parity_en, mux_sel, ser_en, 
        busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input clk, rst_n, valid, ser_done, parity_en, test_si, test_se;
  output ser_en, busy, test_so;
  wire   N55, n8, n9, n10, n11, n4, n5, n6, n7;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign test_so = cs[2];
  assign ser_en = N55;

  SDFFRQX2M \cs_reg[1]  ( .D(ns[1]), .SI(cs[0]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(cs[1]) );
  SDFFRQX2M \cs_reg[0]  ( .D(ns[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(cs[0]) );
  SDFFRQX2M \cs_reg[2]  ( .D(ns[2]), .SI(cs[1]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(cs[2]) );
  NAND2X2M U6 ( .A(n9), .B(n7), .Y(busy) );
  INVX2M U7 ( .A(mux_sel[1]), .Y(n6) );
  OAI32X1M U8 ( .A0(n6), .A1(cs[0]), .A2(n8), .B0(cs[1]), .B1(n4), .Y(ns[1])
         );
  INVX2M U9 ( .A(mux_sel[0]), .Y(n4) );
  NOR2X2M U10 ( .A(n5), .B(cs[2]), .Y(mux_sel[0]) );
  NOR2X2M U11 ( .A(ser_done), .B(n11), .Y(N55) );
  AOI22X1M U12 ( .A0(mux_sel[0]), .A1(n7), .B0(mux_sel[1]), .B1(n5), .Y(n11)
         );
  NOR2X2M U13 ( .A(n7), .B(cs[2]), .Y(mux_sel[1]) );
  NOR2X2M U14 ( .A(mux_sel[0]), .B(cs[2]), .Y(n9) );
  NOR2BX2M U15 ( .AN(ser_done), .B(parity_en), .Y(n8) );
  NOR2BX2M U16 ( .AN(n9), .B(n10), .Y(ns[0]) );
  AOI32X1M U17 ( .A0(ser_done), .A1(cs[1]), .A2(parity_en), .B0(valid), .B1(n7), .Y(n10) );
  INVX2M U18 ( .A(cs[1]), .Y(n7) );
  AOI2BB1X2M U19 ( .A0N(n8), .A1N(cs[0]), .B0(n6), .Y(ns[2]) );
  INVX2M U20 ( .A(cs[0]), .Y(n5) );
endmodule


module MUX_TX ( in0, in1, in2, in3, sel, out );
  input [1:0] sel;
  input in0, in1, in2, in3;
  output out;
  wire   n2, n3, n1;

  OAI2B2X4M U1 ( .A1N(sel[1]), .A0(n2), .B0(sel[1]), .B1(n3), .Y(out) );
  AOI22X1M U2 ( .A0(in2), .A1(n1), .B0(in3), .B1(sel[0]), .Y(n2) );
  AOI22X1M U3 ( .A0(in0), .A1(n1), .B0(sel[0]), .B1(in1), .Y(n3) );
  INVX2M U4 ( .A(sel[0]), .Y(n1) );
endmodule


module parallel_2_serial_TX_WIDTH8_test_1 ( rst_n, clk, en, data, done, S_data, 
        test_si, test_se );
  input [7:0] data;
  input rst_n, clk, en, test_si, test_se;
  output done, S_data;
  wire   N4, N10, n1, n2, n5, n7, n9, n11, n12, n13, n14, n15, n16, n17, n18,
         n19;
  wire   [2:0] counter;

  SDFFRQX2M S_data_reg ( .D(n11), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(S_data) );
  SDFFRQX2M \counter_reg[2]  ( .D(n5), .SI(counter[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(counter[2]) );
  SDFFRQX2M done_reg ( .D(N10), .SI(counter[2]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(done) );
  SDFFRQX2M \counter_reg[1]  ( .D(n7), .SI(counter[0]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n9), .SI(S_data), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(counter[0]) );
  XNOR2X2M U3 ( .A(counter[1]), .B(n2), .Y(n7) );
  NAND2X2M U4 ( .A(en), .B(counter[0]), .Y(n2) );
  AO2B2X2M U5 ( .B0(N4), .B1(en), .A0(S_data), .A1N(en), .Y(n11) );
  INVX2M U6 ( .A(counter[0]), .Y(n19) );
  AND3X2M U7 ( .A(counter[2]), .B(counter[0]), .C(counter[1]), .Y(N10) );
  CLKXOR2X2M U8 ( .A(counter[2]), .B(n1), .Y(n5) );
  NOR2BX2M U9 ( .AN(counter[1]), .B(n2), .Y(n1) );
  CLKXOR2X2M U15 ( .A(en), .B(counter[0]), .Y(n9) );
  INVX2M U16 ( .A(counter[1]), .Y(n18) );
  AOI22X1M U17 ( .A0(data[2]), .A1(n19), .B0(data[3]), .B1(counter[0]), .Y(n13) );
  AOI22X1M U18 ( .A0(data[0]), .A1(n19), .B0(data[1]), .B1(counter[0]), .Y(n12) );
  OA22X1M U19 ( .A0(n18), .A1(n13), .B0(counter[1]), .B1(n12), .Y(n17) );
  AOI22X1M U20 ( .A0(data[6]), .A1(n19), .B0(data[7]), .B1(counter[0]), .Y(n15) );
  AOI22X1M U21 ( .A0(data[4]), .A1(n19), .B0(data[5]), .B1(counter[0]), .Y(n14) );
  OAI22X1M U22 ( .A0(n15), .A1(n18), .B0(counter[1]), .B1(n14), .Y(n16) );
  OAI2BB2X1M U23 ( .B0(n17), .B1(counter[2]), .A0N(counter[2]), .A1N(n16), .Y(
        N4) );
endmodule


module Parity_gen_TX_WIDTH8_test_1 ( data, type, valid, clk, rst_n, parity, 
        test_si, test_se );
  input [7:0] data;
  input type, valid, clk, rst_n, test_si, test_se;
  output parity;
  wire   n1, n3, n4, n5, n6, n8, n2;

  SDFFRQX2M parity_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(parity) );
  XOR3XLM U2 ( .A(data[1]), .B(data[0]), .C(n5), .Y(n4) );
  XNOR2X2M U3 ( .A(data[3]), .B(data[2]), .Y(n5) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n2), .A0N(parity), .A1N(n2), .Y(n8) );
  INVX2M U5 ( .A(valid), .Y(n2) );
  XOR3XLM U6 ( .A(n3), .B(type), .C(n4), .Y(n1) );
  XOR3XLM U7 ( .A(data[5]), .B(data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U8 ( .A(data[7]), .B(data[6]), .Y(n6) );
endmodule


module UART_TX_DATA_WIDTH8_test_1 ( clk, rst_n, P_data, data_valid, par_en, 
        par_type, tx_out, busy, test_si, test_so, test_se );
  input [7:0] P_data;
  input clk, rst_n, data_valid, par_en, par_type, test_si, test_se;
  output tx_out, busy, test_so;
  wire   ser_en, ser_done, data_serial, parity, n1, n4, n6, n8, n10, n12, n14,
         n16, n18, n2, n5, n9, n11;
  wire   [7:0] P_data_reg;
  wire   [1:0] mux_sel;
  assign test_so = P_data_reg[7];

  SDFFRQX2M \P_data_reg_reg[5]  ( .D(n12), .SI(P_data_reg[4]), .SE(n11), .CK(
        clk), .RN(rst_n), .Q(P_data_reg[5]) );
  SDFFRQX2M \P_data_reg_reg[1]  ( .D(n4), .SI(P_data_reg[0]), .SE(n11), .CK(
        clk), .RN(rst_n), .Q(P_data_reg[1]) );
  SDFFRQX2M \P_data_reg_reg[0]  ( .D(n18), .SI(ser_done), .SE(n11), .CK(clk), 
        .RN(rst_n), .Q(P_data_reg[0]) );
  SDFFRQX2M \P_data_reg_reg[4]  ( .D(n10), .SI(P_data_reg[3]), .SE(n11), .CK(
        clk), .RN(rst_n), .Q(P_data_reg[4]) );
  SDFFRQX2M \P_data_reg_reg[3]  ( .D(n8), .SI(P_data_reg[2]), .SE(n11), .CK(
        clk), .RN(rst_n), .Q(P_data_reg[3]) );
  SDFFRQX2M \P_data_reg_reg[2]  ( .D(n6), .SI(P_data_reg[1]), .SE(n11), .CK(
        clk), .RN(rst_n), .Q(P_data_reg[2]) );
  SDFFRQX2M \P_data_reg_reg[6]  ( .D(n14), .SI(P_data_reg[5]), .SE(n11), .CK(
        clk), .RN(rst_n), .Q(P_data_reg[6]) );
  SDFFRQX2M \P_data_reg_reg[7]  ( .D(n16), .SI(P_data_reg[6]), .SE(n11), .CK(
        clk), .RN(rst_n), .Q(P_data_reg[7]) );
  INVX2M U3 ( .A(n1), .Y(n2) );
  NAND2BX2M U4 ( .AN(ser_en), .B(data_valid), .Y(n1) );
  AO22X1M U5 ( .A0(P_data_reg[1]), .A1(n1), .B0(P_data[1]), .B1(n2), .Y(n4) );
  AO22X1M U6 ( .A0(P_data_reg[2]), .A1(n1), .B0(P_data[2]), .B1(n2), .Y(n6) );
  AO22X1M U7 ( .A0(P_data_reg[3]), .A1(n1), .B0(P_data[3]), .B1(n2), .Y(n8) );
  AO22X1M U8 ( .A0(P_data_reg[4]), .A1(n1), .B0(P_data[4]), .B1(n2), .Y(n10)
         );
  AO22X1M U9 ( .A0(P_data_reg[5]), .A1(n1), .B0(P_data[5]), .B1(n2), .Y(n12)
         );
  AO22X1M U10 ( .A0(P_data_reg[6]), .A1(n1), .B0(P_data[6]), .B1(n2), .Y(n14)
         );
  AO22X1M U11 ( .A0(P_data_reg[7]), .A1(n1), .B0(P_data[7]), .B1(n2), .Y(n16)
         );
  AO22X1M U12 ( .A0(P_data_reg[0]), .A1(n1), .B0(P_data[0]), .B1(n2), .Y(n18)
         );
  INVXLM U21 ( .A(test_se), .Y(n9) );
  INVXLM U22 ( .A(n9), .Y(n11) );
  FSM_TX_test_1 FSM0 ( .clk(clk), .rst_n(rst_n), .valid(data_valid), 
        .ser_done(ser_done), .parity_en(par_en), .mux_sel(mux_sel), .ser_en(
        ser_en), .busy(busy), .test_si(test_si), .test_so(n5), .test_se(n11)
         );
  MUX_TX M0 ( .in0(1'b1), .in1(1'b0), .in2(data_serial), .in3(parity), .sel(
        mux_sel), .out(tx_out) );
  parallel_2_serial_TX_WIDTH8_test_1 P2S_0 ( .rst_n(rst_n), .clk(clk), .en(
        ser_en), .data(P_data_reg), .done(ser_done), .S_data(data_serial), 
        .test_si(parity), .test_se(n11) );
  Parity_gen_TX_WIDTH8_test_1 P0 ( .data(P_data_reg), .type(par_type), .valid(
        data_valid), .clk(clk), .rst_n(rst_n), .parity(parity), .test_si(n5), 
        .test_se(n11) );
endmodule


module FSM_CU_RX_test_1 ( clk, rst_n, RX_IN, PAR_EN, edge_count, bit_count, 
        start_glitch, par_err, stop_err, presscale, start_chk_en, par_chk_en, 
        stop_chk_en, enable_counter, sampling_en, serial_en, data_valid, 
        stop_error, parity_error, test_si, test_se );
  input [4:0] edge_count;
  input [3:0] bit_count;
  input [5:0] presscale;
  input clk, rst_n, RX_IN, PAR_EN, start_glitch, par_err, stop_err, test_si,
         test_se;
  output start_chk_en, par_chk_en, stop_chk_en, enable_counter, sampling_en,
         serial_en, data_valid, stop_error, parity_error;
  wire   N39, N40, N41, N42, N43, N44, N45, N46, N102, N107, N108, N109, N110,
         N111, N114, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, \sub_198/carry[6] , \sub_198/carry[5] ,
         \sub_198/carry[4] , \sub_198/carry[3] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n21, n22, n23, n24, n25,
         n26, n41, enable_counter, n43, n45;
  wire   [2:0] cs;
  wire   [2:0] ns;
  assign par_chk_en = N102;
  assign N107 = presscale[0];
  assign sampling_en = enable_counter;

  SDFFRQX2M data_valid_reg ( .D(n40), .SI(cs[2]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(data_valid) );
  SDFFRQX2M \cs_reg[1]  ( .D(ns[1]), .SI(cs[0]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(cs[1]) );
  SDFFRQX2M \cs_reg[2]  ( .D(ns[2]), .SI(cs[1]), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(cs[2]) );
  SDFFRQX2M \cs_reg[0]  ( .D(ns[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(cs[0]) );
  NOR2X4M U6 ( .A(n27), .B(n41), .Y(parity_error) );
  INVX2M U7 ( .A(n37), .Y(enable_counter) );
  INVX2M U8 ( .A(N102), .Y(n43) );
  INVX2M U9 ( .A(n27), .Y(stop_chk_en) );
  AOI21X2M U11 ( .A0(cs[1]), .A1(cs[2]), .B0(N46), .Y(n36) );
  OAI32XLM U12 ( .A0(n26), .A1(n28), .A2(n43), .B0(N46), .B1(n27), .Y(ns[2])
         );
  AOI2BB1X2M U13 ( .A0N(n29), .A1N(PAR_EN), .B0(cs[0]), .Y(n28) );
  INVX2M U14 ( .A(N46), .Y(n26) );
  OAI211XLM U15 ( .A0(N46), .A1(n43), .B0(n30), .C0(n31), .Y(ns[1]) );
  OAI21X2M U16 ( .A0(PAR_EN), .A1(n29), .B0(serial_en), .Y(n30) );
  NAND3BXLM U17 ( .AN(start_glitch), .B(N46), .C(start_chk_en), .Y(n31) );
  NOR3X2M U18 ( .A(cs[1]), .B(cs[2]), .C(cs[0]), .Y(n37) );
  OAI221X1M U19 ( .A0(RX_IN), .A1(n32), .B0(n33), .B1(n41), .C0(n34), .Y(ns[0]) );
  AOI21X2M U20 ( .A0(par_err), .A1(N102), .B0(n36), .Y(n33) );
  NAND4BXLM U21 ( .AN(n29), .B(PAR_EN), .C(serial_en), .D(N46), .Y(n34) );
  AOI21XLM U22 ( .A0(N46), .A1(stop_chk_en), .B0(n37), .Y(n32) );
  NOR3X2M U23 ( .A(cs[1]), .B(cs[2]), .C(n41), .Y(start_chk_en) );
  NOR2X2M U24 ( .A(n45), .B(cs[2]), .Y(N102) );
  NAND4X2M U25 ( .A(\sub_198/carry[6] ), .B(n1), .C(n21), .D(n16), .Y(n25) );
  CLKXOR2X2M U26 ( .A(\sub_198/carry[5] ), .B(presscale[5]), .Y(n1) );
  NOR2X2M U27 ( .A(n43), .B(cs[0]), .Y(serial_en) );
  NAND2X2M U28 ( .A(cs[2]), .B(n45), .Y(n27) );
  NAND3BX2M U29 ( .AN(bit_count[0]), .B(bit_count[3]), .C(n35), .Y(n29) );
  NOR2X2M U30 ( .A(bit_count[2]), .B(bit_count[1]), .Y(n35) );
  AND2X2M U31 ( .A(stop_err), .B(stop_chk_en), .Y(stop_error) );
  INVX2M U32 ( .A(cs[0]), .Y(n41) );
  INVX2M U33 ( .A(cs[1]), .Y(n45) );
  INVX2M U34 ( .A(presscale[1]), .Y(N108) );
  INVX2M U35 ( .A(N107), .Y(N39) );
  OAI2BB1X2M U36 ( .A0N(data_valid), .A1N(n38), .B0(n39), .Y(n40) );
  OR4X1M U37 ( .A(n38), .B(n27), .C(stop_error), .D(cs[0]), .Y(n39) );
  NOR3X2M U38 ( .A(N114), .B(cs[0]), .C(n27), .Y(n38) );
  OR2X1M U39 ( .A(presscale[5]), .B(\sub_198/carry[5] ), .Y(\sub_198/carry[6] ) );
  OR2X1M U40 ( .A(presscale[4]), .B(\sub_198/carry[4] ), .Y(\sub_198/carry[5] ) );
  XNOR2X1M U41 ( .A(\sub_198/carry[4] ), .B(presscale[4]), .Y(N111) );
  OR2X1M U42 ( .A(presscale[3]), .B(\sub_198/carry[3] ), .Y(\sub_198/carry[4] ) );
  XNOR2X1M U43 ( .A(\sub_198/carry[3] ), .B(presscale[3]), .Y(N110) );
  OR2X1M U44 ( .A(presscale[2]), .B(presscale[1]), .Y(\sub_198/carry[3] ) );
  XNOR2X1M U45 ( .A(presscale[1]), .B(presscale[2]), .Y(N109) );
  NAND2BX1M U46 ( .AN(presscale[1]), .B(N39), .Y(n2) );
  OAI2BB1X1M U47 ( .A0N(N107), .A1N(presscale[1]), .B0(n2), .Y(N40) );
  OR2X1M U48 ( .A(n2), .B(presscale[2]), .Y(n3) );
  OAI2BB1X1M U49 ( .A0N(n2), .A1N(presscale[2]), .B0(n3), .Y(N41) );
  OR2X1M U50 ( .A(n3), .B(presscale[3]), .Y(n4) );
  OAI2BB1X1M U51 ( .A0N(n3), .A1N(presscale[3]), .B0(n4), .Y(N42) );
  OR2X1M U52 ( .A(n4), .B(presscale[4]), .Y(n5) );
  OAI2BB1X1M U53 ( .A0N(n4), .A1N(presscale[4]), .B0(n5), .Y(N43) );
  NOR2X1M U54 ( .A(n5), .B(presscale[5]), .Y(N45) );
  AO21XLM U55 ( .A0(n5), .A1(presscale[5]), .B0(N45), .Y(N44) );
  NOR2BX1M U56 ( .AN(edge_count[0]), .B(N39), .Y(n6) );
  OAI2B2X1M U57 ( .A1N(N40), .A0(n6), .B0(edge_count[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U58 ( .AN(N39), .B(edge_count[0]), .Y(n7) );
  OAI2B2X1M U59 ( .A1N(edge_count[1]), .A0(n7), .B0(N40), .B1(n7), .Y(n8) );
  NAND4BBX1M U60 ( .AN(N45), .BN(N44), .C(n9), .D(n8), .Y(n13) );
  CLKXOR2X2M U61 ( .A(N43), .B(edge_count[4]), .Y(n12) );
  CLKXOR2X2M U62 ( .A(N41), .B(edge_count[2]), .Y(n11) );
  CLKXOR2X2M U63 ( .A(N42), .B(edge_count[3]), .Y(n10) );
  NOR4X1M U64 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N46) );
  NOR2BX1M U65 ( .AN(edge_count[0]), .B(N107), .Y(n14) );
  OAI2B2X1M U66 ( .A1N(N108), .A0(n14), .B0(edge_count[1]), .B1(n14), .Y(n21)
         );
  NOR2BX1M U67 ( .AN(N107), .B(edge_count[0]), .Y(n15) );
  OAI2B2X1M U68 ( .A1N(edge_count[1]), .A0(n15), .B0(N108), .B1(n15), .Y(n16)
         );
  CLKXOR2X2M U69 ( .A(N111), .B(edge_count[4]), .Y(n24) );
  CLKXOR2X2M U70 ( .A(N109), .B(edge_count[2]), .Y(n23) );
  CLKXOR2X2M U71 ( .A(N110), .B(edge_count[3]), .Y(n22) );
  NOR4X1M U72 ( .A(n25), .B(n24), .C(n23), .D(n22), .Y(N114) );
endmodule


module edge_bit_counter_RX_test_1 ( clk, rst_n, en, PAR_EN, presscale, 
        edge_count, bit_count, test_si, test_se );
  input [5:0] presscale;
  output [4:0] edge_count;
  output [3:0] bit_count;
  input clk, rst_n, en, PAR_EN, test_si, test_se;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N16, N17, N18, N19, N20, n7, n9,
         n10, n12, n13, n15, n19, n22, n24, n26, n28, n30, n32, n34, n36, n38,
         n40, \add_20/carry[4] , \add_20/carry[3] , \add_20/carry[2] , n1, n2,
         n3, n4, n5, n6, n8, n11, n14, n16, n17, n18, n20, n21, n41, n42, n43,
         n44, n45, n46;

  SDFFRQX2M \edge_count_reg[4]  ( .D(n38), .SI(edge_count[3]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(edge_count[4]) );
  SDFFRQX2M \bit_count_reg[3]  ( .D(n26), .SI(bit_count[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(bit_count[3]) );
  SDFFRQX2M \edge_count_reg[3]  ( .D(n36), .SI(edge_count[2]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(edge_count[3]) );
  SDFFRQX2M \edge_count_reg[2]  ( .D(n34), .SI(edge_count[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(edge_count[2]) );
  SDFFRQX2M \edge_count_reg[0]  ( .D(n40), .SI(bit_count[3]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(edge_count[0]) );
  SDFFRQX2M \edge_count_reg[1]  ( .D(n32), .SI(edge_count[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(edge_count[1]) );
  SDFFRQX2M \bit_count_reg[2]  ( .D(n28), .SI(bit_count[1]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(bit_count[2]) );
  SDFFRQX2M \bit_count_reg[0]  ( .D(n30), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(bit_count[0]) );
  SDFFRQX2M \bit_count_reg[1]  ( .D(n24), .SI(bit_count[0]), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(bit_count[1]) );
  INVX2M U3 ( .A(en), .Y(n45) );
  NOR2X2M U4 ( .A(n45), .B(N14), .Y(n22) );
  INVX2M U5 ( .A(N14), .Y(n20) );
  AOI21X2M U6 ( .A0(n21), .A1(n10), .B0(n20), .Y(n7) );
  INVX2M U7 ( .A(n10), .Y(n41) );
  OAI32XLM U8 ( .A0(n20), .A1(bit_count[0]), .A2(n41), .B0(N14), .B1(n21), .Y(
        n30) );
  NAND3XLM U9 ( .A(bit_count[0]), .B(bit_count[1]), .C(N14), .Y(n12) );
  OAI211X2M U10 ( .A0(bit_count[1]), .A1(bit_count[0]), .B0(bit_count[3]), 
        .C0(n19), .Y(n10) );
  AOI221XLM U11 ( .A0(bit_count[0]), .A1(PAR_EN), .B0(bit_count[1]), .B1(n46), 
        .C0(bit_count[2]), .Y(n19) );
  INVX2M U12 ( .A(PAR_EN), .Y(n46) );
  OAI32X1M U13 ( .A0(n42), .A1(bit_count[3]), .A2(n12), .B0(n13), .B1(n43), 
        .Y(n26) );
  INVX2M U14 ( .A(bit_count[3]), .Y(n43) );
  INVX2M U15 ( .A(bit_count[2]), .Y(n42) );
  NOR2BX2M U16 ( .AN(n7), .B(n15), .Y(n13) );
  XNOR2X2M U17 ( .A(bit_count[2]), .B(n12), .Y(n28) );
  AOI21X2M U18 ( .A0(bit_count[2]), .A1(bit_count[1]), .B0(n41), .Y(n15) );
  OAI21X2M U19 ( .A0(n7), .A1(n44), .B0(n9), .Y(n24) );
  NAND4XLM U20 ( .A(N14), .B(bit_count[0]), .C(n10), .D(n44), .Y(n9) );
  INVX2M U21 ( .A(bit_count[1]), .Y(n44) );
  INVX2M U22 ( .A(bit_count[0]), .Y(n21) );
  INVX2M U23 ( .A(presscale[0]), .Y(N7) );
  ADDHX1M U24 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_20/carry[2] ), 
        .S(N17) );
  ADDHX1M U25 ( .A(edge_count[2]), .B(\add_20/carry[2] ), .CO(
        \add_20/carry[3] ), .S(N18) );
  AO22X1M U26 ( .A0(edge_count[1]), .A1(n45), .B0(N17), .B1(n22), .Y(n32) );
  AO22X1M U27 ( .A0(edge_count[2]), .A1(n45), .B0(N18), .B1(n22), .Y(n34) );
  AO22X1M U28 ( .A0(edge_count[3]), .A1(n45), .B0(N19), .B1(n22), .Y(n36) );
  AO22X1M U29 ( .A0(edge_count[4]), .A1(n45), .B0(N20), .B1(n22), .Y(n38) );
  AO22X1M U39 ( .A0(edge_count[0]), .A1(n45), .B0(N16), .B1(n22), .Y(n40) );
  INVX2M U40 ( .A(edge_count[0]), .Y(N16) );
  ADDHX1M U41 ( .A(edge_count[3]), .B(\add_20/carry[3] ), .CO(
        \add_20/carry[4] ), .S(N19) );
  NAND2BX1M U42 ( .AN(presscale[1]), .B(N7), .Y(n1) );
  OAI2BB1X1M U43 ( .A0N(presscale[0]), .A1N(presscale[1]), .B0(n1), .Y(N8) );
  OR2X1M U44 ( .A(n1), .B(presscale[2]), .Y(n2) );
  OAI2BB1X1M U45 ( .A0N(n1), .A1N(presscale[2]), .B0(n2), .Y(N9) );
  OR2X1M U46 ( .A(n2), .B(presscale[3]), .Y(n3) );
  OAI2BB1X1M U47 ( .A0N(n2), .A1N(presscale[3]), .B0(n3), .Y(N10) );
  OR2X1M U48 ( .A(n3), .B(presscale[4]), .Y(n4) );
  OAI2BB1X1M U49 ( .A0N(n3), .A1N(presscale[4]), .B0(n4), .Y(N11) );
  NOR2X1M U50 ( .A(n4), .B(presscale[5]), .Y(N13) );
  AO21XLM U51 ( .A0(n4), .A1(presscale[5]), .B0(N13), .Y(N12) );
  CLKXOR2X2M U52 ( .A(\add_20/carry[4] ), .B(edge_count[4]), .Y(N20) );
  NOR2BX1M U53 ( .AN(edge_count[0]), .B(N7), .Y(n5) );
  OAI2B2X1M U54 ( .A1N(N8), .A0(n5), .B0(edge_count[1]), .B1(n5), .Y(n11) );
  NOR2BX1M U55 ( .AN(N7), .B(edge_count[0]), .Y(n6) );
  OAI2B2X1M U56 ( .A1N(edge_count[1]), .A0(n6), .B0(N8), .B1(n6), .Y(n8) );
  NAND4BBX1M U57 ( .AN(N13), .BN(N12), .C(n11), .D(n8), .Y(n18) );
  CLKXOR2X2M U58 ( .A(N11), .B(edge_count[4]), .Y(n17) );
  CLKXOR2X2M U59 ( .A(N9), .B(edge_count[2]), .Y(n16) );
  CLKXOR2X2M U60 ( .A(N10), .B(edge_count[3]), .Y(n14) );
  NOR4X1M U61 ( .A(n18), .B(n17), .C(n16), .D(n14), .Y(N14) );
endmodule


module Parity_check_RX_test_1 ( rst_n, clk, en, type, data, valid_bit, par_err, 
        test_so, test_se );
  input rst_n, clk, en, type, data, valid_bit, test_se;
  output par_err, test_so;
  wire   count, n5, n6, n2, n3, n4;
  assign test_so = count;

  SDFFRQX2M count_reg ( .D(n6), .SI(valid_bit), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(count) );
  INVX2M U4 ( .A(en), .Y(n4) );
  OAI32X1M U5 ( .A0(n5), .A1(count), .A2(n4), .B0(n2), .B1(n3), .Y(n6) );
  INVX2M U6 ( .A(count), .Y(n3) );
  INVX2M U7 ( .A(n5), .Y(n2) );
  OAI21X2M U8 ( .A0(data), .A1(n4), .B0(valid_bit), .Y(n5) );
  CLKXOR2X2M U9 ( .A(type), .B(count), .Y(par_err) );
endmodule


module Start_check_RX_test_1 ( rst_n, clk, en, data, valid, glitch, test_si, 
        test_se );
  input rst_n, clk, en, data, valid, test_si, test_se;
  output glitch;
  wire   n3, n4, n2;

  SDFFRQX2M glitch_reg ( .D(n4), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(glitch) );
  NOR2BX2M U4 ( .AN(en), .B(n3), .Y(n4) );
  AOI22X1M U5 ( .A0(valid), .A1(data), .B0(glitch), .B1(n2), .Y(n3) );
  INVX2M U6 ( .A(valid), .Y(n2) );
endmodule


module Stop_check_RX_test_1 ( rst_n, clk, en, data, valid, err, test_si, 
        test_se );
  input rst_n, clk, en, data, valid, test_si, test_se;
  output err;
  wire   n3, n4, n2;

  SDFFRQX2M err_reg ( .D(n4), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst_n), 
        .Q(err) );
  NOR2BX2M U4 ( .AN(en), .B(n3), .Y(n4) );
  AOI2BB2XLM U5 ( .B0(err), .B1(n2), .A0N(data), .A1N(n2), .Y(n3) );
  INVX2M U6 ( .A(valid), .Y(n2) );
endmodule


module Serial_2_parallel_RX_DATA_WIDTH8_test_1 ( rst_n, clk, bit, en, valid, 
        P_data, test_si, test_se );
  output [7:0] P_data;
  input rst_n, clk, bit, en, valid, test_si, test_se;
  wire   n1, n11, n13, n15, n17, n19, n21, n23, n25, n2, n3, n4, n5, n6, n7,
         n8, n9;

  SDFFRQX2M \shift_reg_reg[0]  ( .D(n11), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(P_data[0]) );
  SDFFRQX2M \shift_reg_reg[7]  ( .D(n25), .SI(P_data[6]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(P_data[7]) );
  SDFFRQX2M \shift_reg_reg[6]  ( .D(n23), .SI(P_data[5]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(P_data[6]) );
  SDFFRQX2M \shift_reg_reg[5]  ( .D(n21), .SI(P_data[4]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(P_data[5]) );
  SDFFRQX2M \shift_reg_reg[4]  ( .D(n19), .SI(P_data[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(P_data[4]) );
  SDFFRQX2M \shift_reg_reg[3]  ( .D(n17), .SI(P_data[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(P_data[3]) );
  SDFFRQX2M \shift_reg_reg[2]  ( .D(n15), .SI(P_data[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(P_data[2]) );
  SDFFRQX2M \shift_reg_reg[1]  ( .D(n13), .SI(P_data[0]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(P_data[1]) );
  OAI22X1M U2 ( .A0(n2), .A1(n9), .B0(n1), .B1(n8), .Y(n13) );
  OAI22X1M U3 ( .A0(n2), .A1(n8), .B0(n1), .B1(n7), .Y(n15) );
  OAI22X1M U4 ( .A0(n2), .A1(n7), .B0(n1), .B1(n6), .Y(n17) );
  OAI22X1M U5 ( .A0(n2), .A1(n6), .B0(n1), .B1(n5), .Y(n19) );
  OAI22X1M U6 ( .A0(n2), .A1(n5), .B0(n1), .B1(n4), .Y(n21) );
  OAI22X1M U7 ( .A0(n2), .A1(n4), .B0(n1), .B1(n3), .Y(n23) );
  INVX2M U8 ( .A(n1), .Y(n2) );
  OAI2BB2X1M U9 ( .B0(n2), .B1(n3), .A0N(bit), .A1N(n2), .Y(n25) );
  NAND2X2M U10 ( .A(valid), .B(en), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n9), .A0N(P_data[0]), .A1N(n1), .Y(n11) );
  INVX2M U12 ( .A(P_data[7]), .Y(n3) );
  INVX2M U13 ( .A(P_data[1]), .Y(n9) );
  INVX2M U14 ( .A(P_data[2]), .Y(n8) );
  INVX2M U15 ( .A(P_data[3]), .Y(n7) );
  INVX2M U16 ( .A(P_data[4]), .Y(n6) );
  INVX2M U17 ( .A(P_data[5]), .Y(n5) );
  INVX2M U18 ( .A(P_data[6]), .Y(n4) );
endmodule


module sampler_RX_test_1 ( clk, rst_n, en, edge_count, RX_IN, presscale, bit, 
        valid_bit, test_si, test_se );
  input [4:0] edge_count;
  input [5:0] presscale;
  input clk, rst_n, en, RX_IN, test_si, test_se;
  output bit, valid_bit;
  wire   N13, N14, N15, N16, N17, N18, N19, N20, N22, N23, N24, N25, N26, N27,
         n15, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, \add_33/carry[4] , \add_33/carry[3] , \add_33/carry[2] , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n16, n17, n18, n19, n20, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n53;
  wire   [2:0] data_cmp;

  SDFFRX1M \data_cmp_reg[0]  ( .D(n31), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(n53), .QN(n15) );
  SDFFRQX2M \data_cmp_reg[2]  ( .D(n33), .SI(data_cmp[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(data_cmp[2]) );
  SDFFRQX2M \data_cmp_reg[1]  ( .D(n32), .SI(n53), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(data_cmp[1]) );
  SDFFRQX2M valid_bit_reg ( .D(n34), .SI(data_cmp[2]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(valid_bit) );
  INVX2M U4 ( .A(en), .Y(n49) );
  INVX2M U5 ( .A(n25), .Y(n50) );
  NOR4BX1M U6 ( .AN(n28), .B(presscale[0]), .C(presscale[2]), .D(presscale[1]), 
        .Y(n25) );
  OAI32X1M U7 ( .A0(presscale[3]), .A1(presscale[4]), .A2(n51), .B0(n29), .B1(
        presscale[5]), .Y(n28) );
  INVX2M U8 ( .A(presscale[5]), .Y(n51) );
  XNOR2X2M U12 ( .A(presscale[4]), .B(presscale[3]), .Y(n29) );
  NOR4BX1M U13 ( .AN(N27), .B(n49), .C(N19), .D(N20), .Y(n26) );
  OAI32X1M U14 ( .A0(n15), .A1(n48), .A2(n50), .B0(n21), .B1(n22), .Y(n31) );
  INVX2M U15 ( .A(n21), .Y(n48) );
  NAND2X2M U16 ( .A(en), .B(N19), .Y(n21) );
  OAI2BB2X1M U17 ( .B0(n30), .B1(n15), .A0N(data_cmp[1]), .A1N(n30), .Y(bit)
         );
  XNOR2X2M U18 ( .A(data_cmp[1]), .B(data_cmp[2]), .Y(n30) );
  NAND2X2M U19 ( .A(RX_IN), .B(n25), .Y(n22) );
  OAI2BB2X1M U20 ( .B0(n23), .B1(n22), .A0N(n23), .A1N(data_cmp[1]), .Y(n32)
         );
  AOI31X2M U21 ( .A0(N20), .A1(n47), .A2(en), .B0(n50), .Y(n23) );
  INVXLM U22 ( .A(N19), .Y(n47) );
  OAI2BB2X1M U23 ( .B0(n24), .B1(n22), .A0N(n24), .A1N(data_cmp[2]), .Y(n33)
         );
  NOR2X2M U24 ( .A(n50), .B(n26), .Y(n24) );
  NOR2X2M U25 ( .A(n27), .B(n50), .Y(n34) );
  AOI21X2M U26 ( .A0(valid_bit), .A1(n49), .B0(n26), .Y(n27) );
  INVX2M U27 ( .A(presscale[1]), .Y(N13) );
  ADDHX1M U28 ( .A(presscale[2]), .B(presscale[1]), .CO(\add_33/carry[2] ), 
        .S(N22) );
  ADDHX1M U29 ( .A(presscale[3]), .B(\add_33/carry[2] ), .CO(\add_33/carry[3] ), .S(N23) );
  ADDHX1M U30 ( .A(presscale[4]), .B(\add_33/carry[3] ), .CO(\add_33/carry[4] ), .S(N24) );
  ADDHX1M U31 ( .A(presscale[5]), .B(\add_33/carry[4] ), .CO(N26), .S(N25) );
  NAND2BX1M U32 ( .AN(presscale[2]), .B(N13), .Y(n1) );
  OAI2BB1X1M U33 ( .A0N(presscale[1]), .A1N(presscale[2]), .B0(n1), .Y(N14) );
  OR2X1M U34 ( .A(n1), .B(presscale[3]), .Y(n2) );
  OAI2BB1X1M U35 ( .A0N(n1), .A1N(presscale[3]), .B0(n2), .Y(N15) );
  XNOR2X1M U36 ( .A(presscale[4]), .B(n2), .Y(N16) );
  NOR3X1M U37 ( .A(presscale[4]), .B(presscale[5]), .C(n2), .Y(N18) );
  OAI21X1M U38 ( .A0(presscale[4]), .A1(n2), .B0(presscale[5]), .Y(n3) );
  NAND2BX1M U39 ( .AN(N18), .B(n3), .Y(N17) );
  NOR2BX1M U40 ( .AN(N13), .B(edge_count[0]), .Y(n4) );
  OAI2B2X1M U41 ( .A1N(edge_count[1]), .A0(n4), .B0(N14), .B1(n4), .Y(n7) );
  NOR2BX1M U42 ( .AN(edge_count[0]), .B(N13), .Y(n5) );
  OAI2B2X1M U43 ( .A1N(N14), .A0(n5), .B0(edge_count[1]), .B1(n5), .Y(n6) );
  NAND3BX1M U44 ( .AN(N18), .B(n7), .C(n6), .Y(n16) );
  CLKXOR2X2M U45 ( .A(N17), .B(edge_count[4]), .Y(n10) );
  CLKXOR2X2M U46 ( .A(N15), .B(edge_count[2]), .Y(n9) );
  CLKXOR2X2M U47 ( .A(N16), .B(edge_count[3]), .Y(n8) );
  NOR4X1M U48 ( .A(n16), .B(n10), .C(n9), .D(n8), .Y(N19) );
  CLKXOR2X2M U49 ( .A(presscale[3]), .B(edge_count[2]), .Y(n38) );
  NOR2BX1M U50 ( .AN(presscale[1]), .B(edge_count[0]), .Y(n17) );
  OAI2B2X1M U51 ( .A1N(edge_count[1]), .A0(n17), .B0(presscale[2]), .B1(n17), 
        .Y(n20) );
  NOR2BX1M U52 ( .AN(edge_count[0]), .B(presscale[1]), .Y(n18) );
  OAI2B2X1M U53 ( .A1N(presscale[2]), .A0(n18), .B0(edge_count[1]), .B1(n18), 
        .Y(n19) );
  CLKNAND2X2M U54 ( .A(n20), .B(n19), .Y(n37) );
  CLKXOR2X2M U55 ( .A(presscale[4]), .B(edge_count[3]), .Y(n36) );
  CLKXOR2X2M U56 ( .A(presscale[5]), .B(edge_count[4]), .Y(n35) );
  NOR4X1M U57 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N20) );
  NOR2BX1M U58 ( .AN(N13), .B(edge_count[0]), .Y(n39) );
  OAI2B2X1M U59 ( .A1N(edge_count[1]), .A0(n39), .B0(N22), .B1(n39), .Y(n42)
         );
  NOR2BX1M U60 ( .AN(edge_count[0]), .B(N13), .Y(n40) );
  OAI2B2X1M U61 ( .A1N(N22), .A0(n40), .B0(edge_count[1]), .B1(n40), .Y(n41)
         );
  NAND3BX1M U62 ( .AN(N26), .B(n42), .C(n41), .Y(n46) );
  CLKXOR2X2M U63 ( .A(N25), .B(edge_count[4]), .Y(n45) );
  CLKXOR2X2M U64 ( .A(N23), .B(edge_count[2]), .Y(n44) );
  CLKXOR2X2M U65 ( .A(N24), .B(edge_count[3]), .Y(n43) );
  NOR4X1M U66 ( .A(n46), .B(n45), .C(n44), .D(n43), .Y(N27) );
endmodule


module UART_RX_DATA_WIDTH8_test_1 ( RX_IN, clk, rst_n, presscale, PAR_EN, 
        PAR_TYPE, P_data, parity_error, stop_error, data_valid, test_si, 
        test_so, test_se );
  input [5:0] presscale;
  output [7:0] P_data;
  input RX_IN, clk, rst_n, PAR_EN, PAR_TYPE, test_si, test_se;
  output parity_error, stop_error, data_valid, test_so;
  wire   start_err_cu_checker, parity_err_cu_checker, stop_err_cu_checker,
         start_en_cu_checker, parity_en_cu_checker, stop_en_cu_checker,
         enable_counter_cu, data_samp_en, data_ser_en, data_bit,
         valid_data_bit, n1, n2, n4;
  wire   [4:0] edge_count;
  wire   [3:0] bit_count_counter_cu;
  assign test_so = edge_count[4];

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_n), .Y(n2) );
  FSM_CU_RX_test_1 C0 ( .clk(clk), .rst_n(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .edge_count(edge_count), .bit_count(bit_count_counter_cu), 
        .start_glitch(start_err_cu_checker), .par_err(parity_err_cu_checker), 
        .stop_err(stop_err_cu_checker), .presscale(presscale), .start_chk_en(
        start_en_cu_checker), .par_chk_en(parity_en_cu_checker), .stop_chk_en(
        stop_en_cu_checker), .enable_counter(enable_counter_cu), .sampling_en(
        data_samp_en), .serial_en(data_ser_en), .data_valid(data_valid), 
        .stop_error(stop_error), .parity_error(parity_error), .test_si(test_si), .test_se(test_se) );
  edge_bit_counter_RX_test_1 counter0 ( .clk(clk), .rst_n(n1), .en(
        enable_counter_cu), .PAR_EN(PAR_EN), .presscale(presscale), 
        .edge_count(edge_count), .bit_count(bit_count_counter_cu), .test_si(
        stop_err_cu_checker), .test_se(test_se) );
  Parity_check_RX_test_1 PAR_CHKER0 ( .rst_n(n1), .clk(clk), .en(
        parity_en_cu_checker), .type(PAR_TYPE), .data(data_bit), .valid_bit(
        valid_data_bit), .par_err(parity_err_cu_checker), .test_so(n4), 
        .test_se(test_se) );
  Start_check_RX_test_1 STAR_CHECKER0 ( .rst_n(n1), .clk(clk), .en(
        start_en_cu_checker), .data(data_bit), .valid(valid_data_bit), 
        .glitch(start_err_cu_checker), .test_si(P_data[7]), .test_se(test_se)
         );
  Stop_check_RX_test_1 STOP_CHECKER0 ( .rst_n(n1), .clk(clk), .en(
        stop_en_cu_checker), .data(data_bit), .valid(valid_data_bit), .err(
        stop_err_cu_checker), .test_si(start_err_cu_checker), .test_se(test_se) );
  Serial_2_parallel_RX_DATA_WIDTH8_test_1 S2P ( .rst_n(n1), .clk(clk), .bit(
        data_bit), .en(data_ser_en), .valid(valid_data_bit), .P_data(P_data), 
        .test_si(n4), .test_se(test_se) );
  sampler_RX_test_1 DATA_SAMPLE0 ( .clk(clk), .rst_n(n1), .en(data_samp_en), 
        .edge_count(edge_count), .RX_IN(RX_IN), .presscale(presscale), .bit(
        data_bit), .valid_bit(valid_data_bit), .test_si(data_valid), .test_se(
        test_se) );
endmodule


module UART_TOP_DATA_WIDTH8_test_1 ( rst_n, par_en, par_type, tx_clk, 
        tx_in_p_data, tx_in_v, tx_out_s, tx_busy, rx_clk, rx_in_S, presscale, 
        rx_out_p, rx_par_err, rx_stop_err, rx_data_val, test_si, test_so, 
        test_se );
  input [7:0] tx_in_p_data;
  input [5:0] presscale;
  output [7:0] rx_out_p;
  input rst_n, par_en, par_type, tx_clk, tx_in_v, rx_clk, rx_in_S, test_si,
         test_se;
  output tx_out_s, tx_busy, rx_par_err, rx_stop_err, rx_data_val, test_so;
  wire   n3;

  UART_TX_DATA_WIDTH8_test_1 TX0 ( .clk(tx_clk), .rst_n(rst_n), .P_data(
        tx_in_p_data), .data_valid(tx_in_v), .par_en(par_en), .par_type(
        par_type), .tx_out(tx_out_s), .busy(tx_busy), .test_si(n3), .test_so(
        test_so), .test_se(test_se) );
  UART_RX_DATA_WIDTH8_test_1 RX0 ( .RX_IN(rx_in_S), .clk(rx_clk), .rst_n(rst_n), .presscale(presscale), .PAR_EN(par_en), .PAR_TYPE(par_type), .P_data(
        rx_out_p), .parity_error(rx_par_err), .stop_error(rx_stop_err), 
        .data_valid(rx_data_val), .test_si(test_si), .test_so(n3), .test_se(
        test_se) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_OUT, 
        parity_error, stop_error, SCAN_CLK, SCAN_RST, SE, test_mode, SI, SO );
  input [3:0] SI;
  output [3:0] SO;
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN, SCAN_CLK, SCAN_RST, SE,
         test_mode;
  output UART_TX_OUT, parity_error, stop_error;
  wire   N2, REF_CLK_MUX, UART_CLK_MUX, TX_CLK_MUX, TX_CLK, RX_CLK_MUX, RX_CLK,
         clk_gated_MUX, clk_gated, RST_N_MUX, REF_SYNC_RST_n_MUX,
         REF_SYNC_RST_n, UART_SYNC_RST_n_MUX, UART_SYNC_RST_n, _0_net_,
         gated_clk_en, ALU_out_valid, ALU_enable, RD_valid_wire, WR_en_wire,
         RD_en_wire, fifo_full_wire, fifo_wr_inc_wire, sync_en,
         fifo_rd_inc_wire, fifo_empty_wire, busy_sig, en_data, n3, n4, n5, n6,
         n7, n8, n9, n10, n13, n17, n18, n21, n22, n23, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35;
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
  assign N2 = test_mode;

  NOR2X2M U18 ( .A(RX_DIV_ratio[2]), .B(RX_DIV_ratio[1]), .Y(RX_DIV_ratio[0])
         );
  INVX2M U19 ( .A(fifo_empty_wire), .Y(n9) );
  OR2X2M U20 ( .A(gated_clk_en), .B(n4), .Y(_0_net_) );
  NOR3BX2M U21 ( .AN(n3), .B(UART_CONFIG[6]), .C(n10), .Y(RX_DIV_ratio[2]) );
  MX2X2M U22 ( .A(TX_CLK), .B(SCAN_CLK), .S0(n4), .Y(TX_CLK_MUX) );
  MX2X2M U23 ( .A(RX_CLK), .B(SCAN_CLK), .S0(n4), .Y(RX_CLK_MUX) );
  NOR4X1M U24 ( .A(UART_CONFIG[3]), .B(UART_CONFIG[2]), .C(UART_CONFIG[7]), 
        .D(UART_CONFIG[4]), .Y(n3) );
  MX2X2M U25 ( .A(UART_CLK), .B(SCAN_CLK), .S0(n4), .Y(UART_CLK_MUX) );
  AND3X2M U26 ( .A(n3), .B(n10), .C(UART_CONFIG[6]), .Y(RX_DIV_ratio[1]) );
  MX2X2M U27 ( .A(clk_gated), .B(SCAN_CLK), .S0(n4), .Y(clk_gated_MUX) );
  INVX4M U28 ( .A(n8), .Y(n7) );
  INVX2M U29 ( .A(REF_SYNC_RST_n_MUX), .Y(n8) );
  MX2X2M U30 ( .A(REF_SYNC_RST_n), .B(SCAN_RST), .S0(n4), .Y(
        REF_SYNC_RST_n_MUX) );
  MX2X2M U31 ( .A(RST_N), .B(SCAN_RST), .S0(n4), .Y(RST_N_MUX) );
  INVX4M U32 ( .A(n6), .Y(n5) );
  INVX2M U33 ( .A(UART_SYNC_RST_n_MUX), .Y(n6) );
  MX2X2M U34 ( .A(UART_SYNC_RST_n), .B(SCAN_RST), .S0(n4), .Y(
        UART_SYNC_RST_n_MUX) );
  INVX2M U35 ( .A(UART_CONFIG[5]), .Y(n10) );
  BUFX2M U36 ( .A(N2), .Y(n4) );
  MX2X8M U37 ( .A(REF_CLK), .B(SCAN_CLK), .S0(n4), .Y(REF_CLK_MUX) );
  DLY1X1M U40 ( .A(RD_data_wire[7]), .Y(n26) );
  DLY1X1M U41 ( .A(n34), .Y(n27) );
  DLY1X1M U42 ( .A(n33), .Y(n28) );
  INVXLM U43 ( .A(n35), .Y(n29) );
  INVXLM U44 ( .A(n29), .Y(n30) );
  INVXLM U45 ( .A(n29), .Y(n31) );
  INVXLM U46 ( .A(SE), .Y(n32) );
  INVXLM U47 ( .A(n32), .Y(n33) );
  INVXLM U48 ( .A(n32), .Y(n34) );
  INVXLM U49 ( .A(n32), .Y(n35) );
  RST_SYNC_NUM_STAGES2_test_0 RST_SYNC0 ( .RST(RST_N_MUX), .CLK(REF_CLK_MUX), 
        .SYNC_RST(REF_SYNC_RST_n), .test_si(n13), .test_se(n35) );
  RST_SYNC_NUM_STAGES2_test_1 RST_SYNC1 ( .RST(RST_N_MUX), .CLK(UART_CLK_MUX), 
        .SYNC_RST(UART_SYNC_RST_n), .test_si(REF_SYNC_RST_n), .test_se(n33) );
  CLK_gate ICG0 ( .clk_en(_0_net_), .clk(REF_CLK_MUX), .gated_clk(clk_gated)
         );
  Integer_CLK_DIV_test_0 CLK_DIV0 ( .i_ref_clk(UART_CLK_MUX), .i_rst_n(n5), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_ratio_wire), .o_div_clk(TX_CLK), 
        .test_si(ALU_out_valid), .test_so(n23), .test_se(n31) );
  Integer_CLK_DIV_test_1 CLK_DIV1 ( .i_ref_clk(UART_CLK_MUX), .i_rst_n(n5), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        RX_DIV_ratio}), .o_div_clk(RX_CLK), .test_si(n23), .test_so(n22), 
        .test_se(n35) );
  SYS_CTRL_OPERANDS_WIDTH8_ALU_OUT_WIDTH16_ALU_FUNC_WIDTH4_REG_WIDTH8_ADDR_WIDTH4_UART_DATA_WIDTH8_test_1 CTRL0 ( 
        .clk(REF_CLK_MUX), .rst_n(n7), .ALU_out(ALU_out_data), .ALU_out_valid(
        ALU_out_valid), .ALU_func(ALU_function), .ALU_en(ALU_enable), .clk_en(
        gated_clk_en), .RD_data({n26, RD_data_wire[6:0]}), .RD_valid(
        RD_valid_wire), .WR_data_regfile(WR_data_regfile_wire), .addr(
        addr_wire), .WR_en_regfile(WR_en_wire), .RD_en_regfile(RD_en_wire), 
        .fifo_full_flag(fifo_full_wire), .WR_data_fifo(fifio_wr_data_wire), 
        .WR_inc_fifo(fifo_wr_inc_wire), .rx_data(sync_data), .rx_data_valid(
        sync_en), .test_si(n22), .test_so(n21), .test_se(n27) );
  ALU_DATA_IN_WIDTH8_FUNC_WIDTH4_DATA_OUT_WIDTH16_test_1 ALU0 ( .A(OP_A_wire), 
        .B(OP_B_wire), .ALU_FUN(ALU_function), .clk(clk_gated_MUX), .rst_n(n7), 
        .enable(ALU_enable), .ALU_OUT(ALU_out_data), .out_valid(ALU_out_valid), 
        .test_si(SI[3]), .test_se(n30) );
  Register_File_WIDTH8_DEPTH16_test_1 RF0 ( .WrData(WR_data_regfile_wire), 
        .Address(addr_wire), .WrEn(WR_en_wire), .RdEn(RD_en_wire), .CLK(
        REF_CLK_MUX), .RST(n7), .RdData(RD_data_wire), .rd_valid(RD_valid_wire), .DIV_ratio(DIV_ratio_wire), .op_A(OP_A_wire), .op_B(OP_B_wire), .UART_CON(
        UART_CONFIG), .test_si3(SI[0]), .test_si2(SI[1]), .test_si1(n17), 
        .test_so2(n13), .test_so1(SO[1]), .test_se(SE) );
  FIFO_top_DATA_WIDTH8_FIFO_DEPTH8_test_1 FIFO0 ( .w_clk(REF_CLK_MUX), .w_rst(
        n7), .w_inc(fifo_wr_inc_wire), .r_clk(TX_CLK_MUX), .r_rst(n5), .r_inc(
        fifo_rd_inc_wire), .wr_data(fifio_wr_data_wire), .full(fifo_full_wire), 
        .empty(fifo_empty_wire), .rd_data(fifio_rd_data_wire), .test_si2(SI[2]), .test_si1(sync_data[7]), .test_so2(n18), .test_so1(SO[3]), .test_se(SE) );
  Pulse_generator_test_1 Pgen0 ( .in(busy_sig), .clk(TX_CLK_MUX), .rst_n(n5), 
        .pulse(fifo_rd_inc_wire), .test_si(n18), .test_so(n17), .test_se(n30)
         );
  DATA_SYNC_NUMBER_STAGES2_BUS_WIDTH8_test_1 D_SYNC0 ( .unsync_bus(data_unsync), .bus_enable(en_data), .clk(REF_CLK_MUX), .rst_n(n7), .sync_bus(sync_data), 
        .enable_pulse(sync_en), .test_si(n21), .test_se(n33) );
  UART_TOP_DATA_WIDTH8_test_1 UART0 ( .rst_n(n5), .par_en(UART_CONFIG[0]), 
        .par_type(UART_CONFIG[1]), .tx_clk(TX_CLK_MUX), .tx_in_p_data(
        fifio_rd_data_wire), .tx_in_v(n9), .tx_out_s(UART_TX_OUT), .tx_busy(
        busy_sig), .rx_clk(RX_CLK_MUX), .rx_in_S(UART_RX_IN), .presscale(
        UART_CONFIG[7:2]), .rx_out_p(data_unsync), .rx_par_err(parity_error), 
        .rx_stop_err(stop_error), .rx_data_val(en_data), .test_si(
        UART_SYNC_RST_n), .test_so(SO[0]), .test_se(n28) );
  BUFX2M U39 ( .A(RD_data_wire[7]), .Y(SO[2]) );
endmodule

