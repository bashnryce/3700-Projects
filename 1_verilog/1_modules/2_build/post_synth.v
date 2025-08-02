// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jan 17 21:48:21 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force post_synth.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module simple_module
   (q_reg_0,
    clk_IBUF_BUFG,
    en_IBUF,
    d_IBUF);
  output q_reg_0;
  input clk_IBUF_BUFG;
  input en_IBUF;
  input d_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire clk_IBUF_BUFG;
  wire d_IBUF;
  wire en_IBUF;
  wire q_i_1_n_0;
  wire q_reg_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h8)) 
    q_i_1
       (.I0(en_IBUF),
        .I1(d_IBUF),
        .O(q_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(q_i_1_n_0),
        .Q(q_reg_0),
        .R(\<const0> ));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    en,
    d,
    q);
  input clk;
  input en;
  input d;
  output q;

  wire \<const0> ;
  wire \<const1> ;
  wire SM1_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d;
  wire d_IBUF;
  wire en;
  wire en_IBUF;
  wire q;
  wire q_OBUF;

  GND GND
       (.G(\<const0> ));
  simple_module SM1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .d_IBUF(d_IBUF),
        .en_IBUF(en_IBUF),
        .q_reg_0(SM1_n_0));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF d_IBUF_inst
       (.I(d),
        .O(d_IBUF));
  IBUF en_IBUF_inst
       (.I(en),
        .O(en_IBUF));
  OBUF q_OBUF_inst
       (.I(q_OBUF),
        .O(q));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SM1_n_0),
        .Q(q_OBUF),
        .R(\<const0> ));
endmodule
