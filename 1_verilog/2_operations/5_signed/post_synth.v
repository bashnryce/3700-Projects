// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Feb 10 21:26:16 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force post_synth.v
// Design      : up_down_counter
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module up_down_counter
   (clk,
    a,
    b,
    up,
    dn,
    rst,
    q);
  input clk;
  input [7:0]a;
  input [7:0]b;
  input up;
  input dn;
  input rst;
  output [7:0]q;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]a;
  wire [7:0]a_IBUF;
  wire [7:0]b;
  wire [7:0]b_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire dn;
  wire dn_IBUF;
  wire [7:0]p_0_in;
  wire [7:0]q;
  wire q1;
  wire q11_out;
  wire q2;
  wire q20_in;
  wire q3;
  wire [31:0]q4;
  wire \q[3]_i_3_n_0 ;
  wire \q[3]_i_4_n_0 ;
  wire \q[3]_i_5_n_0 ;
  wire \q[3]_i_6_n_0 ;
  wire \q[3]_i_7_n_0 ;
  wire \q[7]_i_100_n_0 ;
  wire \q[7]_i_101_n_0 ;
  wire \q[7]_i_102_n_0 ;
  wire \q[7]_i_103_n_0 ;
  wire \q[7]_i_104_n_0 ;
  wire \q[7]_i_105_n_0 ;
  wire \q[7]_i_11_n_0 ;
  wire \q[7]_i_12_n_0 ;
  wire \q[7]_i_13_n_0 ;
  wire \q[7]_i_14_n_0 ;
  wire \q[7]_i_17_n_0 ;
  wire \q[7]_i_18_n_0 ;
  wire \q[7]_i_19_n_0 ;
  wire \q[7]_i_1_n_0 ;
  wire \q[7]_i_20_n_0 ;
  wire \q[7]_i_24_n_0 ;
  wire \q[7]_i_25_n_0 ;
  wire \q[7]_i_26_n_0 ;
  wire \q[7]_i_27_n_0 ;
  wire \q[7]_i_29_n_0 ;
  wire \q[7]_i_33_n_0 ;
  wire \q[7]_i_34_n_0 ;
  wire \q[7]_i_35_n_0 ;
  wire \q[7]_i_38_n_0 ;
  wire \q[7]_i_39_n_0 ;
  wire \q[7]_i_40_n_0 ;
  wire \q[7]_i_41_n_0 ;
  wire \q[7]_i_43_n_0 ;
  wire \q[7]_i_44_n_0 ;
  wire \q[7]_i_45_n_0 ;
  wire \q[7]_i_46_n_0 ;
  wire \q[7]_i_50_n_0 ;
  wire \q[7]_i_51_n_0 ;
  wire \q[7]_i_52_n_0 ;
  wire \q[7]_i_53_n_0 ;
  wire \q[7]_i_54_n_0 ;
  wire \q[7]_i_55_n_0 ;
  wire \q[7]_i_56_n_0 ;
  wire \q[7]_i_57_n_0 ;
  wire \q[7]_i_58_n_0 ;
  wire \q[7]_i_59_n_0 ;
  wire \q[7]_i_60_n_0 ;
  wire \q[7]_i_61_n_0 ;
  wire \q[7]_i_62_n_0 ;
  wire \q[7]_i_63_n_0 ;
  wire \q[7]_i_64_n_0 ;
  wire \q[7]_i_65_n_0 ;
  wire \q[7]_i_66_n_0 ;
  wire \q[7]_i_67_n_0 ;
  wire \q[7]_i_68_n_0 ;
  wire \q[7]_i_69_n_0 ;
  wire \q[7]_i_70_n_0 ;
  wire \q[7]_i_71_n_0 ;
  wire \q[7]_i_72_n_0 ;
  wire \q[7]_i_73_n_0 ;
  wire \q[7]_i_76_n_0 ;
  wire \q[7]_i_77_n_0 ;
  wire \q[7]_i_78_n_0 ;
  wire \q[7]_i_79_n_0 ;
  wire \q[7]_i_80_n_0 ;
  wire \q[7]_i_82_n_0 ;
  wire \q[7]_i_83_n_0 ;
  wire \q[7]_i_84_n_0 ;
  wire \q[7]_i_85_n_0 ;
  wire \q[7]_i_86_n_0 ;
  wire \q[7]_i_87_n_0 ;
  wire \q[7]_i_88_n_0 ;
  wire \q[7]_i_89_n_0 ;
  wire \q[7]_i_8_n_0 ;
  wire \q[7]_i_90_n_0 ;
  wire \q[7]_i_91_n_0 ;
  wire \q[7]_i_92_n_0 ;
  wire \q[7]_i_93_n_0 ;
  wire \q[7]_i_94_n_0 ;
  wire \q[7]_i_95_n_0 ;
  wire \q[7]_i_96_n_0 ;
  wire \q[7]_i_97_n_0 ;
  wire \q[7]_i_98_n_0 ;
  wire \q[7]_i_99_n_0 ;
  wire [7:0]q_OBUF;
  wire \q_reg[3]_i_2_n_0 ;
  wire \q_reg[3]_i_2_n_1 ;
  wire \q_reg[3]_i_2_n_2 ;
  wire \q_reg[3]_i_2_n_3 ;
  wire \q_reg[3]_i_2_n_4 ;
  wire \q_reg[3]_i_2_n_5 ;
  wire \q_reg[3]_i_2_n_6 ;
  wire \q_reg[3]_i_2_n_7 ;
  wire \q_reg[7]_i_10_n_0 ;
  wire \q_reg[7]_i_10_n_1 ;
  wire \q_reg[7]_i_10_n_2 ;
  wire \q_reg[7]_i_10_n_3 ;
  wire \q_reg[7]_i_15_n_1 ;
  wire \q_reg[7]_i_15_n_2 ;
  wire \q_reg[7]_i_15_n_3 ;
  wire \q_reg[7]_i_16_n_1 ;
  wire \q_reg[7]_i_16_n_2 ;
  wire \q_reg[7]_i_16_n_3 ;
  wire \q_reg[7]_i_21_n_0 ;
  wire \q_reg[7]_i_21_n_1 ;
  wire \q_reg[7]_i_21_n_2 ;
  wire \q_reg[7]_i_21_n_3 ;
  wire \q_reg[7]_i_22_n_0 ;
  wire \q_reg[7]_i_22_n_1 ;
  wire \q_reg[7]_i_22_n_2 ;
  wire \q_reg[7]_i_22_n_3 ;
  wire \q_reg[7]_i_22_n_4 ;
  wire \q_reg[7]_i_22_n_5 ;
  wire \q_reg[7]_i_22_n_6 ;
  wire \q_reg[7]_i_22_n_7 ;
  wire \q_reg[7]_i_23_n_0 ;
  wire \q_reg[7]_i_23_n_1 ;
  wire \q_reg[7]_i_23_n_2 ;
  wire \q_reg[7]_i_23_n_3 ;
  wire \q_reg[7]_i_28_n_0 ;
  wire \q_reg[7]_i_28_n_1 ;
  wire \q_reg[7]_i_28_n_2 ;
  wire \q_reg[7]_i_28_n_3 ;
  wire \q_reg[7]_i_30_n_3 ;
  wire \q_reg[7]_i_31_n_0 ;
  wire \q_reg[7]_i_31_n_1 ;
  wire \q_reg[7]_i_31_n_2 ;
  wire \q_reg[7]_i_31_n_3 ;
  wire \q_reg[7]_i_36_n_0 ;
  wire \q_reg[7]_i_36_n_1 ;
  wire \q_reg[7]_i_36_n_2 ;
  wire \q_reg[7]_i_36_n_3 ;
  wire \q_reg[7]_i_37_n_0 ;
  wire \q_reg[7]_i_37_n_1 ;
  wire \q_reg[7]_i_37_n_2 ;
  wire \q_reg[7]_i_37_n_3 ;
  wire \q_reg[7]_i_37_n_4 ;
  wire \q_reg[7]_i_37_n_5 ;
  wire \q_reg[7]_i_37_n_6 ;
  wire \q_reg[7]_i_37_n_7 ;
  wire \q_reg[7]_i_3_n_1 ;
  wire \q_reg[7]_i_3_n_2 ;
  wire \q_reg[7]_i_3_n_3 ;
  wire \q_reg[7]_i_42_n_0 ;
  wire \q_reg[7]_i_42_n_1 ;
  wire \q_reg[7]_i_42_n_2 ;
  wire \q_reg[7]_i_42_n_3 ;
  wire \q_reg[7]_i_47_n_0 ;
  wire \q_reg[7]_i_47_n_1 ;
  wire \q_reg[7]_i_47_n_2 ;
  wire \q_reg[7]_i_47_n_3 ;
  wire \q_reg[7]_i_48_n_0 ;
  wire \q_reg[7]_i_48_n_1 ;
  wire \q_reg[7]_i_48_n_2 ;
  wire \q_reg[7]_i_48_n_3 ;
  wire \q_reg[7]_i_49_n_0 ;
  wire \q_reg[7]_i_49_n_1 ;
  wire \q_reg[7]_i_49_n_2 ;
  wire \q_reg[7]_i_49_n_3 ;
  wire \q_reg[7]_i_4_n_1 ;
  wire \q_reg[7]_i_4_n_2 ;
  wire \q_reg[7]_i_4_n_3 ;
  wire \q_reg[7]_i_6_n_1 ;
  wire \q_reg[7]_i_6_n_2 ;
  wire \q_reg[7]_i_6_n_3 ;
  wire \q_reg[7]_i_6_n_4 ;
  wire \q_reg[7]_i_6_n_5 ;
  wire \q_reg[7]_i_6_n_6 ;
  wire \q_reg[7]_i_6_n_7 ;
  wire \q_reg[7]_i_74_n_0 ;
  wire \q_reg[7]_i_74_n_1 ;
  wire \q_reg[7]_i_74_n_2 ;
  wire \q_reg[7]_i_74_n_3 ;
  wire \q_reg[7]_i_75_n_0 ;
  wire \q_reg[7]_i_75_n_1 ;
  wire \q_reg[7]_i_75_n_2 ;
  wire \q_reg[7]_i_75_n_3 ;
  wire \q_reg[7]_i_7_n_0 ;
  wire \q_reg[7]_i_7_n_1 ;
  wire \q_reg[7]_i_7_n_2 ;
  wire \q_reg[7]_i_7_n_3 ;
  wire \q_reg[7]_i_81_n_0 ;
  wire \q_reg[7]_i_81_n_1 ;
  wire \q_reg[7]_i_81_n_2 ;
  wire \q_reg[7]_i_81_n_3 ;
  wire \q_reg[7]_i_9_n_3 ;
  wire rst;
  wire rst_IBUF;
  wire up;
  wire up_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF dn_IBUF_inst
       (.I(dn),
        .O(dn_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[0]_i_1 
       (.I0(a_IBUF[0]),
        .I1(rst_IBUF),
        .I2(\q_reg[3]_i_2_n_7 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[1]_i_1 
       (.I0(a_IBUF[1]),
        .I1(rst_IBUF),
        .I2(\q_reg[3]_i_2_n_6 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_1 
       (.I0(a_IBUF[2]),
        .I1(rst_IBUF),
        .I2(\q_reg[3]_i_2_n_5 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[3]_i_1 
       (.I0(a_IBUF[3]),
        .I1(rst_IBUF),
        .I2(\q_reg[3]_i_2_n_4 ),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h7F)) 
    \q[3]_i_3 
       (.I0(q20_in),
        .I1(q3),
        .I2(up_IBUF),
        .O(\q[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \q[3]_i_4 
       (.I0(q_OBUF[3]),
        .I1(b_IBUF[3]),
        .I2(up_IBUF),
        .I3(q3),
        .I4(q20_in),
        .O(\q[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \q[3]_i_5 
       (.I0(q_OBUF[2]),
        .I1(b_IBUF[2]),
        .I2(up_IBUF),
        .I3(q3),
        .I4(q20_in),
        .O(\q[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \q[3]_i_6 
       (.I0(q_OBUF[1]),
        .I1(b_IBUF[1]),
        .I2(up_IBUF),
        .I3(q3),
        .I4(q20_in),
        .O(\q[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \q[3]_i_7 
       (.I0(q_OBUF[0]),
        .I1(b_IBUF[0]),
        .I2(up_IBUF),
        .I3(q3),
        .I4(q20_in),
        .O(\q[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[4]_i_1 
       (.I0(a_IBUF[4]),
        .I1(rst_IBUF),
        .I2(\q_reg[7]_i_6_n_7 ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[5]_i_1 
       (.I0(a_IBUF[5]),
        .I1(rst_IBUF),
        .I2(\q_reg[7]_i_6_n_6 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[6]_i_1 
       (.I0(a_IBUF[6]),
        .I1(rst_IBUF),
        .I2(\q_reg[7]_i_6_n_5 ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \q[7]_i_1 
       (.I0(rst_IBUF),
        .I1(dn_IBUF),
        .I2(q2),
        .I3(q1),
        .I4(q11_out),
        .O(\q[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[7]_i_100 
       (.I0(q4[2]),
        .I1(q4[3]),
        .O(\q[7]_i_100_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[7]_i_101 
       (.I0(q4[0]),
        .I1(q4[1]),
        .O(\q[7]_i_101_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_102 
       (.I0(q4[7]),
        .I1(q4[6]),
        .O(\q[7]_i_102_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[7]_i_103 
       (.I0(q4[4]),
        .I1(q4[5]),
        .O(\q[7]_i_103_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[7]_i_104 
       (.I0(q4[2]),
        .I1(q4[3]),
        .O(\q[7]_i_104_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[7]_i_105 
       (.I0(q4[0]),
        .I1(q4[1]),
        .O(\q[7]_i_105_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_11 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_12 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_13 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_14 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \q[7]_i_17 
       (.I0(q_OBUF[7]),
        .I1(b_IBUF[7]),
        .I2(up_IBUF),
        .I3(q3),
        .I4(q20_in),
        .O(\q[7]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \q[7]_i_18 
       (.I0(q_OBUF[6]),
        .I1(b_IBUF[6]),
        .I2(up_IBUF),
        .I3(q3),
        .I4(q20_in),
        .O(\q[7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h69999999)) 
    \q[7]_i_19 
       (.I0(q_OBUF[5]),
        .I1(b_IBUF[5]),
        .I2(up_IBUF),
        .I3(q3),
        .I4(q20_in),
        .O(\q[7]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[7]_i_2 
       (.I0(a_IBUF[7]),
        .I1(rst_IBUF),
        .I2(\q_reg[7]_i_6_n_4 ),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h69999999)) 
    \q[7]_i_20 
       (.I0(q_OBUF[4]),
        .I1(b_IBUF[4]),
        .I2(up_IBUF),
        .I3(q3),
        .I4(q20_in),
        .O(\q[7]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_24 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_25 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_26 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_27 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_29 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_32 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(q4[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_33 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_34 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_35 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \q[7]_i_38 
       (.I0(q_OBUF[7]),
        .I1(b_IBUF[7]),
        .O(\q[7]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \q[7]_i_39 
       (.I0(q_OBUF[6]),
        .I1(b_IBUF[6]),
        .O(\q[7]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \q[7]_i_40 
       (.I0(q_OBUF[5]),
        .I1(b_IBUF[5]),
        .O(\q[7]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \q[7]_i_41 
       (.I0(q_OBUF[4]),
        .I1(b_IBUF[4]),
        .O(\q[7]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_43 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_44 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_45 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_46 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \q[7]_i_5 
       (.I0(up_IBUF),
        .I1(q3),
        .I2(q20_in),
        .O(q11_out));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_50 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_50_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_51 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_51_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_52 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_52_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_53 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[7]_i_54 
       (.I0(\q_reg[7]_i_22_n_5 ),
        .I1(\q_reg[7]_i_22_n_4 ),
        .O(\q[7]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \q[7]_i_55 
       (.I0(\q_reg[7]_i_22_n_7 ),
        .I1(\q_reg[7]_i_22_n_6 ),
        .O(\q[7]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \q[7]_i_56 
       (.I0(\q_reg[7]_i_37_n_5 ),
        .I1(\q_reg[7]_i_37_n_4 ),
        .O(\q[7]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \q[7]_i_57 
       (.I0(\q_reg[7]_i_37_n_7 ),
        .I1(\q_reg[7]_i_37_n_6 ),
        .O(\q[7]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_58 
       (.I0(\q_reg[7]_i_22_n_5 ),
        .I1(\q_reg[7]_i_22_n_4 ),
        .O(\q[7]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_59 
       (.I0(\q_reg[7]_i_22_n_7 ),
        .I1(\q_reg[7]_i_22_n_6 ),
        .O(\q[7]_i_59_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_60 
       (.I0(\q_reg[7]_i_37_n_5 ),
        .I1(\q_reg[7]_i_37_n_4 ),
        .O(\q[7]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_61 
       (.I0(\q_reg[7]_i_37_n_7 ),
        .I1(\q_reg[7]_i_37_n_6 ),
        .O(\q[7]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \q[7]_i_62 
       (.I0(q_OBUF[3]),
        .I1(b_IBUF[3]),
        .O(\q[7]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \q[7]_i_63 
       (.I0(q_OBUF[2]),
        .I1(b_IBUF[2]),
        .O(\q[7]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \q[7]_i_64 
       (.I0(q_OBUF[1]),
        .I1(b_IBUF[1]),
        .O(\q[7]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \q[7]_i_65 
       (.I0(q_OBUF[0]),
        .I1(b_IBUF[0]),
        .O(\q[7]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_66 
       (.I0(\q_reg[7]_i_22_n_5 ),
        .I1(\q_reg[7]_i_22_n_4 ),
        .O(\q[7]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[7]_i_67 
       (.I0(\q_reg[7]_i_22_n_7 ),
        .I1(\q_reg[7]_i_22_n_6 ),
        .O(\q[7]_i_67_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[7]_i_68 
       (.I0(\q_reg[7]_i_37_n_5 ),
        .I1(\q_reg[7]_i_37_n_4 ),
        .O(\q[7]_i_68_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[7]_i_69 
       (.I0(\q_reg[7]_i_37_n_7 ),
        .I1(\q_reg[7]_i_37_n_6 ),
        .O(\q[7]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_70 
       (.I0(\q_reg[7]_i_22_n_4 ),
        .I1(\q_reg[7]_i_22_n_5 ),
        .O(\q[7]_i_70_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[7]_i_71 
       (.I0(\q_reg[7]_i_22_n_7 ),
        .I1(\q_reg[7]_i_22_n_6 ),
        .O(\q[7]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[7]_i_72 
       (.I0(\q_reg[7]_i_37_n_5 ),
        .I1(\q_reg[7]_i_37_n_4 ),
        .O(\q[7]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[7]_i_73 
       (.I0(\q_reg[7]_i_37_n_7 ),
        .I1(\q_reg[7]_i_37_n_6 ),
        .O(\q[7]_i_73_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_76 
       (.I0(q_OBUF[7]),
        .O(\q[7]_i_76_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_77 
       (.I0(b_IBUF[7]),
        .I1(q_OBUF[7]),
        .O(\q[7]_i_77_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_78 
       (.I0(b_IBUF[6]),
        .I1(q_OBUF[6]),
        .O(\q[7]_i_78_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_79 
       (.I0(b_IBUF[5]),
        .I1(q_OBUF[5]),
        .O(\q[7]_i_79_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_8 
       (.I0(\q_reg[7]_i_9_n_3 ),
        .O(\q[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_80 
       (.I0(b_IBUF[4]),
        .I1(q_OBUF[4]),
        .O(\q[7]_i_80_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_82 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_82_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_83 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_83_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_84 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_84_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_85 
       (.I0(\q_reg[7]_i_30_n_3 ),
        .O(\q[7]_i_85_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \q[7]_i_86 
       (.I0(q4[6]),
        .I1(q4[7]),
        .O(\q[7]_i_86_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \q[7]_i_87 
       (.I0(q4[4]),
        .I1(q4[5]),
        .O(\q[7]_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \q[7]_i_88 
       (.I0(q4[2]),
        .I1(q4[3]),
        .O(\q[7]_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \q[7]_i_89 
       (.I0(q4[0]),
        .I1(q4[1]),
        .O(\q[7]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[7]_i_90 
       (.I0(q4[6]),
        .I1(q4[7]),
        .O(\q[7]_i_90_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_91 
       (.I0(q4[4]),
        .I1(q4[5]),
        .O(\q[7]_i_91_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_92 
       (.I0(q4[2]),
        .I1(q4[3]),
        .O(\q[7]_i_92_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_93 
       (.I0(q4[0]),
        .I1(q4[1]),
        .O(\q[7]_i_93_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_94 
       (.I0(b_IBUF[3]),
        .I1(q_OBUF[3]),
        .O(\q[7]_i_94_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_95 
       (.I0(b_IBUF[2]),
        .I1(q_OBUF[2]),
        .O(\q[7]_i_95_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_96 
       (.I0(b_IBUF[1]),
        .I1(q_OBUF[1]),
        .O(\q[7]_i_96_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_97 
       (.I0(b_IBUF[0]),
        .I1(q_OBUF[0]),
        .O(\q[7]_i_97_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_98 
       (.I0(q4[6]),
        .I1(q4[7]),
        .O(\q[7]_i_98_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[7]_i_99 
       (.I0(q4[4]),
        .I1(q4[5]),
        .O(\q[7]_i_99_n_0 ));
  OBUF \q_OBUF[0]_inst 
       (.I(q_OBUF[0]),
        .O(q[0]));
  OBUF \q_OBUF[1]_inst 
       (.I(q_OBUF[1]),
        .O(q[1]));
  OBUF \q_OBUF[2]_inst 
       (.I(q_OBUF[2]),
        .O(q[2]));
  OBUF \q_OBUF[3]_inst 
       (.I(q_OBUF[3]),
        .O(q[3]));
  OBUF \q_OBUF[4]_inst 
       (.I(q_OBUF[4]),
        .O(q[4]));
  OBUF \q_OBUF[5]_inst 
       (.I(q_OBUF[5]),
        .O(q[5]));
  OBUF \q_OBUF[6]_inst 
       (.I(q_OBUF[6]),
        .O(q[6]));
  OBUF \q_OBUF[7]_inst 
       (.I(q_OBUF[7]),
        .O(q[7]));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(q_OBUF[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(q_OBUF[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(q_OBUF[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(q_OBUF[3]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\q_reg[3]_i_2_n_0 ,\q_reg[3]_i_2_n_1 ,\q_reg[3]_i_2_n_2 ,\q_reg[3]_i_2_n_3 }),
        .CYINIT(\q[3]_i_3_n_0 ),
        .DI(q_OBUF[3:0]),
        .O({\q_reg[3]_i_2_n_4 ,\q_reg[3]_i_2_n_5 ,\q_reg[3]_i_2_n_6 ,\q_reg[3]_i_2_n_7 }),
        .S({\q[3]_i_4_n_0 ,\q[3]_i_5_n_0 ,\q[3]_i_6_n_0 ,\q[3]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(q_OBUF[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(q_OBUF[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(q_OBUF[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(q_OBUF[7]),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_10 
       (.CI(\q_reg[7]_i_23_n_0 ),
        .CO({\q_reg[7]_i_10_n_0 ,\q_reg[7]_i_10_n_1 ,\q_reg[7]_i_10_n_2 ,\q_reg[7]_i_10_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q[7]_i_24_n_0 ,\q[7]_i_25_n_0 ,\q[7]_i_26_n_0 ,\q[7]_i_27_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_15 
       (.CI(\q_reg[7]_i_28_n_0 ),
        .CO({q3,\q_reg[7]_i_15_n_1 ,\q_reg[7]_i_15_n_2 ,\q_reg[7]_i_15_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\q[7]_i_29_n_0 ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q_reg[7]_i_30_n_3 ,\q_reg[7]_i_30_n_3 ,\q_reg[7]_i_30_n_3 ,\q_reg[7]_i_30_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_16 
       (.CI(\q_reg[7]_i_31_n_0 ),
        .CO({q20_in,\q_reg[7]_i_16_n_1 ,\q_reg[7]_i_16_n_2 ,\q_reg[7]_i_16_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\q_reg[7]_i_30_n_3 ,\<const0> ,\<const0> ,\<const0> }),
        .S({q4[31],\q[7]_i_33_n_0 ,\q[7]_i_34_n_0 ,\q[7]_i_35_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_21 
       (.CI(\q_reg[7]_i_36_n_0 ),
        .CO({\q_reg[7]_i_21_n_0 ,\q_reg[7]_i_21_n_1 ,\q_reg[7]_i_21_n_2 ,\q_reg[7]_i_21_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q_reg[7]_i_9_n_3 ,\q_reg[7]_i_9_n_3 ,\q_reg[7]_i_9_n_3 ,\q_reg[7]_i_9_n_3 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_22 
       (.CI(\q_reg[7]_i_37_n_0 ),
        .CO({\q_reg[7]_i_22_n_0 ,\q_reg[7]_i_22_n_1 ,\q_reg[7]_i_22_n_2 ,\q_reg[7]_i_22_n_3 }),
        .CYINIT(\<const0> ),
        .DI({b_IBUF[7],q_OBUF[6:4]}),
        .O({\q_reg[7]_i_22_n_4 ,\q_reg[7]_i_22_n_5 ,\q_reg[7]_i_22_n_6 ,\q_reg[7]_i_22_n_7 }),
        .S({\q[7]_i_38_n_0 ,\q[7]_i_39_n_0 ,\q[7]_i_40_n_0 ,\q[7]_i_41_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_23 
       (.CI(\q_reg[7]_i_42_n_0 ),
        .CO({\q_reg[7]_i_23_n_0 ,\q_reg[7]_i_23_n_1 ,\q_reg[7]_i_23_n_2 ,\q_reg[7]_i_23_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q[7]_i_43_n_0 ,\q[7]_i_44_n_0 ,\q[7]_i_45_n_0 ,\q[7]_i_46_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_28 
       (.CI(\q_reg[7]_i_47_n_0 ),
        .CO({\q_reg[7]_i_28_n_0 ,\q_reg[7]_i_28_n_1 ,\q_reg[7]_i_28_n_2 ,\q_reg[7]_i_28_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q_reg[7]_i_30_n_3 ,\q_reg[7]_i_30_n_3 ,\q_reg[7]_i_30_n_3 ,\q_reg[7]_i_30_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_3 
       (.CI(\q_reg[7]_i_7_n_0 ),
        .CO({q2,\q_reg[7]_i_3_n_1 ,\q_reg[7]_i_3_n_2 ,\q_reg[7]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\q[7]_i_8_n_0 ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q_reg[7]_i_9_n_3 ,\q_reg[7]_i_9_n_3 ,\q_reg[7]_i_9_n_3 ,\q_reg[7]_i_9_n_3 }));
  CARRY4 \q_reg[7]_i_30 
       (.CI(\q_reg[7]_i_48_n_0 ),
        .CO(\q_reg[7]_i_30_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\<const0> ,\<const1> }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_31 
       (.CI(\q_reg[7]_i_49_n_0 ),
        .CO({\q_reg[7]_i_31_n_0 ,\q_reg[7]_i_31_n_1 ,\q_reg[7]_i_31_n_2 ,\q_reg[7]_i_31_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q[7]_i_50_n_0 ,\q[7]_i_51_n_0 ,\q[7]_i_52_n_0 ,\q[7]_i_53_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_36 
       (.CI(\<const0> ),
        .CO({\q_reg[7]_i_36_n_0 ,\q_reg[7]_i_36_n_1 ,\q_reg[7]_i_36_n_2 ,\q_reg[7]_i_36_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\q[7]_i_54_n_0 ,\q[7]_i_55_n_0 ,\q[7]_i_56_n_0 ,\q[7]_i_57_n_0 }),
        .S({\q[7]_i_58_n_0 ,\q[7]_i_59_n_0 ,\q[7]_i_60_n_0 ,\q[7]_i_61_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_37 
       (.CI(\<const0> ),
        .CO({\q_reg[7]_i_37_n_0 ,\q_reg[7]_i_37_n_1 ,\q_reg[7]_i_37_n_2 ,\q_reg[7]_i_37_n_3 }),
        .CYINIT(\<const1> ),
        .DI(q_OBUF[3:0]),
        .O({\q_reg[7]_i_37_n_4 ,\q_reg[7]_i_37_n_5 ,\q_reg[7]_i_37_n_6 ,\q_reg[7]_i_37_n_7 }),
        .S({\q[7]_i_62_n_0 ,\q[7]_i_63_n_0 ,\q[7]_i_64_n_0 ,\q[7]_i_65_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_4 
       (.CI(\q_reg[7]_i_10_n_0 ),
        .CO({q1,\q_reg[7]_i_4_n_1 ,\q_reg[7]_i_4_n_2 ,\q_reg[7]_i_4_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\q_reg[7]_i_9_n_3 ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q[7]_i_11_n_0 ,\q[7]_i_12_n_0 ,\q[7]_i_13_n_0 ,\q[7]_i_14_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_42 
       (.CI(\<const0> ),
        .CO({\q_reg[7]_i_42_n_0 ,\q_reg[7]_i_42_n_1 ,\q_reg[7]_i_42_n_2 ,\q_reg[7]_i_42_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\q[7]_i_66_n_0 ,\q[7]_i_67_n_0 ,\q[7]_i_68_n_0 ,\q[7]_i_69_n_0 }),
        .S({\q[7]_i_70_n_0 ,\q[7]_i_71_n_0 ,\q[7]_i_72_n_0 ,\q[7]_i_73_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_47 
       (.CI(\q_reg[7]_i_74_n_0 ),
        .CO({\q_reg[7]_i_47_n_0 ,\q_reg[7]_i_47_n_1 ,\q_reg[7]_i_47_n_2 ,\q_reg[7]_i_47_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q_reg[7]_i_30_n_3 ,\q_reg[7]_i_30_n_3 ,\q_reg[7]_i_30_n_3 ,\q_reg[7]_i_30_n_3 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_48 
       (.CI(\q_reg[7]_i_75_n_0 ),
        .CO({\q_reg[7]_i_48_n_0 ,\q_reg[7]_i_48_n_1 ,\q_reg[7]_i_48_n_2 ,\q_reg[7]_i_48_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\q[7]_i_76_n_0 ,q_OBUF[6:4]}),
        .O(q4[7:4]),
        .S({\q[7]_i_77_n_0 ,\q[7]_i_78_n_0 ,\q[7]_i_79_n_0 ,\q[7]_i_80_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_49 
       (.CI(\q_reg[7]_i_81_n_0 ),
        .CO({\q_reg[7]_i_49_n_0 ,\q_reg[7]_i_49_n_1 ,\q_reg[7]_i_49_n_2 ,\q_reg[7]_i_49_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q[7]_i_82_n_0 ,\q[7]_i_83_n_0 ,\q[7]_i_84_n_0 ,\q[7]_i_85_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_6 
       (.CI(\q_reg[3]_i_2_n_0 ),
        .CO({\q_reg[7]_i_6_n_1 ,\q_reg[7]_i_6_n_2 ,\q_reg[7]_i_6_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,q_OBUF[6:4]}),
        .O({\q_reg[7]_i_6_n_4 ,\q_reg[7]_i_6_n_5 ,\q_reg[7]_i_6_n_6 ,\q_reg[7]_i_6_n_7 }),
        .S({\q[7]_i_17_n_0 ,\q[7]_i_18_n_0 ,\q[7]_i_19_n_0 ,\q[7]_i_20_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_7 
       (.CI(\q_reg[7]_i_21_n_0 ),
        .CO({\q_reg[7]_i_7_n_0 ,\q_reg[7]_i_7_n_1 ,\q_reg[7]_i_7_n_2 ,\q_reg[7]_i_7_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\q_reg[7]_i_9_n_3 ,\q_reg[7]_i_9_n_3 ,\q_reg[7]_i_9_n_3 ,\q_reg[7]_i_9_n_3 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_74 
       (.CI(\<const0> ),
        .CO({\q_reg[7]_i_74_n_0 ,\q_reg[7]_i_74_n_1 ,\q_reg[7]_i_74_n_2 ,\q_reg[7]_i_74_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\q[7]_i_86_n_0 ,\q[7]_i_87_n_0 ,\q[7]_i_88_n_0 ,\q[7]_i_89_n_0 }),
        .S({\q[7]_i_90_n_0 ,\q[7]_i_91_n_0 ,\q[7]_i_92_n_0 ,\q[7]_i_93_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_75 
       (.CI(\<const0> ),
        .CO({\q_reg[7]_i_75_n_0 ,\q_reg[7]_i_75_n_1 ,\q_reg[7]_i_75_n_2 ,\q_reg[7]_i_75_n_3 }),
        .CYINIT(\<const0> ),
        .DI(q_OBUF[3:0]),
        .O(q4[3:0]),
        .S({\q[7]_i_94_n_0 ,\q[7]_i_95_n_0 ,\q[7]_i_96_n_0 ,\q[7]_i_97_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_81 
       (.CI(\<const0> ),
        .CO({\q_reg[7]_i_81_n_0 ,\q_reg[7]_i_81_n_1 ,\q_reg[7]_i_81_n_2 ,\q_reg[7]_i_81_n_3 }),
        .CYINIT(\<const1> ),
        .DI({\q[7]_i_98_n_0 ,\q[7]_i_99_n_0 ,\q[7]_i_100_n_0 ,\q[7]_i_101_n_0 }),
        .S({\q[7]_i_102_n_0 ,\q[7]_i_103_n_0 ,\q[7]_i_104_n_0 ,\q[7]_i_105_n_0 }));
  CARRY4 \q_reg[7]_i_9 
       (.CI(\q_reg[7]_i_22_n_0 ),
        .CO(\q_reg[7]_i_9_n_3 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .S({\<const0> ,\<const0> ,\<const0> ,\<const1> }));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF up_IBUF_inst
       (.I(up),
        .O(up_IBUF));
endmodule
