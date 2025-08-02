// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Feb 11 23:12:25 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog post_synth.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (sw,
    sel,
    led);
  input [6:0]sw;
  input sel;
  output [6:0]led;

  wire [1:1]decoder_LEDs;
  wire [6:0]led;
  wire [6:0]led_OBUF;
  wire \led_OBUF[0]_inst_i_2_n_0 ;
  wire \led_OBUF[2]_inst_i_2_n_0 ;
  wire sel;
  wire sel_IBUF;
  wire [6:0]sw;
  wire [6:0]sw_IBUF;

  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFFFFF0)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(sw_IBUF[6]),
        .I1(\led_OBUF[0]_inst_i_2_n_0 ),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .I4(sw_IBUF[2]),
        .I5(sel_IBUF),
        .O(led_OBUF[0]));
  LUT6 #(
    .INIT(64'h00000000FFFF00F2)) 
    \led_OBUF[0]_inst_i_2 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[3]),
        .I4(sw_IBUF[4]),
        .I5(sw_IBUF[5]),
        .O(\led_OBUF[0]_inst_i_2_n_0 ));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAFC)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(decoder_LEDs),
        .I1(sw_IBUF[1]),
        .I2(sw_IBUF[2]),
        .I3(sel_IBUF),
        .O(led_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAABBBA)) 
    \led_OBUF[1]_inst_i_2 
       (.I0(sw_IBUF[6]),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[2]),
        .I3(sw_IBUF[1]),
        .I4(sw_IBUF[4]),
        .I5(sw_IBUF[5]),
        .O(decoder_LEDs));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5555FDDD)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(\led_OBUF[2]_inst_i_2_n_0 ),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[0]),
        .I3(sw_IBUF[1]),
        .I4(sel_IBUF),
        .O(led_OBUF[2]));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \led_OBUF[2]_inst_i_2 
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[3]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[6]),
        .I4(sel_IBUF),
        .O(\led_OBUF[2]_inst_i_2_n_0 ));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(sw_IBUF[2]),
        .I1(sel_IBUF),
        .O(led_OBUF[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \led_OBUF[4]_inst_i_1 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[2]),
        .I3(sel_IBUF),
        .O(led_OBUF[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \led_OBUF[5]_inst_i_1 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[2]),
        .I2(sel_IBUF),
        .O(led_OBUF[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \led_OBUF[6]_inst_i_1 
       (.I0(sw_IBUF[2]),
        .I1(sw_IBUF[0]),
        .I2(sw_IBUF[1]),
        .I3(sel_IBUF),
        .O(led_OBUF[6]));
  IBUF sel_IBUF_inst
       (.I(sel),
        .O(sel_IBUF));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
endmodule
