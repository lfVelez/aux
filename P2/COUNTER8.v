/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : M-2016.12
// Date      : Tue Dec 15 20:58:27 2020
/////////////////////////////////////////////////////////////


module COUNTER ( Clk, Reset, Start, Count );
  output [7:0] Count;
  input Clk, Reset, Start;
  wire   N14, N15, N16, N17, N18, N19, N20, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24;

  DFC1 \Count_reg_reg[7]  ( .D(N20), .C(Clk), .RN(n9), .Q(Count[7]) );
  DFC1 \Count_reg_reg[6]  ( .D(N19), .C(Clk), .RN(n9), .Q(Count[6]), .QN(n23)
         );
  DFC1 \Count_reg_reg[5]  ( .D(N18), .C(Clk), .RN(n9), .Q(Count[5]) );
  DFC1 \Count_reg_reg[4]  ( .D(N17), .C(Clk), .RN(n9), .Q(Count[4]), .QN(n22)
         );
  DFC1 \Count_reg_reg[3]  ( .D(N16), .C(Clk), .RN(n9), .Q(Count[3]) );
  DFC1 \Count_reg_reg[2]  ( .D(N15), .C(Clk), .RN(n9), .Q(Count[2]), .QN(n21)
         );
  DFC1 \Count_reg_reg[1]  ( .D(N14), .C(Clk), .RN(n9), .Q(Count[1]) );
  JKC1 \Count_reg_reg[0]  ( .J(n24), .K(n20), .C(Clk), .RN(n9), .Q(Count[0])
         );
  CLKIN1 U20 ( .A(Reset), .Q(n9) );
  NAND20 U21 ( .A(Count[0]), .B(Count[1]), .Q(n14) );
  LOGIC1 U22 ( .Q(n20) );
  INV0 U23 ( .A(Start), .Q(n24) );
  OAI2110 U24 ( .A(Count[0]), .B(Count[1]), .C(n24), .D(n14), .Q(n10) );
  INV0 U25 ( .A(n10), .Q(N14) );
  NOR20 U26 ( .A(n14), .B(n21), .Q(n13) );
  NAND20 U27 ( .A(n13), .B(Count[3]), .Q(n16) );
  OAI210 U28 ( .A(n13), .B(Count[3]), .C(n16), .Q(n11) );
  NOR20 U29 ( .A(Start), .B(n11), .Q(N16) );
  NOR20 U30 ( .A(n16), .B(n22), .Q(n15) );
  NAND20 U31 ( .A(n15), .B(Count[5]), .Q(n17) );
  OAI210 U32 ( .A(n15), .B(Count[5]), .C(n17), .Q(n12) );
  NOR20 U33 ( .A(Start), .B(n12), .Q(N18) );
  AOI2110 U34 ( .A(n14), .B(n21), .C(Start), .D(n13), .Q(N15) );
  AOI2110 U35 ( .A(n16), .B(n22), .C(Start), .D(n15), .Q(N17) );
  NOR20 U36 ( .A(n17), .B(n23), .Q(n19) );
  AOI2110 U37 ( .A(n17), .B(n23), .C(Start), .D(n19), .Q(N19) );
  NOR20 U38 ( .A(Count[7]), .B(n19), .Q(n18) );
  AOI2110 U39 ( .A(Count[7]), .B(n19), .C(Start), .D(n18), .Q(N20) );
endmodule

