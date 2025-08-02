// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jan 26 23:49:54 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force post_synth.v
// Design      : reverse_bits_module
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module reverse_bits_module
   (a,
    b,
    q,
    w);
  input [7:0]a;
  input [7:0]b;
  output [7:0]q;
  output [7:0]w;

  wire [7:0]a;
  wire [7:0]b;
  wire [7:0]q;
  wire [7:0]q_OBUF;
  wire [7:0]w;
  wire [7:0]w_OBUF;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(q_OBUF[7]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(q_OBUF[6]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(q_OBUF[5]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(q_OBUF[4]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(q_OBUF[3]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(q_OBUF[2]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(q_OBUF[1]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(q_OBUF[0]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(w_OBUF[7]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(w_OBUF[6]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(w_OBUF[5]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(w_OBUF[4]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(w_OBUF[3]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(w_OBUF[2]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(w_OBUF[1]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(w_OBUF[0]));
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
  OBUF \w_OBUF[0]_inst 
       (.I(w_OBUF[0]),
        .O(w[0]));
  OBUF \w_OBUF[1]_inst 
       (.I(w_OBUF[1]),
        .O(w[1]));
  OBUF \w_OBUF[2]_inst 
       (.I(w_OBUF[2]),
        .O(w[2]));
  OBUF \w_OBUF[3]_inst 
       (.I(w_OBUF[3]),
        .O(w[3]));
  OBUF \w_OBUF[4]_inst 
       (.I(w_OBUF[4]),
        .O(w[4]));
  OBUF \w_OBUF[5]_inst 
       (.I(w_OBUF[5]),
        .O(w[5]));
  OBUF \w_OBUF[6]_inst 
       (.I(w_OBUF[6]),
        .O(w[6]));
  OBUF \w_OBUF[7]_inst 
       (.I(w_OBUF[7]),
        .O(w[7]));
endmodule
