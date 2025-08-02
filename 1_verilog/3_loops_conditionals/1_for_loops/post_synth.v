// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Feb 10 23:18:26 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog post_synth.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module add_bits
   (D,
    Q);
  output [3:0]D;
  input [7:0]Q;

  wire [3:0]D;
  wire [7:0]Q;
  wire \q[1]_i_2_n_0 ;
  wire \q[1]_i_3_n_0 ;
  wire \q[1]_i_4_n_0 ;
  wire \q[3]_i_2_n_0 ;
  wire \q[3]_i_3_n_0 ;
  wire \q[3]_i_4_n_0 ;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \q[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[7]),
        .I2(\q[1]_i_4_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h9336366C)) 
    \q[1]_i_1 
       (.I0(\q[1]_i_2_n_0 ),
        .I1(\q[1]_i_3_n_0 ),
        .I2(Q[7]),
        .I3(Q[0]),
        .I4(\q[1]_i_4_n_0 ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \q[1]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \q[1]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\q[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q[1]_i_4 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(\q[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFEECECC8C880)) 
    \q[2]_i_1 
       (.I0(\q[3]_i_2_n_0 ),
        .I1(\q[3]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\q[3]_i_4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \q[3]_i_1 
       (.I0(\q[3]_i_2_n_0 ),
        .I1(\q[3]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\q[3]_i_4_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q[3]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[0]),
        .O(\q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \q[3]_i_3 
       (.I0(Q[7]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(\q[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \q[3]_i_4 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\q[3]_i_4_n_0 ));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (a,
    clk,
    load,
    q);
  input [7:0]a;
  input clk;
  input load;
  output [3:0]q;

  wire \<const0> ;
  wire \<const1> ;
  wire \_a_reg_n_0_[0] ;
  wire [3:0]_q;
  wire [7:0]a;
  wire [7:0]a_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire load;
  wire load_IBUF;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire [3:0]q;
  wire [3:0]q_OBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \_a_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(load_IBUF),
        .D(a_IBUF[0]),
        .Q(\_a_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE \_a_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(load_IBUF),
        .D(a_IBUF[1]),
        .Q(p_0_in),
        .R(\<const0> ));
  FDRE \_a_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(load_IBUF),
        .D(a_IBUF[2]),
        .Q(p_0_in0_in),
        .R(\<const0> ));
  FDRE \_a_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(load_IBUF),
        .D(a_IBUF[3]),
        .Q(p_0_in1_in),
        .R(\<const0> ));
  FDRE \_a_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(load_IBUF),
        .D(a_IBUF[4]),
        .Q(p_0_in2_in),
        .R(\<const0> ));
  FDRE \_a_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(load_IBUF),
        .D(a_IBUF[5]),
        .Q(p_0_in3_in),
        .R(\<const0> ));
  FDRE \_a_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(load_IBUF),
        .D(a_IBUF[6]),
        .Q(p_0_in4_in),
        .R(\<const0> ));
  FDRE \_a_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(load_IBUF),
        .D(a_IBUF[7]),
        .Q(p_0_in5_in),
        .R(\<const0> ));
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
  add_bits add_bits_instance
       (.D(_q),
        .Q({p_0_in5_in,p_0_in4_in,p_0_in3_in,p_0_in2_in,p_0_in1_in,p_0_in0_in,p_0_in,\_a_reg_n_0_[0] }));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF load_IBUF_inst
       (.I(load),
        .O(load_IBUF));
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
  FDRE \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(_q[0]),
        .Q(q_OBUF[0]),
        .R(\<const0> ));
  FDRE \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(_q[1]),
        .Q(q_OBUF[1]),
        .R(\<const0> ));
  FDRE \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(_q[2]),
        .Q(q_OBUF[2]),
        .R(\<const0> ));
  FDRE \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(_q[3]),
        .Q(q_OBUF[3]),
        .R(\<const0> ));
endmodule
