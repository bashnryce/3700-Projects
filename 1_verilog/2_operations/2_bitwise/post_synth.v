// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan 27 21:59:38 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force post_synth.v
// Design      : bitwise_operations
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module bitwise_operations
   (clk,
    a,
    b,
    op,
    q);
  input clk;
  input [6:0]a;
  input [6:0]b;
  input [1:0]op;
  output [6:0]q;

  wire \<const0> ;
  wire \<const1> ;
  wire [6:0]a;
  wire [6:0]a_IBUF;
  wire [6:0]b;
  wire [6:0]b_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]op;
  wire [1:0]op_IBUF;
  wire [6:0]q;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q[2]_i_1_n_0 ;
  wire \q[3]_i_1_n_0 ;
  wire \q[4]_i_1_n_0 ;
  wire \q[5]_i_1_n_0 ;
  wire \q[6]_i_1_n_0 ;
  wire [6:0]q_OBUF;

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
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \op_IBUF[0]_inst 
       (.I(op[0]),
        .O(op_IBUF[0]));
  IBUF \op_IBUF[1]_inst 
       (.I(op[1]),
        .O(op_IBUF[1]));
  LUT4 #(
    .INIT(16'h16E8)) 
    \q[0]_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(op_IBUF[0]),
        .I3(op_IBUF[1]),
        .O(\q[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h16E8)) 
    \q[1]_i_1 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(op_IBUF[0]),
        .I3(op_IBUF[1]),
        .O(\q[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h16E8)) 
    \q[2]_i_1 
       (.I0(b_IBUF[2]),
        .I1(a_IBUF[2]),
        .I2(op_IBUF[0]),
        .I3(op_IBUF[1]),
        .O(\q[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h16E8)) 
    \q[3]_i_1 
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[3]),
        .I2(op_IBUF[0]),
        .I3(op_IBUF[1]),
        .O(\q[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h16E8)) 
    \q[4]_i_1 
       (.I0(b_IBUF[4]),
        .I1(a_IBUF[4]),
        .I2(op_IBUF[0]),
        .I3(op_IBUF[1]),
        .O(\q[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h16E8)) 
    \q[5]_i_1 
       (.I0(b_IBUF[5]),
        .I1(a_IBUF[5]),
        .I2(op_IBUF[0]),
        .I3(op_IBUF[1]),
        .O(\q[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h16E8)) 
    \q[6]_i_1 
       (.I0(b_IBUF[6]),
        .I1(a_IBUF[6]),
        .I2(op_IBUF[0]),
        .I3(op_IBUF[1]),
        .O(\q[6]_i_1_n_0 ));
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
  FDRE \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q[0]_i_1_n_0 ),
        .Q(q_OBUF[0]),
        .R(\<const0> ));
  FDRE \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q[1]_i_1_n_0 ),
        .Q(q_OBUF[1]),
        .R(\<const0> ));
  FDRE \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q[2]_i_1_n_0 ),
        .Q(q_OBUF[2]),
        .R(\<const0> ));
  FDRE \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q[3]_i_1_n_0 ),
        .Q(q_OBUF[3]),
        .R(\<const0> ));
  FDRE \q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q[4]_i_1_n_0 ),
        .Q(q_OBUF[4]),
        .R(\<const0> ));
  FDRE \q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q[5]_i_1_n_0 ),
        .Q(q_OBUF[5]),
        .R(\<const0> ));
  FDRE \q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\q[6]_i_1_n_0 ),
        .Q(q_OBUF[6]),
        .R(\<const0> ));
endmodule
