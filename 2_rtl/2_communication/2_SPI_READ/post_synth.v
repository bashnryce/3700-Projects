// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Mar 11 06:04:40 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force post_synth.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module simpleSPI
   (CS_OBUF,
    SCLK_OBUF,
    i_d_ready,
    d_ready_reg_0,
    \sclk_count_reg[12]_0 ,
    Q,
    CLK,
    SCLK_reg_0,
    rst_IBUF,
    i_rd,
    i_rd_reg,
    i_rd_reg_0,
    i_rd_reg_1,
    S,
    \sclk_count_reg[0]_0 ,
    \sclk_count_reg[0]_1 ,
    D);
  output CS_OBUF;
  output SCLK_OBUF;
  output i_d_ready;
  output d_ready_reg_0;
  output \sclk_count_reg[12]_0 ;
  output [15:0]Q;
  input CLK;
  input SCLK_reg_0;
  input rst_IBUF;
  input i_rd;
  input i_rd_reg;
  input i_rd_reg_0;
  input i_rd_reg_1;
  input [1:0]S;
  input \sclk_count_reg[0]_0 ;
  input \sclk_count_reg[0]_1 ;
  input [0:0]D;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire CS1_out;
  wire CS_OBUF;
  wire CS_i_2_n_0;
  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire [15:0]Q;
  wire [1:0]S;
  wire SCLK_OBUF;
  wire SCLK_i_1_n_0;
  wire SCLK_reg_0;
  wire \bit_index[0]_i_1_n_0 ;
  wire \bit_index[1]_i_1_n_0 ;
  wire \bit_index[2]_i_1_n_0 ;
  wire \bit_index[3]_i_1_n_0 ;
  wire \bit_index[3]_i_2_n_0 ;
  wire \bit_index[3]_i_3_n_0 ;
  wire \bit_index[3]_i_4_n_0 ;
  wire \bit_index_reg_n_0_[0] ;
  wire \bit_index_reg_n_0_[1] ;
  wire \bit_index_reg_n_0_[2] ;
  wire \bit_index_reg_n_0_[3] ;
  wire \d[0]_i_1_n_0 ;
  wire \d[10]_i_1_n_0 ;
  wire \d[11]_i_1_n_0 ;
  wire \d[12]_i_1_n_0 ;
  wire \d[13]_i_1_n_0 ;
  wire \d[14]_i_1_n_0 ;
  wire \d[15]_i_1_n_0 ;
  wire \d[15]_i_2_n_0 ;
  wire \d[1]_i_1_n_0 ;
  wire \d[2]_i_1_n_0 ;
  wire \d[3]_i_1_n_0 ;
  wire \d[4]_i_1_n_0 ;
  wire \d[5]_i_1_n_0 ;
  wire \d[6]_i_1_n_0 ;
  wire \d[7]_i_1_n_0 ;
  wire \d[7]_i_2_n_0 ;
  wire \d[8]_i_1_n_0 ;
  wire \d[9]_i_1_n_0 ;
  wire d_ready_i_1_n_0;
  wire d_ready_i_2_n_0;
  wire d_ready_reg_0;
  wire [31:1]data0;
  wire i_d_ready;
  wire i_rd;
  wire i_rd_reg;
  wire i_rd_reg_0;
  wire i_rd_reg_1;
  wire rst_IBUF;
  wire [31:0]sclk_count;
  wire \sclk_count[0]_i_6_n_0 ;
  wire \sclk_count[31]_i_10_n_0 ;
  wire \sclk_count[31]_i_2_n_0 ;
  wire \sclk_count[31]_i_3_n_0 ;
  wire \sclk_count[31]_i_4_n_0 ;
  wire \sclk_count[31]_i_5_n_0 ;
  wire \sclk_count[31]_i_7_n_0 ;
  wire \sclk_count[31]_i_8_n_0 ;
  wire \sclk_count[31]_i_9_n_0 ;
  wire [31:0]sclk_count_0;
  wire \sclk_count_reg[0]_0 ;
  wire \sclk_count_reg[0]_1 ;
  wire \sclk_count_reg[12]_0 ;
  wire \sclk_count_reg[12]_i_2_n_0 ;
  wire \sclk_count_reg[12]_i_2_n_1 ;
  wire \sclk_count_reg[12]_i_2_n_2 ;
  wire \sclk_count_reg[12]_i_2_n_3 ;
  wire \sclk_count_reg[16]_i_2_n_0 ;
  wire \sclk_count_reg[16]_i_2_n_1 ;
  wire \sclk_count_reg[16]_i_2_n_2 ;
  wire \sclk_count_reg[16]_i_2_n_3 ;
  wire \sclk_count_reg[20]_i_2_n_0 ;
  wire \sclk_count_reg[20]_i_2_n_1 ;
  wire \sclk_count_reg[20]_i_2_n_2 ;
  wire \sclk_count_reg[20]_i_2_n_3 ;
  wire \sclk_count_reg[24]_i_2_n_0 ;
  wire \sclk_count_reg[24]_i_2_n_1 ;
  wire \sclk_count_reg[24]_i_2_n_2 ;
  wire \sclk_count_reg[24]_i_2_n_3 ;
  wire \sclk_count_reg[28]_i_2_n_0 ;
  wire \sclk_count_reg[28]_i_2_n_1 ;
  wire \sclk_count_reg[28]_i_2_n_2 ;
  wire \sclk_count_reg[28]_i_2_n_3 ;
  wire \sclk_count_reg[31]_i_6_n_2 ;
  wire \sclk_count_reg[31]_i_6_n_3 ;
  wire \sclk_count_reg[4]_i_2_n_0 ;
  wire \sclk_count_reg[4]_i_2_n_1 ;
  wire \sclk_count_reg[4]_i_2_n_2 ;
  wire \sclk_count_reg[4]_i_2_n_3 ;
  wire \sclk_count_reg[8]_i_2_n_0 ;
  wire \sclk_count_reg[8]_i_2_n_1 ;
  wire \sclk_count_reg[8]_i_2_n_2 ;
  wire \sclk_count_reg[8]_i_2_n_3 ;
  wire [2:0]state__0;
  wire t_count;
  wire \t_count[0]_i_10_n_0 ;
  wire \t_count[0]_i_11_n_0 ;
  wire \t_count[0]_i_3_n_0 ;
  wire \t_count[0]_i_4_n_0 ;
  wire \t_count[0]_i_5_n_0 ;
  wire \t_count[0]_i_6_n_0 ;
  wire \t_count[0]_i_7_n_0 ;
  wire \t_count[0]_i_8_n_0 ;
  wire \t_count[0]_i_9_n_0 ;
  wire [31:0]t_count_reg;
  wire \t_count_reg[0]_i_2_n_0 ;
  wire \t_count_reg[0]_i_2_n_1 ;
  wire \t_count_reg[0]_i_2_n_2 ;
  wire \t_count_reg[0]_i_2_n_3 ;
  wire \t_count_reg[0]_i_2_n_4 ;
  wire \t_count_reg[0]_i_2_n_5 ;
  wire \t_count_reg[0]_i_2_n_6 ;
  wire \t_count_reg[0]_i_2_n_7 ;
  wire \t_count_reg[12]_i_1_n_0 ;
  wire \t_count_reg[12]_i_1_n_1 ;
  wire \t_count_reg[12]_i_1_n_2 ;
  wire \t_count_reg[12]_i_1_n_3 ;
  wire \t_count_reg[12]_i_1_n_4 ;
  wire \t_count_reg[12]_i_1_n_5 ;
  wire \t_count_reg[12]_i_1_n_6 ;
  wire \t_count_reg[12]_i_1_n_7 ;
  wire \t_count_reg[16]_i_1_n_0 ;
  wire \t_count_reg[16]_i_1_n_1 ;
  wire \t_count_reg[16]_i_1_n_2 ;
  wire \t_count_reg[16]_i_1_n_3 ;
  wire \t_count_reg[16]_i_1_n_4 ;
  wire \t_count_reg[16]_i_1_n_5 ;
  wire \t_count_reg[16]_i_1_n_6 ;
  wire \t_count_reg[16]_i_1_n_7 ;
  wire \t_count_reg[20]_i_1_n_0 ;
  wire \t_count_reg[20]_i_1_n_1 ;
  wire \t_count_reg[20]_i_1_n_2 ;
  wire \t_count_reg[20]_i_1_n_3 ;
  wire \t_count_reg[20]_i_1_n_4 ;
  wire \t_count_reg[20]_i_1_n_5 ;
  wire \t_count_reg[20]_i_1_n_6 ;
  wire \t_count_reg[20]_i_1_n_7 ;
  wire \t_count_reg[24]_i_1_n_0 ;
  wire \t_count_reg[24]_i_1_n_1 ;
  wire \t_count_reg[24]_i_1_n_2 ;
  wire \t_count_reg[24]_i_1_n_3 ;
  wire \t_count_reg[24]_i_1_n_4 ;
  wire \t_count_reg[24]_i_1_n_5 ;
  wire \t_count_reg[24]_i_1_n_6 ;
  wire \t_count_reg[24]_i_1_n_7 ;
  wire \t_count_reg[28]_i_1_n_1 ;
  wire \t_count_reg[28]_i_1_n_2 ;
  wire \t_count_reg[28]_i_1_n_3 ;
  wire \t_count_reg[28]_i_1_n_4 ;
  wire \t_count_reg[28]_i_1_n_5 ;
  wire \t_count_reg[28]_i_1_n_6 ;
  wire \t_count_reg[28]_i_1_n_7 ;
  wire \t_count_reg[4]_i_1_n_0 ;
  wire \t_count_reg[4]_i_1_n_1 ;
  wire \t_count_reg[4]_i_1_n_2 ;
  wire \t_count_reg[4]_i_1_n_3 ;
  wire \t_count_reg[4]_i_1_n_4 ;
  wire \t_count_reg[4]_i_1_n_5 ;
  wire \t_count_reg[4]_i_1_n_6 ;
  wire \t_count_reg[4]_i_1_n_7 ;
  wire \t_count_reg[8]_i_1_n_0 ;
  wire \t_count_reg[8]_i_1_n_1 ;
  wire \t_count_reg[8]_i_1_n_2 ;
  wire \t_count_reg[8]_i_1_n_3 ;
  wire \t_count_reg[8]_i_1_n_4 ;
  wire \t_count_reg[8]_i_1_n_5 ;
  wire \t_count_reg[8]_i_1_n_6 ;
  wire \t_count_reg[8]_i_1_n_7 ;
  wire t_i_1_n_0;
  wire t_reg_n_0;
  wire t_rst;
  wire t_rst_i_1_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFF22222223)) 
    CS_i_1
       (.I0(\bit_index[3]_i_3_n_0 ),
        .I1(rst_IBUF),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(\d[0]_i_1_n_0 ),
        .O(CS1_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h31)) 
    CS_i_2
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(CS_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    CS_reg
       (.C(CLK),
        .CE(CS1_out),
        .D(CS_i_2_n_0),
        .Q(CS_OBUF),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000FFFF31550000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(t_reg_n_0),
        .I3(i_rd),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h001F0FFF)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\bit_index_reg_n_0_[3] ),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFEF00F0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\bit_index_reg_n_0_[3] ),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0300FFAA0000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(i_rd),
        .I1(\bit_index_reg_n_0_[3] ),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\bit_index_reg_n_0_[1] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:011,iSTATE1:010,iSTATE2:001,iSTATE3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:011,iSTATE1:010,iSTATE2:001,iSTATE3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:011,iSTATE1:010,iSTATE2:001,iSTATE3:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    SCLK_i_1
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(SCLK_OBUF),
        .O(SCLK_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SCLK_reg
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(SCLK_i_1_n_0),
        .Q(SCLK_OBUF));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h07040404)) 
    \bit_index[0]_i_1 
       (.I0(\bit_index_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(t_reg_n_0),
        .I4(i_rd),
        .O(\bit_index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F80008000800F8)) 
    \bit_index[1]_i_1 
       (.I0(i_rd),
        .I1(t_reg_n_0),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(\bit_index_reg_n_0_[0] ),
        .I5(\bit_index_reg_n_0_[1] ),
        .O(\bit_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAAAAAAAAAE)) 
    \bit_index[2]_i_1 
       (.I0(\bit_index[3]_i_3_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\bit_index_reg_n_0_[1] ),
        .I4(\bit_index_reg_n_0_[0] ),
        .I5(\bit_index_reg_n_0_[2] ),
        .O(\bit_index[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000C000E000C00)) 
    \bit_index[3]_i_1 
       (.I0(\bit_index_reg_n_0_[3] ),
        .I1(\bit_index[3]_i_3_n_0 ),
        .I2(rst_IBUF),
        .I3(state__0[1]),
        .I4(\bit_index[3]_i_4_n_0 ),
        .I5(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\bit_index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F00088000F0088)) 
    \bit_index[3]_i_2 
       (.I0(i_rd),
        .I1(t_reg_n_0),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(\bit_index_reg_n_0_[3] ),
        .O(\bit_index[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \bit_index[3]_i_3 
       (.I0(i_rd),
        .I1(t_reg_n_0),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .O(\bit_index[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bit_index[3]_i_4 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\bit_index[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[0] 
       (.C(CLK),
        .CE(\bit_index[3]_i_1_n_0 ),
        .D(\bit_index[0]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[1] 
       (.C(CLK),
        .CE(\bit_index[3]_i_1_n_0 ),
        .D(\bit_index[1]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[2] 
       (.C(CLK),
        .CE(\bit_index[3]_i_1_n_0 ),
        .D(\bit_index[2]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[3] 
       (.C(CLK),
        .CE(\bit_index[3]_i_1_n_0 ),
        .D(\bit_index[3]_i_2_n_0 ),
        .Q(\bit_index_reg_n_0_[3] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \d[0]_i_1 
       (.I0(\bit_index_reg_n_0_[3] ),
        .I1(rst_IBUF),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\d[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \d[10]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\d[15]_i_2_n_0 ),
        .O(\d[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \d[11]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\d[15]_i_2_n_0 ),
        .O(\d[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \d[12]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\d[15]_i_2_n_0 ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .O(\d[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \d[13]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\d[15]_i_2_n_0 ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .O(\d[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \d[14]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\d[15]_i_2_n_0 ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\bit_index_reg_n_0_[1] ),
        .O(\d[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \d[15]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\d[15]_i_2_n_0 ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .O(\d[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \d[15]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(rst_IBUF),
        .I4(\bit_index_reg_n_0_[3] ),
        .O(\d[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \d[1]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\d[7]_i_2_n_0 ),
        .O(\d[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \d[2]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\d[7]_i_2_n_0 ),
        .O(\d[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \d[3]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\d[7]_i_2_n_0 ),
        .O(\d[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \d[4]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\d[7]_i_2_n_0 ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .O(\d[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \d[5]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\d[7]_i_2_n_0 ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .O(\d[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \d[6]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\d[7]_i_2_n_0 ),
        .I2(\bit_index_reg_n_0_[0] ),
        .I3(\bit_index_reg_n_0_[1] ),
        .O(\d[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \d[7]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\d[7]_i_2_n_0 ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .O(\d[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \d[7]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(rst_IBUF),
        .I4(\bit_index_reg_n_0_[3] ),
        .O(\d[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \d[8]_i_1 
       (.I0(\bit_index_reg_n_0_[3] ),
        .I1(rst_IBUF),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\d[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \d[9]_i_1 
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\d[15]_i_2_n_0 ),
        .O(\d[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777330344440000)) 
    d_ready_i_1
       (.I0(state__0[2]),
        .I1(\d[0]_i_1_n_0 ),
        .I2(d_ready_i_2_n_0),
        .I3(rst_IBUF),
        .I4(state__0[1]),
        .I5(i_d_ready),
        .O(d_ready_i_1_n_0));
  LUT3 #(
    .INIT(8'h07)) 
    d_ready_i_2
       (.I0(i_rd),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(d_ready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    d_ready_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(d_ready_i_1_n_0),
        .Q(i_d_ready),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[0] 
       (.C(CLK),
        .CE(\d[0]_i_1_n_0 ),
        .D(D),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[10] 
       (.C(CLK),
        .CE(\d[10]_i_1_n_0 ),
        .D(D),
        .Q(Q[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[11] 
       (.C(CLK),
        .CE(\d[11]_i_1_n_0 ),
        .D(D),
        .Q(Q[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[12] 
       (.C(CLK),
        .CE(\d[12]_i_1_n_0 ),
        .D(D),
        .Q(Q[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[13] 
       (.C(CLK),
        .CE(\d[13]_i_1_n_0 ),
        .D(D),
        .Q(Q[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[14] 
       (.C(CLK),
        .CE(\d[14]_i_1_n_0 ),
        .D(D),
        .Q(Q[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[15] 
       (.C(CLK),
        .CE(\d[15]_i_1_n_0 ),
        .D(D),
        .Q(Q[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[1] 
       (.C(CLK),
        .CE(\d[1]_i_1_n_0 ),
        .D(D),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[2] 
       (.C(CLK),
        .CE(\d[2]_i_1_n_0 ),
        .D(D),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[3] 
       (.C(CLK),
        .CE(\d[3]_i_1_n_0 ),
        .D(D),
        .Q(Q[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[4] 
       (.C(CLK),
        .CE(\d[4]_i_1_n_0 ),
        .D(D),
        .Q(Q[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[5] 
       (.C(CLK),
        .CE(\d[5]_i_1_n_0 ),
        .D(D),
        .Q(Q[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[6] 
       (.C(CLK),
        .CE(\d[6]_i_1_n_0 ),
        .D(D),
        .Q(Q[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[7] 
       (.C(CLK),
        .CE(\d[7]_i_1_n_0 ),
        .D(D),
        .Q(Q[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[8] 
       (.C(CLK),
        .CE(\d[8]_i_1_n_0 ),
        .D(D),
        .Q(Q[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[9] 
       (.C(CLK),
        .CE(\d[9]_i_1_n_0 ),
        .D(D),
        .Q(Q[9]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h44444444444444F4)) 
    i_rd_i_1
       (.I0(i_d_ready),
        .I1(i_rd),
        .I2(\sclk_count[0]_i_6_n_0 ),
        .I3(i_rd_reg),
        .I4(i_rd_reg_0),
        .I5(i_rd_reg_1),
        .O(d_ready_reg_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \sclk_count[0]_i_1 
       (.I0(i_rd_reg_1),
        .I1(i_rd_reg_0),
        .I2(i_rd_reg),
        .I3(\sclk_count[0]_i_6_n_0 ),
        .O(\sclk_count_reg[12]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sclk_count[0]_i_1__0 
       (.I0(sclk_count[0]),
        .O(sclk_count_0[0]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sclk_count[0]_i_6 
       (.I0(S[0]),
        .I1(S[1]),
        .I2(i_d_ready),
        .I3(\sclk_count_reg[0]_0 ),
        .I4(\sclk_count_reg[0]_1 ),
        .O(\sclk_count[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[10]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(sclk_count_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[11]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(sclk_count_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[12]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(sclk_count_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[13]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(sclk_count_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[14]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(sclk_count_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[15]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(sclk_count_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[16]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(sclk_count_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[17]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(sclk_count_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[18]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(sclk_count_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[19]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(sclk_count_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[1]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(sclk_count_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[20]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(sclk_count_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[21]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(sclk_count_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[22]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(sclk_count_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[23]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(sclk_count_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[24]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(sclk_count_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[25]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(sclk_count_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[26]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(sclk_count_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[27]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(sclk_count_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[28]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(sclk_count_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[29]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(sclk_count_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[2]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(sclk_count_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[30]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(sclk_count_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[31]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(sclk_count_0[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sclk_count[31]_i_10 
       (.I0(sclk_count[13]),
        .I1(sclk_count[12]),
        .I2(sclk_count[15]),
        .I3(sclk_count[14]),
        .O(\sclk_count[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sclk_count[31]_i_2 
       (.I0(sclk_count[18]),
        .I1(sclk_count[19]),
        .I2(sclk_count[16]),
        .I3(sclk_count[17]),
        .I4(\sclk_count[31]_i_7_n_0 ),
        .O(\sclk_count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sclk_count[31]_i_3 
       (.I0(sclk_count[26]),
        .I1(sclk_count[27]),
        .I2(sclk_count[24]),
        .I3(sclk_count[25]),
        .I4(\sclk_count[31]_i_8_n_0 ),
        .O(\sclk_count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \sclk_count[31]_i_4 
       (.I0(sclk_count[2]),
        .I1(sclk_count[3]),
        .I2(sclk_count[1]),
        .I3(sclk_count[0]),
        .I4(\sclk_count[31]_i_9_n_0 ),
        .O(\sclk_count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sclk_count[31]_i_5 
       (.I0(sclk_count[10]),
        .I1(sclk_count[11]),
        .I2(sclk_count[8]),
        .I3(sclk_count[9]),
        .I4(\sclk_count[31]_i_10_n_0 ),
        .O(\sclk_count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sclk_count[31]_i_7 
       (.I0(sclk_count[21]),
        .I1(sclk_count[20]),
        .I2(sclk_count[23]),
        .I3(sclk_count[22]),
        .O(\sclk_count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sclk_count[31]_i_8 
       (.I0(sclk_count[29]),
        .I1(sclk_count[28]),
        .I2(sclk_count[31]),
        .I3(sclk_count[30]),
        .O(\sclk_count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sclk_count[31]_i_9 
       (.I0(sclk_count[4]),
        .I1(sclk_count[5]),
        .I2(sclk_count[7]),
        .I3(sclk_count[6]),
        .O(\sclk_count[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[3]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(sclk_count_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[4]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(sclk_count_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[5]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(sclk_count_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[6]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(sclk_count_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[7]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(sclk_count_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[8]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(sclk_count_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sclk_count[9]_i_1 
       (.I0(\sclk_count[31]_i_2_n_0 ),
        .I1(\sclk_count[31]_i_3_n_0 ),
        .I2(\sclk_count[31]_i_4_n_0 ),
        .I3(\sclk_count[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(sclk_count_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[0] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[0]),
        .Q(sclk_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[10] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[10]),
        .Q(sclk_count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[11] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[11]),
        .Q(sclk_count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[12] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[12]),
        .Q(sclk_count[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sclk_count_reg[12]_i_2 
       (.CI(\sclk_count_reg[8]_i_2_n_0 ),
        .CO({\sclk_count_reg[12]_i_2_n_0 ,\sclk_count_reg[12]_i_2_n_1 ,\sclk_count_reg[12]_i_2_n_2 ,\sclk_count_reg[12]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S(sclk_count[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[13] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[13]),
        .Q(sclk_count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[14] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[14]),
        .Q(sclk_count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[15] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[15]),
        .Q(sclk_count[15]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[16] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[16]),
        .Q(sclk_count[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sclk_count_reg[16]_i_2 
       (.CI(\sclk_count_reg[12]_i_2_n_0 ),
        .CO({\sclk_count_reg[16]_i_2_n_0 ,\sclk_count_reg[16]_i_2_n_1 ,\sclk_count_reg[16]_i_2_n_2 ,\sclk_count_reg[16]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[16:13]),
        .S(sclk_count[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[17] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[17]),
        .Q(sclk_count[17]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[18] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[18]),
        .Q(sclk_count[18]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[19] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[19]),
        .Q(sclk_count[19]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[1] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[1]),
        .Q(sclk_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[20] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[20]),
        .Q(sclk_count[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sclk_count_reg[20]_i_2 
       (.CI(\sclk_count_reg[16]_i_2_n_0 ),
        .CO({\sclk_count_reg[20]_i_2_n_0 ,\sclk_count_reg[20]_i_2_n_1 ,\sclk_count_reg[20]_i_2_n_2 ,\sclk_count_reg[20]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[20:17]),
        .S(sclk_count[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[21] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[21]),
        .Q(sclk_count[21]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[22] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[22]),
        .Q(sclk_count[22]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[23] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[23]),
        .Q(sclk_count[23]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[24] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[24]),
        .Q(sclk_count[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sclk_count_reg[24]_i_2 
       (.CI(\sclk_count_reg[20]_i_2_n_0 ),
        .CO({\sclk_count_reg[24]_i_2_n_0 ,\sclk_count_reg[24]_i_2_n_1 ,\sclk_count_reg[24]_i_2_n_2 ,\sclk_count_reg[24]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[24:21]),
        .S(sclk_count[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[25] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[25]),
        .Q(sclk_count[25]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[26] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[26]),
        .Q(sclk_count[26]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[27] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[27]),
        .Q(sclk_count[27]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[28] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[28]),
        .Q(sclk_count[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sclk_count_reg[28]_i_2 
       (.CI(\sclk_count_reg[24]_i_2_n_0 ),
        .CO({\sclk_count_reg[28]_i_2_n_0 ,\sclk_count_reg[28]_i_2_n_1 ,\sclk_count_reg[28]_i_2_n_2 ,\sclk_count_reg[28]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[28:25]),
        .S(sclk_count[28:25]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[29] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[29]),
        .Q(sclk_count[29]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[2] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[2]),
        .Q(sclk_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[30] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[30]),
        .Q(sclk_count[30]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[31] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[31]),
        .Q(sclk_count[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sclk_count_reg[31]_i_6 
       (.CI(\sclk_count_reg[28]_i_2_n_0 ),
        .CO({\sclk_count_reg[31]_i_6_n_2 ,\sclk_count_reg[31]_i_6_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[31:29]),
        .S({\<const0> ,sclk_count[31:29]}));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[3] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[3]),
        .Q(sclk_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[4] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[4]),
        .Q(sclk_count[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sclk_count_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\sclk_count_reg[4]_i_2_n_0 ,\sclk_count_reg[4]_i_2_n_1 ,\sclk_count_reg[4]_i_2_n_2 ,\sclk_count_reg[4]_i_2_n_3 }),
        .CYINIT(sclk_count[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S(sclk_count[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[5] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[5]),
        .Q(sclk_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[6] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[6]),
        .Q(sclk_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[7] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[7]),
        .Q(sclk_count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[8] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[8]),
        .Q(sclk_count[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sclk_count_reg[8]_i_2 
       (.CI(\sclk_count_reg[4]_i_2_n_0 ),
        .CO({\sclk_count_reg[8]_i_2_n_0 ,\sclk_count_reg[8]_i_2_n_1 ,\sclk_count_reg[8]_i_2_n_2 ,\sclk_count_reg[8]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S(sclk_count[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \sclk_count_reg[9] 
       (.C(SCLK_reg_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sclk_count_0[9]),
        .Q(sclk_count[9]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \t_count[0]_i_1 
       (.I0(\t_count[0]_i_3_n_0 ),
        .I1(\t_count[0]_i_4_n_0 ),
        .I2(\t_count[0]_i_5_n_0 ),
        .I3(\t_count[0]_i_6_n_0 ),
        .O(t_count));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \t_count[0]_i_10 
       (.I0(t_count_reg[12]),
        .I1(t_count_reg[9]),
        .I2(t_count_reg[8]),
        .I3(t_count_reg[2]),
        .O(\t_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \t_count[0]_i_11 
       (.I0(t_count_reg[23]),
        .I1(t_count_reg[0]),
        .I2(t_count_reg[27]),
        .I3(t_count_reg[21]),
        .O(\t_count[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \t_count[0]_i_3 
       (.I0(t_count_reg[16]),
        .I1(t_count_reg[22]),
        .I2(t_count_reg[5]),
        .I3(t_count_reg[25]),
        .I4(\t_count[0]_i_8_n_0 ),
        .O(\t_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \t_count[0]_i_4 
       (.I0(t_count_reg[6]),
        .I1(t_count_reg[31]),
        .I2(t_count_reg[14]),
        .I3(t_count_reg[20]),
        .I4(\t_count[0]_i_9_n_0 ),
        .O(\t_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \t_count[0]_i_5 
       (.I0(t_count_reg[17]),
        .I1(t_count_reg[18]),
        .I2(t_count_reg[3]),
        .I3(t_count_reg[29]),
        .I4(\t_count[0]_i_10_n_0 ),
        .O(\t_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \t_count[0]_i_6 
       (.I0(t_count_reg[4]),
        .I1(t_count_reg[28]),
        .I2(t_count_reg[24]),
        .I3(t_count_reg[1]),
        .I4(\t_count[0]_i_11_n_0 ),
        .O(\t_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \t_count[0]_i_7 
       (.I0(t_count_reg[0]),
        .O(\t_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \t_count[0]_i_8 
       (.I0(t_count_reg[19]),
        .I1(t_count_reg[7]),
        .I2(t_count_reg[11]),
        .I3(t_count_reg[10]),
        .O(\t_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \t_count[0]_i_9 
       (.I0(t_count_reg[15]),
        .I1(t_count_reg[13]),
        .I2(t_count_reg[30]),
        .I3(t_count_reg[26]),
        .O(\t_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[0] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[0]_i_2_n_7 ),
        .Q(t_count_reg[0]),
        .R(t_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_count_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\t_count_reg[0]_i_2_n_0 ,\t_count_reg[0]_i_2_n_1 ,\t_count_reg[0]_i_2_n_2 ,\t_count_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\t_count_reg[0]_i_2_n_4 ,\t_count_reg[0]_i_2_n_5 ,\t_count_reg[0]_i_2_n_6 ,\t_count_reg[0]_i_2_n_7 }),
        .S({t_count_reg[3:1],\t_count[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[10] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[8]_i_1_n_5 ),
        .Q(t_count_reg[10]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[11] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[8]_i_1_n_4 ),
        .Q(t_count_reg[11]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[12] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[12]_i_1_n_7 ),
        .Q(t_count_reg[12]),
        .R(t_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_count_reg[12]_i_1 
       (.CI(\t_count_reg[8]_i_1_n_0 ),
        .CO({\t_count_reg[12]_i_1_n_0 ,\t_count_reg[12]_i_1_n_1 ,\t_count_reg[12]_i_1_n_2 ,\t_count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\t_count_reg[12]_i_1_n_4 ,\t_count_reg[12]_i_1_n_5 ,\t_count_reg[12]_i_1_n_6 ,\t_count_reg[12]_i_1_n_7 }),
        .S(t_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[13] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[12]_i_1_n_6 ),
        .Q(t_count_reg[13]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[14] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[12]_i_1_n_5 ),
        .Q(t_count_reg[14]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[15] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[12]_i_1_n_4 ),
        .Q(t_count_reg[15]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[16] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[16]_i_1_n_7 ),
        .Q(t_count_reg[16]),
        .R(t_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_count_reg[16]_i_1 
       (.CI(\t_count_reg[12]_i_1_n_0 ),
        .CO({\t_count_reg[16]_i_1_n_0 ,\t_count_reg[16]_i_1_n_1 ,\t_count_reg[16]_i_1_n_2 ,\t_count_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\t_count_reg[16]_i_1_n_4 ,\t_count_reg[16]_i_1_n_5 ,\t_count_reg[16]_i_1_n_6 ,\t_count_reg[16]_i_1_n_7 }),
        .S(t_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[17] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[16]_i_1_n_6 ),
        .Q(t_count_reg[17]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[18] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[16]_i_1_n_5 ),
        .Q(t_count_reg[18]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[19] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[16]_i_1_n_4 ),
        .Q(t_count_reg[19]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[1] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[0]_i_2_n_6 ),
        .Q(t_count_reg[1]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[20] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[20]_i_1_n_7 ),
        .Q(t_count_reg[20]),
        .R(t_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_count_reg[20]_i_1 
       (.CI(\t_count_reg[16]_i_1_n_0 ),
        .CO({\t_count_reg[20]_i_1_n_0 ,\t_count_reg[20]_i_1_n_1 ,\t_count_reg[20]_i_1_n_2 ,\t_count_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\t_count_reg[20]_i_1_n_4 ,\t_count_reg[20]_i_1_n_5 ,\t_count_reg[20]_i_1_n_6 ,\t_count_reg[20]_i_1_n_7 }),
        .S(t_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[21] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[20]_i_1_n_6 ),
        .Q(t_count_reg[21]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[22] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[20]_i_1_n_5 ),
        .Q(t_count_reg[22]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[23] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[20]_i_1_n_4 ),
        .Q(t_count_reg[23]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[24] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[24]_i_1_n_7 ),
        .Q(t_count_reg[24]),
        .R(t_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_count_reg[24]_i_1 
       (.CI(\t_count_reg[20]_i_1_n_0 ),
        .CO({\t_count_reg[24]_i_1_n_0 ,\t_count_reg[24]_i_1_n_1 ,\t_count_reg[24]_i_1_n_2 ,\t_count_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\t_count_reg[24]_i_1_n_4 ,\t_count_reg[24]_i_1_n_5 ,\t_count_reg[24]_i_1_n_6 ,\t_count_reg[24]_i_1_n_7 }),
        .S(t_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[25] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[24]_i_1_n_6 ),
        .Q(t_count_reg[25]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[26] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[24]_i_1_n_5 ),
        .Q(t_count_reg[26]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[27] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[24]_i_1_n_4 ),
        .Q(t_count_reg[27]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[28] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[28]_i_1_n_7 ),
        .Q(t_count_reg[28]),
        .R(t_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_count_reg[28]_i_1 
       (.CI(\t_count_reg[24]_i_1_n_0 ),
        .CO({\t_count_reg[28]_i_1_n_1 ,\t_count_reg[28]_i_1_n_2 ,\t_count_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\t_count_reg[28]_i_1_n_4 ,\t_count_reg[28]_i_1_n_5 ,\t_count_reg[28]_i_1_n_6 ,\t_count_reg[28]_i_1_n_7 }),
        .S(t_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[29] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[28]_i_1_n_6 ),
        .Q(t_count_reg[29]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[2] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[0]_i_2_n_5 ),
        .Q(t_count_reg[2]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[30] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[28]_i_1_n_5 ),
        .Q(t_count_reg[30]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[31] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[28]_i_1_n_4 ),
        .Q(t_count_reg[31]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[3] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[0]_i_2_n_4 ),
        .Q(t_count_reg[3]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[4] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[4]_i_1_n_7 ),
        .Q(t_count_reg[4]),
        .R(t_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_count_reg[4]_i_1 
       (.CI(\t_count_reg[0]_i_2_n_0 ),
        .CO({\t_count_reg[4]_i_1_n_0 ,\t_count_reg[4]_i_1_n_1 ,\t_count_reg[4]_i_1_n_2 ,\t_count_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\t_count_reg[4]_i_1_n_4 ,\t_count_reg[4]_i_1_n_5 ,\t_count_reg[4]_i_1_n_6 ,\t_count_reg[4]_i_1_n_7 }),
        .S(t_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[5] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[4]_i_1_n_6 ),
        .Q(t_count_reg[5]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[6] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[4]_i_1_n_5 ),
        .Q(t_count_reg[6]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[7] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[4]_i_1_n_4 ),
        .Q(t_count_reg[7]),
        .R(t_rst));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[8] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[8]_i_1_n_7 ),
        .Q(t_count_reg[8]),
        .R(t_rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \t_count_reg[8]_i_1 
       (.CI(\t_count_reg[4]_i_1_n_0 ),
        .CO({\t_count_reg[8]_i_1_n_0 ,\t_count_reg[8]_i_1_n_1 ,\t_count_reg[8]_i_1_n_2 ,\t_count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\t_count_reg[8]_i_1_n_4 ,\t_count_reg[8]_i_1_n_5 ,\t_count_reg[8]_i_1_n_6 ,\t_count_reg[8]_i_1_n_7 }),
        .S(t_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \t_count_reg[9] 
       (.C(CLK),
        .CE(t_count),
        .D(\t_count_reg[8]_i_1_n_6 ),
        .Q(t_count_reg[9]),
        .R(t_rst));
  LUT6 #(
    .INIT(64'h00000000AAAAAABA)) 
    t_i_1
       (.I0(t_reg_n_0),
        .I1(\t_count[0]_i_6_n_0 ),
        .I2(\t_count[0]_i_5_n_0 ),
        .I3(\t_count[0]_i_4_n_0 ),
        .I4(\t_count[0]_i_3_n_0 ),
        .I5(t_rst),
        .O(t_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    t_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(t_i_1_n_0),
        .Q(t_reg_n_0),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFEFFFEFF00010003)) 
    t_rst_i_1
       (.I0(state__0[2]),
        .I1(rst_IBUF),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(i_rd),
        .I5(t_rst),
        .O(t_rst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    t_rst_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(t_rst_i_1_n_0),
        .Q(t_rst),
        .R(\<const0> ));
endmodule

(* refresh_period = "40000" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    rst,
    SDO,
    SCLK,
    CS,
    led);
  input clk;
  input rst;
  input SDO;
  output SCLK;
  output CS;
  output [15:0]led;

  wire \<const0> ;
  wire \<const1> ;
  wire CS;
  wire CS_OBUF;
  wire SCLK;
  wire SCLK_OBUF;
  wire SCLK_OBUF_BUFG;
  wire SDO;
  wire SDO_IBUF;
  wire SPI1_n_3;
  wire SPI1_n_4;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]d;
  wire i_d_ready;
  wire i_rd;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire rst;
  wire rst_IBUF;
  wire \sclk_count[0]_i_10_n_0 ;
  wire \sclk_count[0]_i_11_n_0 ;
  wire \sclk_count[0]_i_3_n_0 ;
  wire \sclk_count[0]_i_4_n_0 ;
  wire \sclk_count[0]_i_5_n_0 ;
  wire \sclk_count[0]_i_7_n_0 ;
  wire \sclk_count[0]_i_8_n_0 ;
  wire \sclk_count[0]_i_9_n_0 ;
  wire [31:0]sclk_count_reg;
  wire \sclk_count_reg[0]_i_2_n_0 ;
  wire \sclk_count_reg[0]_i_2_n_1 ;
  wire \sclk_count_reg[0]_i_2_n_2 ;
  wire \sclk_count_reg[0]_i_2_n_3 ;
  wire \sclk_count_reg[0]_i_2_n_4 ;
  wire \sclk_count_reg[0]_i_2_n_5 ;
  wire \sclk_count_reg[0]_i_2_n_6 ;
  wire \sclk_count_reg[0]_i_2_n_7 ;
  wire \sclk_count_reg[12]_i_1_n_0 ;
  wire \sclk_count_reg[12]_i_1_n_1 ;
  wire \sclk_count_reg[12]_i_1_n_2 ;
  wire \sclk_count_reg[12]_i_1_n_3 ;
  wire \sclk_count_reg[12]_i_1_n_4 ;
  wire \sclk_count_reg[12]_i_1_n_5 ;
  wire \sclk_count_reg[12]_i_1_n_6 ;
  wire \sclk_count_reg[12]_i_1_n_7 ;
  wire \sclk_count_reg[16]_i_1_n_0 ;
  wire \sclk_count_reg[16]_i_1_n_1 ;
  wire \sclk_count_reg[16]_i_1_n_2 ;
  wire \sclk_count_reg[16]_i_1_n_3 ;
  wire \sclk_count_reg[16]_i_1_n_4 ;
  wire \sclk_count_reg[16]_i_1_n_5 ;
  wire \sclk_count_reg[16]_i_1_n_6 ;
  wire \sclk_count_reg[16]_i_1_n_7 ;
  wire \sclk_count_reg[20]_i_1_n_0 ;
  wire \sclk_count_reg[20]_i_1_n_1 ;
  wire \sclk_count_reg[20]_i_1_n_2 ;
  wire \sclk_count_reg[20]_i_1_n_3 ;
  wire \sclk_count_reg[20]_i_1_n_4 ;
  wire \sclk_count_reg[20]_i_1_n_5 ;
  wire \sclk_count_reg[20]_i_1_n_6 ;
  wire \sclk_count_reg[20]_i_1_n_7 ;
  wire \sclk_count_reg[24]_i_1_n_0 ;
  wire \sclk_count_reg[24]_i_1_n_1 ;
  wire \sclk_count_reg[24]_i_1_n_2 ;
  wire \sclk_count_reg[24]_i_1_n_3 ;
  wire \sclk_count_reg[24]_i_1_n_4 ;
  wire \sclk_count_reg[24]_i_1_n_5 ;
  wire \sclk_count_reg[24]_i_1_n_6 ;
  wire \sclk_count_reg[24]_i_1_n_7 ;
  wire \sclk_count_reg[28]_i_1_n_1 ;
  wire \sclk_count_reg[28]_i_1_n_2 ;
  wire \sclk_count_reg[28]_i_1_n_3 ;
  wire \sclk_count_reg[28]_i_1_n_4 ;
  wire \sclk_count_reg[28]_i_1_n_5 ;
  wire \sclk_count_reg[28]_i_1_n_6 ;
  wire \sclk_count_reg[28]_i_1_n_7 ;
  wire \sclk_count_reg[4]_i_1_n_0 ;
  wire \sclk_count_reg[4]_i_1_n_1 ;
  wire \sclk_count_reg[4]_i_1_n_2 ;
  wire \sclk_count_reg[4]_i_1_n_3 ;
  wire \sclk_count_reg[4]_i_1_n_4 ;
  wire \sclk_count_reg[4]_i_1_n_5 ;
  wire \sclk_count_reg[4]_i_1_n_6 ;
  wire \sclk_count_reg[4]_i_1_n_7 ;
  wire \sclk_count_reg[8]_i_1_n_0 ;
  wire \sclk_count_reg[8]_i_1_n_1 ;
  wire \sclk_count_reg[8]_i_1_n_2 ;
  wire \sclk_count_reg[8]_i_1_n_3 ;
  wire \sclk_count_reg[8]_i_1_n_4 ;
  wire \sclk_count_reg[8]_i_1_n_5 ;
  wire \sclk_count_reg[8]_i_1_n_6 ;
  wire \sclk_count_reg[8]_i_1_n_7 ;

  OBUF CS_OBUF_inst
       (.I(CS_OBUF),
        .O(CS));
  GND GND
       (.G(\<const0> ));
  BUFG SCLK_OBUF_BUFG_inst
       (.I(SCLK_OBUF),
        .O(SCLK_OBUF_BUFG));
  OBUF SCLK_OBUF_inst
       (.I(SCLK_OBUF_BUFG),
        .O(SCLK));
  IBUF SDO_IBUF_inst
       (.I(SDO),
        .O(SDO_IBUF));
  simpleSPI SPI1
       (.CLK(SCLK_OBUF_BUFG),
        .CS_OBUF(CS_OBUF),
        .D(SDO_IBUF),
        .Q(d),
        .S({sclk_count_reg[10],sclk_count_reg[8]}),
        .SCLK_OBUF(SCLK_OBUF),
        .SCLK_reg_0(clk_IBUF_BUFG),
        .d_ready_reg_0(SPI1_n_3),
        .i_d_ready(i_d_ready),
        .i_rd(i_rd),
        .i_rd_reg(\sclk_count[0]_i_5_n_0 ),
        .i_rd_reg_0(\sclk_count[0]_i_4_n_0 ),
        .i_rd_reg_1(\sclk_count[0]_i_3_n_0 ),
        .rst_IBUF(rst_IBUF),
        .\sclk_count_reg[0]_0 (\sclk_count[0]_i_10_n_0 ),
        .\sclk_count_reg[0]_1 (\sclk_count[0]_i_11_n_0 ),
        .\sclk_count_reg[12]_0 (SPI1_n_4));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    i_rd_reg
       (.C(SCLK_OBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI1_n_3),
        .Q(i_rd),
        .R(\<const0> ));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[0] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[0]),
        .Q(led_OBUF[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[10] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[10]),
        .Q(led_OBUF[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[11] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[11]),
        .Q(led_OBUF[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[12] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[12]),
        .Q(led_OBUF[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[13] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[13]),
        .Q(led_OBUF[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[14] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[14]),
        .Q(led_OBUF[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[15] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[15]),
        .Q(led_OBUF[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[1] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[1]),
        .Q(led_OBUF[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[2] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[2]),
        .Q(led_OBUF[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[3] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[3]),
        .Q(led_OBUF[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[4] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[4]),
        .Q(led_OBUF[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[5] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[5]),
        .Q(led_OBUF[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[6] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[6]),
        .Q(led_OBUF[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[7] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[7]),
        .Q(led_OBUF[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[8] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[8]),
        .Q(led_OBUF[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_reg[9] 
       (.C(SCLK_OBUF_BUFG),
        .CE(i_d_ready),
        .D(d[9]),
        .Q(led_OBUF[9]),
        .R(\<const0> ));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sclk_count[0]_i_10 
       (.I0(sclk_count_reg[28]),
        .I1(sclk_count_reg[4]),
        .I2(sclk_count_reg[15]),
        .I3(sclk_count_reg[5]),
        .O(\sclk_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sclk_count[0]_i_11 
       (.I0(sclk_count_reg[9]),
        .I1(sclk_count_reg[3]),
        .I2(sclk_count_reg[13]),
        .I3(sclk_count_reg[6]),
        .O(\sclk_count[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sclk_count[0]_i_3 
       (.I0(sclk_count_reg[12]),
        .I1(sclk_count_reg[14]),
        .I2(sclk_count_reg[21]),
        .I3(sclk_count_reg[26]),
        .I4(\sclk_count[0]_i_8_n_0 ),
        .O(\sclk_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \sclk_count[0]_i_4 
       (.I0(sclk_count_reg[18]),
        .I1(sclk_count_reg[2]),
        .I2(sclk_count_reg[31]),
        .I3(sclk_count_reg[0]),
        .I4(\sclk_count[0]_i_9_n_0 ),
        .O(\sclk_count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sclk_count[0]_i_5 
       (.I0(sclk_count_reg[25]),
        .I1(sclk_count_reg[1]),
        .I2(sclk_count_reg[11]),
        .I3(sclk_count_reg[19]),
        .I4(sclk_count_reg[16]),
        .I5(sclk_count_reg[20]),
        .O(\sclk_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sclk_count[0]_i_7 
       (.I0(sclk_count_reg[0]),
        .O(\sclk_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sclk_count[0]_i_8 
       (.I0(sclk_count_reg[24]),
        .I1(sclk_count_reg[22]),
        .I2(sclk_count_reg[23]),
        .I3(sclk_count_reg[17]),
        .O(\sclk_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sclk_count[0]_i_9 
       (.I0(sclk_count_reg[30]),
        .I1(sclk_count_reg[27]),
        .I2(sclk_count_reg[29]),
        .I3(sclk_count_reg[7]),
        .O(\sclk_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[0] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[0]_i_2_n_7 ),
        .Q(sclk_count_reg[0]),
        .R(i_d_ready));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sclk_count_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\sclk_count_reg[0]_i_2_n_0 ,\sclk_count_reg[0]_i_2_n_1 ,\sclk_count_reg[0]_i_2_n_2 ,\sclk_count_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\sclk_count_reg[0]_i_2_n_4 ,\sclk_count_reg[0]_i_2_n_5 ,\sclk_count_reg[0]_i_2_n_6 ,\sclk_count_reg[0]_i_2_n_7 }),
        .S({sclk_count_reg[3:1],\sclk_count[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[10] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[8]_i_1_n_5 ),
        .Q(sclk_count_reg[10]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[11] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[8]_i_1_n_4 ),
        .Q(sclk_count_reg[11]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[12] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[12]_i_1_n_7 ),
        .Q(sclk_count_reg[12]),
        .R(i_d_ready));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sclk_count_reg[12]_i_1 
       (.CI(\sclk_count_reg[8]_i_1_n_0 ),
        .CO({\sclk_count_reg[12]_i_1_n_0 ,\sclk_count_reg[12]_i_1_n_1 ,\sclk_count_reg[12]_i_1_n_2 ,\sclk_count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sclk_count_reg[12]_i_1_n_4 ,\sclk_count_reg[12]_i_1_n_5 ,\sclk_count_reg[12]_i_1_n_6 ,\sclk_count_reg[12]_i_1_n_7 }),
        .S(sclk_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[13] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[12]_i_1_n_6 ),
        .Q(sclk_count_reg[13]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[14] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[12]_i_1_n_5 ),
        .Q(sclk_count_reg[14]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[15] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[12]_i_1_n_4 ),
        .Q(sclk_count_reg[15]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[16] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[16]_i_1_n_7 ),
        .Q(sclk_count_reg[16]),
        .R(i_d_ready));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sclk_count_reg[16]_i_1 
       (.CI(\sclk_count_reg[12]_i_1_n_0 ),
        .CO({\sclk_count_reg[16]_i_1_n_0 ,\sclk_count_reg[16]_i_1_n_1 ,\sclk_count_reg[16]_i_1_n_2 ,\sclk_count_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sclk_count_reg[16]_i_1_n_4 ,\sclk_count_reg[16]_i_1_n_5 ,\sclk_count_reg[16]_i_1_n_6 ,\sclk_count_reg[16]_i_1_n_7 }),
        .S(sclk_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[17] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[16]_i_1_n_6 ),
        .Q(sclk_count_reg[17]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[18] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[16]_i_1_n_5 ),
        .Q(sclk_count_reg[18]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[19] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[16]_i_1_n_4 ),
        .Q(sclk_count_reg[19]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[1] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[0]_i_2_n_6 ),
        .Q(sclk_count_reg[1]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[20] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[20]_i_1_n_7 ),
        .Q(sclk_count_reg[20]),
        .R(i_d_ready));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sclk_count_reg[20]_i_1 
       (.CI(\sclk_count_reg[16]_i_1_n_0 ),
        .CO({\sclk_count_reg[20]_i_1_n_0 ,\sclk_count_reg[20]_i_1_n_1 ,\sclk_count_reg[20]_i_1_n_2 ,\sclk_count_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sclk_count_reg[20]_i_1_n_4 ,\sclk_count_reg[20]_i_1_n_5 ,\sclk_count_reg[20]_i_1_n_6 ,\sclk_count_reg[20]_i_1_n_7 }),
        .S(sclk_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[21] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[20]_i_1_n_6 ),
        .Q(sclk_count_reg[21]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[22] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[20]_i_1_n_5 ),
        .Q(sclk_count_reg[22]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[23] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[20]_i_1_n_4 ),
        .Q(sclk_count_reg[23]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[24] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[24]_i_1_n_7 ),
        .Q(sclk_count_reg[24]),
        .R(i_d_ready));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sclk_count_reg[24]_i_1 
       (.CI(\sclk_count_reg[20]_i_1_n_0 ),
        .CO({\sclk_count_reg[24]_i_1_n_0 ,\sclk_count_reg[24]_i_1_n_1 ,\sclk_count_reg[24]_i_1_n_2 ,\sclk_count_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sclk_count_reg[24]_i_1_n_4 ,\sclk_count_reg[24]_i_1_n_5 ,\sclk_count_reg[24]_i_1_n_6 ,\sclk_count_reg[24]_i_1_n_7 }),
        .S(sclk_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[25] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[24]_i_1_n_6 ),
        .Q(sclk_count_reg[25]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[26] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[24]_i_1_n_5 ),
        .Q(sclk_count_reg[26]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[27] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[24]_i_1_n_4 ),
        .Q(sclk_count_reg[27]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[28] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[28]_i_1_n_7 ),
        .Q(sclk_count_reg[28]),
        .R(i_d_ready));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sclk_count_reg[28]_i_1 
       (.CI(\sclk_count_reg[24]_i_1_n_0 ),
        .CO({\sclk_count_reg[28]_i_1_n_1 ,\sclk_count_reg[28]_i_1_n_2 ,\sclk_count_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sclk_count_reg[28]_i_1_n_4 ,\sclk_count_reg[28]_i_1_n_5 ,\sclk_count_reg[28]_i_1_n_6 ,\sclk_count_reg[28]_i_1_n_7 }),
        .S(sclk_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[29] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[28]_i_1_n_6 ),
        .Q(sclk_count_reg[29]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[2] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[0]_i_2_n_5 ),
        .Q(sclk_count_reg[2]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[30] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[28]_i_1_n_5 ),
        .Q(sclk_count_reg[30]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[31] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[28]_i_1_n_4 ),
        .Q(sclk_count_reg[31]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[3] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[0]_i_2_n_4 ),
        .Q(sclk_count_reg[3]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[4] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[4]_i_1_n_7 ),
        .Q(sclk_count_reg[4]),
        .R(i_d_ready));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sclk_count_reg[4]_i_1 
       (.CI(\sclk_count_reg[0]_i_2_n_0 ),
        .CO({\sclk_count_reg[4]_i_1_n_0 ,\sclk_count_reg[4]_i_1_n_1 ,\sclk_count_reg[4]_i_1_n_2 ,\sclk_count_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sclk_count_reg[4]_i_1_n_4 ,\sclk_count_reg[4]_i_1_n_5 ,\sclk_count_reg[4]_i_1_n_6 ,\sclk_count_reg[4]_i_1_n_7 }),
        .S(sclk_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[5] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[4]_i_1_n_6 ),
        .Q(sclk_count_reg[5]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[6] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[4]_i_1_n_5 ),
        .Q(sclk_count_reg[6]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[7] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[4]_i_1_n_4 ),
        .Q(sclk_count_reg[7]),
        .R(i_d_ready));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[8] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[8]_i_1_n_7 ),
        .Q(sclk_count_reg[8]),
        .R(i_d_ready));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sclk_count_reg[8]_i_1 
       (.CI(\sclk_count_reg[4]_i_1_n_0 ),
        .CO({\sclk_count_reg[8]_i_1_n_0 ,\sclk_count_reg[8]_i_1_n_1 ,\sclk_count_reg[8]_i_1_n_2 ,\sclk_count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\sclk_count_reg[8]_i_1_n_4 ,\sclk_count_reg[8]_i_1_n_5 ,\sclk_count_reg[8]_i_1_n_6 ,\sclk_count_reg[8]_i_1_n_7 }),
        .S(sclk_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \sclk_count_reg[9] 
       (.C(SCLK_OBUF_BUFG),
        .CE(SPI1_n_4),
        .D(\sclk_count_reg[8]_i_1_n_6 ),
        .Q(sclk_count_reg[9]),
        .R(i_d_ready));
endmodule
