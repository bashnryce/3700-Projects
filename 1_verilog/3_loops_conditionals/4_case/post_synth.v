// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb 15 23:45:56 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force post_synth.v
// Design      : arithmetic_unit
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module arithmetic_unit
   (A,
    B,
    sel,
    Q,
    overflow);
  input [3:0]A;
  input [3:0]B;
  input [1:0]sel;
  output [3:0]Q;
  output overflow;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire [3:0]Q;
  wire [3:0]Q_OBUF;
  wire \Q_OBUF[2]_inst_i_2_n_0 ;
  wire \Q_OBUF[2]_inst_i_3_n_0 ;
  wire \Q_OBUF[3]_inst_i_2_n_0 ;
  wire \Q_OBUF[3]_inst_i_3_n_0 ;
  wire \Q_OBUF[3]_inst_i_4_n_0 ;
  wire \Q_OBUF[3]_inst_i_5_n_0 ;
  wire \Q_OBUF[3]_inst_i_6_n_0 ;
  wire \Q_OBUF[3]_inst_i_7_n_0 ;
  wire overflow;
  wire overflow_OBUF;
  wire overflow_OBUF_inst_i_2_n_0;
  wire overflow_OBUF_inst_i_3_n_0;
  wire overflow_OBUF_inst_i_4_n_0;
  wire overflow_OBUF_inst_i_5_n_0;
  wire [1:0]sel;
  wire [1:0]sel_IBUF;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  OBUF \Q_OBUF[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]));
  LUT4 #(
    .INIT(16'hC770)) 
    \Q_OBUF[0]_inst_i_1 
       (.I0(sel_IBUF[0]),
        .I1(sel_IBUF[1]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[0]),
        .O(Q_OBUF[0]));
  OBUF \Q_OBUF[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]));
  LUT6 #(
    .INIT(64'hB661E334A770A770)) 
    \Q_OBUF[1]_inst_i_1 
       (.I0(sel_IBUF[1]),
        .I1(sel_IBUF[0]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[1]),
        .I4(A_IBUF[0]),
        .I5(B_IBUF[0]),
        .O(Q_OBUF[1]));
  OBUF \Q_OBUF[2]_inst 
       (.I(Q_OBUF[2]),
        .O(Q[2]));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \Q_OBUF[2]_inst_i_1 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(\Q_OBUF[2]_inst_i_2_n_0 ),
        .I4(sel_IBUF[0]),
        .I5(\Q_OBUF[2]_inst_i_3_n_0 ),
        .O(Q_OBUF[2]));
  LUT6 #(
    .INIT(64'h6696666696999696)) 
    \Q_OBUF[2]_inst_i_2 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[0]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[1]),
        .O(\Q_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9996969696666666)) 
    \Q_OBUF[2]_inst_i_3 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[0]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[1]),
        .O(\Q_OBUF[2]_inst_i_3_n_0 ));
  OBUF \Q_OBUF[3]_inst 
       (.I(Q_OBUF[3]),
        .O(Q[3]));
  LUT6 #(
    .INIT(64'h8F80EFEF8F80E0E0)) 
    \Q_OBUF[3]_inst_i_1 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .I2(sel_IBUF[1]),
        .I3(\Q_OBUF[3]_inst_i_2_n_0 ),
        .I4(sel_IBUF[0]),
        .I5(\Q_OBUF[3]_inst_i_3_n_0 ),
        .O(Q_OBUF[3]));
  LUT6 #(
    .INIT(64'hED5A485AA5EDA548)) 
    \Q_OBUF[3]_inst_i_2 
       (.I0(B_IBUF[3]),
        .I1(\Q_OBUF[3]_inst_i_4_n_0 ),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[2]),
        .I4(\Q_OBUF[3]_inst_i_5_n_0 ),
        .I5(A_IBUF[2]),
        .O(\Q_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA5EDA548ED5A485A)) 
    \Q_OBUF[3]_inst_i_3 
       (.I0(B_IBUF[3]),
        .I1(\Q_OBUF[3]_inst_i_6_n_0 ),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[2]),
        .I4(\Q_OBUF[3]_inst_i_7_n_0 ),
        .I5(A_IBUF[2]),
        .O(\Q_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF751)) 
    \Q_OBUF[3]_inst_i_4 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[0]),
        .I2(A_IBUF[0]),
        .I3(A_IBUF[1]),
        .O(\Q_OBUF[3]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h20BA)) 
    \Q_OBUF[3]_inst_i_5 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[1]),
        .O(\Q_OBUF[3]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h157F)) 
    \Q_OBUF[3]_inst_i_6 
       (.I0(B_IBUF[1]),
        .I1(B_IBUF[0]),
        .I2(A_IBUF[0]),
        .I3(A_IBUF[1]),
        .O(\Q_OBUF[3]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEA80)) 
    \Q_OBUF[3]_inst_i_7 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[1]),
        .O(\Q_OBUF[3]_inst_i_7_n_0 ));
  OBUF overflow_OBUF_inst
       (.I(overflow_OBUF),
        .O(overflow));
  LUT4 #(
    .INIT(16'h00E2)) 
    overflow_OBUF_inst_i_1
       (.I0(overflow_OBUF_inst_i_2_n_0),
        .I1(sel_IBUF[0]),
        .I2(overflow_OBUF_inst_i_3_n_0),
        .I3(sel_IBUF[1]),
        .O(overflow_OBUF));
  LUT6 #(
    .INIT(64'h8888888833303000)) 
    overflow_OBUF_inst_i_2
       (.I0(overflow_OBUF_inst_i_4_n_0),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[2]),
        .I3(\Q_OBUF[3]_inst_i_7_n_0 ),
        .I4(B_IBUF[2]),
        .I5(A_IBUF[3]),
        .O(overflow_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h3303030088888888)) 
    overflow_OBUF_inst_i_3
       (.I0(overflow_OBUF_inst_i_5_n_0),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[2]),
        .I3(\Q_OBUF[3]_inst_i_5_n_0 ),
        .I4(B_IBUF[2]),
        .I5(A_IBUF[3]),
        .O(overflow_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'h1117171717777776)) 
    overflow_OBUF_inst_i_4
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[0]),
        .I4(A_IBUF[0]),
        .I5(B_IBUF[1]),
        .O(overflow_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hD5FDDDFF40544454)) 
    overflow_OBUF_inst_i_5
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[1]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[1]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[2]),
        .O(overflow_OBUF_inst_i_5_n_0));
  IBUF \sel_IBUF[0]_inst 
       (.I(sel[0]),
        .O(sel_IBUF[0]));
  IBUF \sel_IBUF[1]_inst 
       (.I(sel[1]),
        .O(sel_IBUF[1]));
endmodule
