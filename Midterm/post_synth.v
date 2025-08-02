// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Mar 26 23:28:31 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force post_synth.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module audio_top
   (AIN_OBUF,
    \FSM_sequential_btn_reg[0]_0 ,
    Q,
    rst_IBUF,
    clk_IBUF_BUFG,
    \N_reg[0]_0 ,
    \N_reg[0]_1 ,
    \N_reg[0]_2 ,
    sw_IBUF,
    E,
    D,
    \N_reg[9]_0 );
  output AIN_OBUF;
  output \FSM_sequential_btn_reg[0]_0 ;
  output [3:0]Q;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input \N_reg[0]_0 ;
  input \N_reg[0]_1 ;
  input \N_reg[0]_2 ;
  input [7:0]sw_IBUF;
  input [0:0]E;
  input [3:0]D;
  input [9:0]\N_reg[9]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire AIN_OBUF;
  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_btn_reg[0]_0 ;
  wire [9:0]N;
  wire \N[9]_i_1_n_0 ;
  wire \N_reg[0]_0 ;
  wire \N_reg[0]_1 ;
  wire \N_reg[0]_2 ;
  wire [9:0]\N_reg[9]_0 ;
  wire PWM1_n_0;
  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire rst_IBUF;
  wire [7:0]sw_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    AIN_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(PWM1_n_0),
        .Q(AIN_OBUF));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_btn[3]_i_9 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\N_reg[0]_1 ),
        .I3(\N_reg[0]_2 ),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_btn_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "E_btn:0011,F_btn:0100,D_btn:0010,Mc_btn:0001,no_btn:0000,B_btn:0111,A_btn:0110,C_btn:1000,G_btn:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "E_btn:0011,F_btn:0100,D_btn:0010,Mc_btn:0001,no_btn:0000,B_btn:0111,A_btn:0110,C_btn:1000,G_btn:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[1]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "E_btn:0011,F_btn:0100,D_btn:0010,Mc_btn:0001,no_btn:0000,B_btn:0111,A_btn:0110,C_btn:1000,G_btn:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[2]),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "E_btn:0011,F_btn:0100,D_btn:0010,Mc_btn:0001,no_btn:0000,B_btn:0111,A_btn:0110,C_btn:1000,G_btn:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_btn_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(rst_IBUF),
        .D(D[3]),
        .Q(Q[3]));
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h40)) 
    \N[9]_i_1 
       (.I0(rst_IBUF),
        .I1(\FSM_sequential_btn_reg[0]_0 ),
        .I2(\N_reg[0]_0 ),
        .O(\N[9]_i_1_n_0 ));
  FDRE \N_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [0]),
        .Q(N[0]),
        .R(\<const0> ));
  FDRE \N_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [1]),
        .Q(N[1]),
        .R(\<const0> ));
  FDRE \N_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [2]),
        .Q(N[2]),
        .R(\<const0> ));
  FDRE \N_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [3]),
        .Q(N[3]),
        .R(\<const0> ));
  FDRE \N_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [4]),
        .Q(N[4]),
        .R(\<const0> ));
  FDRE \N_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [5]),
        .Q(N[5]),
        .R(\<const0> ));
  FDRE \N_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [6]),
        .Q(N[6]),
        .R(\<const0> ));
  FDRE \N_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [7]),
        .Q(N[7]),
        .R(\<const0> ));
  FDRE \N_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [8]),
        .Q(N[8]),
        .R(\<const0> ));
  FDRE \N_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\N[9]_i_1_n_0 ),
        .D(\N_reg[9]_0 [9]),
        .Q(N[9]),
        .R(\<const0> ));
  pwm_audio PWM1
       (.\FSM_sequential_btn_reg[2] (PWM1_n_0),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .f_count1_carry__0_0(N),
        .rst_IBUF(rst_IBUF),
        .sw_IBUF(sw_IBUF));
  VCC VCC
       (.P(\<const1> ));
endmodule

module clock_divider
   (scan,
    E,
    clk_IBUF_BUFG,
    rst_IBUF,
    \keypad_col_TRI[3] ,
    \keypad_col_TRI[2] ,
    \keypad_col_TRI[1] ,
    \keypad_col_TRI[0] );
  output scan;
  output [3:0]E;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \keypad_col_TRI[3] ;
  input \keypad_col_TRI[2] ;
  input \keypad_col_TRI[1] ;
  input \keypad_col_TRI[0] ;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]E;
  wire clk_IBUF_BUFG;
  wire [31:0]clk_count;
  wire clk_count0_carry__0_n_0;
  wire clk_count0_carry__0_n_1;
  wire clk_count0_carry__0_n_2;
  wire clk_count0_carry__0_n_3;
  wire clk_count0_carry__1_n_0;
  wire clk_count0_carry__1_n_1;
  wire clk_count0_carry__1_n_2;
  wire clk_count0_carry__1_n_3;
  wire clk_count0_carry__2_n_0;
  wire clk_count0_carry__2_n_1;
  wire clk_count0_carry__2_n_2;
  wire clk_count0_carry__2_n_3;
  wire clk_count0_carry__3_n_0;
  wire clk_count0_carry__3_n_1;
  wire clk_count0_carry__3_n_2;
  wire clk_count0_carry__3_n_3;
  wire clk_count0_carry__4_n_0;
  wire clk_count0_carry__4_n_1;
  wire clk_count0_carry__4_n_2;
  wire clk_count0_carry__4_n_3;
  wire clk_count0_carry__5_n_0;
  wire clk_count0_carry__5_n_1;
  wire clk_count0_carry__5_n_2;
  wire clk_count0_carry__5_n_3;
  wire clk_count0_carry__6_n_2;
  wire clk_count0_carry__6_n_3;
  wire clk_count0_carry_n_0;
  wire clk_count0_carry_n_1;
  wire clk_count0_carry_n_2;
  wire clk_count0_carry_n_3;
  wire \clk_count[31]_i_2_n_0 ;
  wire \clk_count[31]_i_3_n_0 ;
  wire \clk_count[31]_i_4_n_0 ;
  wire \clk_count[31]_i_5_n_0 ;
  wire \clk_count[31]_i_6_n_0 ;
  wire \clk_count[31]_i_7_n_0 ;
  wire \clk_count[31]_i_8_n_0 ;
  wire \clk_count[31]_i_9_n_0 ;
  wire [31:0]clk_count_0;
  wire [31:1]data0;
  wire div_clk;
  wire \keypad_col_TRI[0] ;
  wire \keypad_col_TRI[1] ;
  wire \keypad_col_TRI[2] ;
  wire \keypad_col_TRI[3] ;
  wire rst_IBUF;
  wire scan;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry
       (.CI(\<const0> ),
        .CO({clk_count0_carry_n_0,clk_count0_carry_n_1,clk_count0_carry_n_2,clk_count0_carry_n_3}),
        .CYINIT(clk_count[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S(clk_count[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__0
       (.CI(clk_count0_carry_n_0),
        .CO({clk_count0_carry__0_n_0,clk_count0_carry__0_n_1,clk_count0_carry__0_n_2,clk_count0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S(clk_count[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__1
       (.CI(clk_count0_carry__0_n_0),
        .CO({clk_count0_carry__1_n_0,clk_count0_carry__1_n_1,clk_count0_carry__1_n_2,clk_count0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S(clk_count[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__2
       (.CI(clk_count0_carry__1_n_0),
        .CO({clk_count0_carry__2_n_0,clk_count0_carry__2_n_1,clk_count0_carry__2_n_2,clk_count0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[16:13]),
        .S(clk_count[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__3
       (.CI(clk_count0_carry__2_n_0),
        .CO({clk_count0_carry__3_n_0,clk_count0_carry__3_n_1,clk_count0_carry__3_n_2,clk_count0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[20:17]),
        .S(clk_count[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__4
       (.CI(clk_count0_carry__3_n_0),
        .CO({clk_count0_carry__4_n_0,clk_count0_carry__4_n_1,clk_count0_carry__4_n_2,clk_count0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[24:21]),
        .S(clk_count[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__5
       (.CI(clk_count0_carry__4_n_0),
        .CO({clk_count0_carry__5_n_0,clk_count0_carry__5_n_1,clk_count0_carry__5_n_2,clk_count0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[28:25]),
        .S(clk_count[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__6
       (.CI(clk_count0_carry__5_n_0),
        .CO({clk_count0_carry__6_n_2,clk_count0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[31:29]),
        .S({\<const0> ,clk_count[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_count[0]_i_1__0 
       (.I0(\clk_count[31]_i_4_n_0 ),
        .I1(\clk_count[31]_i_3_n_0 ),
        .I2(\clk_count[31]_i_2_n_0 ),
        .I3(clk_count[0]),
        .O(clk_count_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[10]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[10]),
        .O(clk_count_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[11]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[11]),
        .O(clk_count_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[12]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[12]),
        .O(clk_count_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[13]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[13]),
        .O(clk_count_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[14]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[14]),
        .O(clk_count_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[15]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[15]),
        .O(clk_count_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[16]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[16]),
        .O(clk_count_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[17]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[17]),
        .O(clk_count_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[18]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[18]),
        .O(clk_count_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[19]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[19]),
        .O(clk_count_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[1]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[1]),
        .O(clk_count_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[20]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[20]),
        .O(clk_count_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[21]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[21]),
        .O(clk_count_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[22]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[22]),
        .O(clk_count_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[23]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[23]),
        .O(clk_count_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[24]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[24]),
        .O(clk_count_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[25]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[25]),
        .O(clk_count_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[26]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[26]),
        .O(clk_count_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[27]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[27]),
        .O(clk_count_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[28]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[28]),
        .O(clk_count_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[29]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[29]),
        .O(clk_count_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[2]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[2]),
        .O(clk_count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[30]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(clk_count_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[31]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[31]),
        .O(clk_count_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[31]_i_2 
       (.I0(clk_count[13]),
        .I1(clk_count[12]),
        .I2(clk_count[10]),
        .I3(clk_count[11]),
        .I4(\clk_count[31]_i_5_n_0 ),
        .O(\clk_count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[31]_i_3 
       (.I0(clk_count[4]),
        .I1(clk_count[5]),
        .I2(clk_count[2]),
        .I3(clk_count[3]),
        .I4(\clk_count[31]_i_6_n_0 ),
        .O(\clk_count[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[31]_i_4 
       (.I0(\clk_count[31]_i_7_n_0 ),
        .I1(\clk_count[31]_i_8_n_0 ),
        .I2(clk_count[31]),
        .I3(clk_count[30]),
        .I4(clk_count[1]),
        .I5(\clk_count[31]_i_9_n_0 ),
        .O(\clk_count[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_count[31]_i_5 
       (.I0(clk_count[15]),
        .I1(clk_count[14]),
        .I2(clk_count[17]),
        .I3(clk_count[16]),
        .O(\clk_count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_count[31]_i_6 
       (.I0(clk_count[7]),
        .I1(clk_count[6]),
        .I2(clk_count[9]),
        .I3(clk_count[8]),
        .O(\clk_count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_7 
       (.I0(clk_count[23]),
        .I1(clk_count[22]),
        .I2(clk_count[25]),
        .I3(clk_count[24]),
        .O(\clk_count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_count[31]_i_8 
       (.I0(clk_count[18]),
        .I1(clk_count[19]),
        .I2(clk_count[21]),
        .I3(clk_count[20]),
        .O(\clk_count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_9 
       (.I0(clk_count[27]),
        .I1(clk_count[26]),
        .I2(clk_count[29]),
        .I3(clk_count[28]),
        .O(\clk_count[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[3]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[3]),
        .O(clk_count_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[4]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[4]),
        .O(clk_count_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[5]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[5]),
        .O(clk_count_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[6]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[6]),
        .O(clk_count_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[7]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[7]),
        .O(clk_count_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[8]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[8]),
        .O(clk_count_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[9]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[9]),
        .O(clk_count_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[0]),
        .Q(clk_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[10]),
        .Q(clk_count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[11]),
        .Q(clk_count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[12]),
        .Q(clk_count[12]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[13]),
        .Q(clk_count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[14]),
        .Q(clk_count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[15]),
        .Q(clk_count[15]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[16]),
        .Q(clk_count[16]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[17]),
        .Q(clk_count[17]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[18]),
        .Q(clk_count[18]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[19]),
        .Q(clk_count[19]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[1]),
        .Q(clk_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[20]),
        .Q(clk_count[20]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[21]),
        .Q(clk_count[21]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[22]),
        .Q(clk_count[22]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[23]),
        .Q(clk_count[23]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[24]),
        .Q(clk_count[24]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[25]),
        .Q(clk_count[25]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[26]),
        .Q(clk_count[26]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[27]),
        .Q(clk_count[27]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[28]),
        .Q(clk_count[28]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[29]),
        .Q(clk_count[29]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[2]),
        .Q(clk_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[30]),
        .Q(clk_count[30]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[31]),
        .Q(clk_count[31]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[3]),
        .Q(clk_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[4]),
        .Q(clk_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[5]),
        .Q(clk_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[6]),
        .Q(clk_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[7]),
        .Q(clk_count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[8]),
        .Q(clk_count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[9]),
        .Q(clk_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    div_clk_i_1
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .O(div_clk));
  FDCE #(
    .INIT(1'b0)) 
    div_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(div_clk),
        .Q(scan));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \keys[13]_i_1 
       (.I0(\keypad_col_TRI[3] ),
        .I1(scan),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \keys[14]_i_1 
       (.I0(\keypad_col_TRI[2] ),
        .I1(scan),
        .O(E[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \keys[15]_i_1 
       (.I0(\keypad_col_TRI[1] ),
        .I1(scan),
        .O(E[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \keys[7]_i_1 
       (.I0(\keypad_col_TRI[0] ),
        .I1(scan),
        .O(E[0]));
endmodule

module debouncer
   (btn_db_reg_0,
    clk_IBUF_BUFG,
    rst_IBUF,
    power_IBUF,
    power_shut);
  output btn_db_reg_0;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input power_IBUF;
  input power_shut;

  wire \<const1> ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire T1_n_0;
  wire T1_n_1;
  wire btn_db;
  wire btn_db_reg_0;
  wire clear_i_1_n_0;
  wire clear_reg_n_0;
  wire clk_IBUF_BUFG;
  wire power_IBUF;
  wire power_shut;
  wire rst_IBUF;
  wire [1:0]state;

  LUT3 #(
    .INIT(8'hAC)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(power_IBUF),
        .I2(state[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS:01,WAIT:00,RELEASE:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "PRESS:01,WAIT:00,RELEASE:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(T1_n_1),
        .Q(state[1]));
  tcounter T1
       (.\FSM_sequential_state_reg[1] (T1_n_0),
        .\FSM_sequential_state_reg[1]_0 (clear_reg_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .done_reg_0(T1_n_1),
        .power_IBUF(power_IBUF),
        .rst_IBUF(rst_IBUF),
        .state(state));
  VCC VCC
       (.P(\<const1> ));
  FDCE #(
    .INIT(1'b0)) 
    btn_db_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(T1_n_0),
        .Q(btn_db));
  LUT4 #(
    .INIT(16'hC055)) 
    clear_i_1
       (.I0(power_IBUF),
        .I1(state[0]),
        .I2(clear_reg_n_0),
        .I3(state[1]),
        .O(clear_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    clear_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(clear_i_1_n_0),
        .PRE(rst_IBUF),
        .Q(clear_reg_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    power_shut_i_1
       (.I0(btn_db),
        .I1(power_shut),
        .O(btn_db_reg_0));
endmodule

module keypad
   (D,
    \keys_reg[7]_0 ,
    E,
    \keys_reg[7]_1 ,
    \keys_reg[13]_0 ,
    \keys_reg[9]_0 ,
    \keypad_col_TRI[3] ,
    \keypad_col_TRI[2] ,
    \keypad_col_TRI[1] ,
    \keypad_col_TRI[0] ,
    clk_IBUF_BUFG,
    rst_IBUF,
    \FSM_sequential_btn_reg[0] ,
    Q,
    keypad_row_IBUF);
  output [9:0]D;
  output [3:0]\keys_reg[7]_0 ;
  output [0:0]E;
  output \keys_reg[7]_1 ;
  output \keys_reg[13]_0 ;
  output \keys_reg[9]_0 ;
  output \keypad_col_TRI[3] ;
  output \keypad_col_TRI[2] ;
  output \keypad_col_TRI[1] ;
  output \keypad_col_TRI[0] ;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \FSM_sequential_btn_reg[0] ;
  input [3:0]Q;
  input [3:0]keypad_row_IBUF;

  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_sequential_btn[0]_i_2_n_0 ;
  wire \FSM_sequential_btn[0]_i_3_n_0 ;
  wire \FSM_sequential_btn[1]_i_2_n_0 ;
  wire \FSM_sequential_btn[1]_i_3_n_0 ;
  wire \FSM_sequential_btn[2]_i_2_n_0 ;
  wire \FSM_sequential_btn[3]_i_10_n_0 ;
  wire \FSM_sequential_btn[3]_i_11_n_0 ;
  wire \FSM_sequential_btn[3]_i_12_n_0 ;
  wire \FSM_sequential_btn[3]_i_3_n_0 ;
  wire \FSM_sequential_btn[3]_i_4_n_0 ;
  wire \FSM_sequential_btn[3]_i_5_n_0 ;
  wire \FSM_sequential_btn[3]_i_6_n_0 ;
  wire \FSM_sequential_btn[3]_i_7_n_0 ;
  wire \FSM_sequential_btn[3]_i_8_n_0 ;
  wire \FSM_sequential_btn_reg[0] ;
  wire \N[9]_i_4_n_0 ;
  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire clkdiv_n_1;
  wire clkdiv_n_2;
  wire clkdiv_n_3;
  wire clkdiv_n_4;
  wire \keypad_col_TRI[0] ;
  wire \keypad_col_TRI[1] ;
  wire \keypad_col_TRI[2] ;
  wire \keypad_col_TRI[3] ;
  wire [3:0]keypad_row_IBUF;
  wire [15:0]keys;
  wire \keys[10]_i_1_n_0 ;
  wire \keys[11]_i_1_n_0 ;
  wire \keys[12]_i_1_n_0 ;
  wire \keys[15]_i_2_n_0 ;
  wire \keys_reg[13]_0 ;
  wire [3:0]\keys_reg[7]_0 ;
  wire \keys_reg[7]_1 ;
  wire \keys_reg[9]_0 ;
  wire rst_IBUF;
  wire scan;

  LUT1 #(
    .INIT(2'h2)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\keypad_col_TRI[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\keypad_col_TRI[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\keypad_col_TRI[2] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .CLR(rst_IBUF),
        .D(\keypad_col_TRI[3] ),
        .Q(\keypad_col_TRI[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\keypad_col_TRI[1] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\keypad_col_TRI[2] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\keypad_col_TRI[3] ));
  LUT6 #(
    .INIT(64'h8888888A88888888)) 
    \FSM_sequential_btn[0]_i_1 
       (.I0(\FSM_sequential_btn_reg[0] ),
        .I1(\FSM_sequential_btn[0]_i_2_n_0 ),
        .I2(keys[5]),
        .I3(keys[7]),
        .I4(\FSM_sequential_btn[3]_i_8_n_0 ),
        .I5(\FSM_sequential_btn[0]_i_3_n_0 ),
        .O(\keys_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000000000014)) 
    \FSM_sequential_btn[0]_i_2 
       (.I0(keys[1]),
        .I1(keys[2]),
        .I2(keys[0]),
        .I3(keys[3]),
        .I4(keys[4]),
        .I5(\FSM_sequential_btn[1]_i_3_n_0 ),
        .O(\FSM_sequential_btn[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \FSM_sequential_btn[0]_i_3 
       (.I0(keys[3]),
        .I1(keys[0]),
        .I2(keys[6]),
        .I3(keys[4]),
        .O(\FSM_sequential_btn[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0005054400000000)) 
    \FSM_sequential_btn[1]_i_1 
       (.I0(\FSM_sequential_btn[3]_i_7_n_0 ),
        .I1(\FSM_sequential_btn[1]_i_2_n_0 ),
        .I2(\FSM_sequential_btn[1]_i_3_n_0 ),
        .I3(keys[1]),
        .I4(keys[2]),
        .I5(\FSM_sequential_btn_reg[0] ),
        .O(\keys_reg[7]_0 [1]));
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_btn[1]_i_2 
       (.I0(keys[6]),
        .I1(keys[5]),
        .I2(keys[7]),
        .O(\FSM_sequential_btn[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_btn[1]_i_3 
       (.I0(keys[7]),
        .I1(keys[5]),
        .I2(keys[6]),
        .O(\FSM_sequential_btn[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_btn[2]_i_1 
       (.I0(keys[1]),
        .I1(keys[2]),
        .I2(\FSM_sequential_btn[2]_i_2_n_0 ),
        .I3(\FSM_sequential_btn_reg[0] ),
        .O(\keys_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h0000000000010106)) 
    \FSM_sequential_btn[2]_i_2 
       (.I0(keys[4]),
        .I1(keys[3]),
        .I2(keys[0]),
        .I3(keys[6]),
        .I4(keys[5]),
        .I5(keys[7]),
        .O(\FSM_sequential_btn[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \FSM_sequential_btn[3]_i_1 
       (.I0(\FSM_sequential_btn[3]_i_3_n_0 ),
        .I1(\FSM_sequential_btn[3]_i_4_n_0 ),
        .I2(keys[1]),
        .I3(keys[2]),
        .I4(\FSM_sequential_btn[3]_i_5_n_0 ),
        .I5(\FSM_sequential_btn[3]_i_6_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFF55FF555454)) 
    \FSM_sequential_btn[3]_i_10 
       (.I0(Q[2]),
        .I1(keys[3]),
        .I2(keys[4]),
        .I3(keys[7]),
        .I4(keys[5]),
        .I5(keys[6]),
        .O(\FSM_sequential_btn[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_btn[3]_i_11 
       (.I0(keys[6]),
        .I1(keys[0]),
        .I2(keys[4]),
        .I3(keys[2]),
        .O(\FSM_sequential_btn[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_btn[3]_i_12 
       (.I0(keys[3]),
        .I1(keys[4]),
        .I2(Q[2]),
        .I3(keys[6]),
        .I4(keys[5]),
        .I5(keys[7]),
        .O(\FSM_sequential_btn[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_btn[3]_i_13 
       (.I0(keys[13]),
        .I1(keys[12]),
        .I2(keys[15]),
        .I3(keys[14]),
        .O(\keys_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_btn[3]_i_14 
       (.I0(keys[9]),
        .I1(keys[8]),
        .I2(keys[11]),
        .I3(keys[10]),
        .O(\keys_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \FSM_sequential_btn[3]_i_2 
       (.I0(\FSM_sequential_btn[3]_i_7_n_0 ),
        .I1(\FSM_sequential_btn[3]_i_8_n_0 ),
        .I2(keys[7]),
        .I3(keys[5]),
        .I4(keys[6]),
        .I5(\FSM_sequential_btn_reg[0] ),
        .O(\keys_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'hFFFFAEBE)) 
    \FSM_sequential_btn[3]_i_3 
       (.I0(\FSM_sequential_btn[3]_i_10_n_0 ),
        .I1(\FSM_sequential_btn[3]_i_11_n_0 ),
        .I2(Q[0]),
        .I3(keys[7]),
        .I4(\FSM_sequential_btn[3]_i_12_n_0 ),
        .O(\FSM_sequential_btn[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_btn[3]_i_4 
       (.I0(keys[10]),
        .I1(keys[11]),
        .I2(keys[8]),
        .I3(keys[9]),
        .I4(\keys_reg[13]_0 ),
        .O(\FSM_sequential_btn[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF99FFFFFCFF9F)) 
    \FSM_sequential_btn[3]_i_5 
       (.I0(\FSM_sequential_btn[3]_i_8_n_0 ),
        .I1(\FSM_sequential_btn[1]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(keys[7]),
        .I4(\FSM_sequential_btn[3]_i_7_n_0 ),
        .I5(Q[3]),
        .O(\FSM_sequential_btn[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE0)) 
    \FSM_sequential_btn[3]_i_6 
       (.I0(keys[1]),
        .I1(keys[2]),
        .I2(keys[4]),
        .I3(keys[3]),
        .I4(keys[0]),
        .O(\FSM_sequential_btn[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_btn[3]_i_7 
       (.I0(keys[4]),
        .I1(keys[3]),
        .I2(keys[0]),
        .O(\FSM_sequential_btn[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_btn[3]_i_8 
       (.I0(keys[1]),
        .I1(keys[2]),
        .O(\FSM_sequential_btn[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEFF)) 
    \N[0]_i_1 
       (.I0(keys[3]),
        .I1(keys[1]),
        .I2(keys[2]),
        .I3(keys[5]),
        .I4(keys[4]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h000E000E000E000F)) 
    \N[1]_i_1 
       (.I0(keys[3]),
        .I1(keys[4]),
        .I2(keys[1]),
        .I3(keys[2]),
        .I4(keys[5]),
        .I5(keys[7]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \N[2]_i_1 
       (.I0(keys[7]),
        .I1(keys[5]),
        .I2(keys[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAEAFAEAEAEAFAEAF)) 
    \N[3]_i_1 
       (.I0(keys[1]),
        .I1(keys[3]),
        .I2(keys[2]),
        .I3(keys[4]),
        .I4(keys[5]),
        .I5(keys[7]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \N[4]_i_1 
       (.I0(keys[5]),
        .I1(keys[7]),
        .I2(keys[4]),
        .I3(keys[2]),
        .I4(keys[1]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h000000000000FEFF)) 
    \N[5]_i_1 
       (.I0(keys[4]),
        .I1(keys[3]),
        .I2(keys[5]),
        .I3(keys[6]),
        .I4(keys[1]),
        .I5(keys[2]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000AAAA0000FFAB)) 
    \N[6]_i_1 
       (.I0(keys[2]),
        .I1(keys[6]),
        .I2(keys[5]),
        .I3(keys[4]),
        .I4(keys[1]),
        .I5(keys[3]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000000FD)) 
    \N[7]_i_1 
       (.I0(keys[7]),
        .I1(keys[5]),
        .I2(keys[4]),
        .I3(keys[2]),
        .I4(keys[3]),
        .I5(keys[1]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \N[8]_i_1 
       (.I0(keys[4]),
        .I1(keys[7]),
        .I2(keys[5]),
        .I3(keys[6]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \N[9]_i_2 
       (.I0(\FSM_sequential_btn[3]_i_8_n_0 ),
        .I1(keys[0]),
        .I2(keys[4]),
        .I3(keys[7]),
        .I4(keys[5]),
        .I5(keys[6]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0001011F00010110)) 
    \N[9]_i_3 
       (.I0(\FSM_sequential_btn[3]_i_7_n_0 ),
        .I1(\FSM_sequential_btn[3]_i_8_n_0 ),
        .I2(keys[7]),
        .I3(keys[5]),
        .I4(keys[6]),
        .I5(\N[9]_i_4_n_0 ),
        .O(\keys_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \N[9]_i_4 
       (.I0(keys[4]),
        .I1(keys[3]),
        .I2(keys[0]),
        .I3(keys[1]),
        .I4(keys[2]),
        .O(\N[9]_i_4_n_0 ));
  clock_divider clkdiv
       (.E({clkdiv_n_1,clkdiv_n_2,clkdiv_n_3,clkdiv_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\keypad_col_TRI[0] (\keypad_col_TRI[0] ),
        .\keypad_col_TRI[1] (\keypad_col_TRI[1] ),
        .\keypad_col_TRI[2] (\keypad_col_TRI[2] ),
        .\keypad_col_TRI[3] (\keypad_col_TRI[3] ),
        .rst_IBUF(rst_IBUF),
        .scan(scan));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[10]_i_1 
       (.I0(keypad_row_IBUF[0]),
        .O(\keys[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[11]_i_1 
       (.I0(keypad_row_IBUF[1]),
        .O(\keys[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[12]_i_1 
       (.I0(keypad_row_IBUF[2]),
        .O(\keys[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[15]_i_2 
       (.I0(keypad_row_IBUF[3]),
        .O(\keys[15]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(keys[0]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(keys[10]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(keys[11]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(keys[12]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(keys[13]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(keys[14]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(keys[15]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(keys[1]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(keys[2]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(keys[3]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(keys[4]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(keys[5]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(keys[6]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(keys[7]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(keys[8]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(keys[9]));
endmodule

module pwm_audio
   (\FSM_sequential_btn_reg[2] ,
    rst_IBUF,
    clk_IBUF_BUFG,
    Q,
    f_count1_carry__0_0,
    sw_IBUF);
  output \FSM_sequential_btn_reg[2] ;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [3:0]Q;
  input [9:0]f_count1_carry__0_0;
  input [7:0]sw_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_btn_reg[2] ;
  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire \dc_count[0]_i_1_n_0 ;
  wire \dc_count[7]_i_2_n_0 ;
  wire [7:0]dc_count_reg;
  wire f_clk_i_1_n_0;
  wire f_clk_reg_n_0;
  wire [9:0]f_count;
  wire [9:0]f_count1_carry__0_0;
  wire f_count1_carry__0_i_1_n_0;
  wire f_count1_carry__0_i_2_n_0;
  wire f_count1_carry__0_n_3;
  wire f_count1_carry_i_1_n_0;
  wire f_count1_carry_i_2_n_0;
  wire f_count1_carry_i_3_n_0;
  wire f_count1_carry_i_4_n_0;
  wire f_count1_carry_i_5_n_0;
  wire f_count1_carry_i_6_n_0;
  wire f_count1_carry_i_7_n_0;
  wire f_count1_carry_i_8_n_0;
  wire f_count1_carry_n_0;
  wire f_count1_carry_n_1;
  wire f_count1_carry_n_2;
  wire f_count1_carry_n_3;
  wire \f_count[0]_i_1_n_0 ;
  wire \f_count[1]_i_1_n_0 ;
  wire \f_count[2]_i_1_n_0 ;
  wire \f_count[3]_i_1_n_0 ;
  wire \f_count[4]_i_1_n_0 ;
  wire \f_count[5]_i_1_n_0 ;
  wire \f_count[5]_i_2_n_0 ;
  wire \f_count[6]_i_1_n_0 ;
  wire \f_count[7]_i_1_n_0 ;
  wire \f_count[8]_i_1_n_0 ;
  wire \f_count[9]_i_1_n_0 ;
  wire \f_count[9]_i_2_n_0 ;
  wire [7:1]p_0_in;
  wire rst_IBUF;
  wire sout;
  wire sout0_carry_i_1_n_0;
  wire sout0_carry_i_2_n_0;
  wire sout0_carry_i_3_n_0;
  wire sout0_carry_i_4_n_0;
  wire sout0_carry_i_5_n_0;
  wire sout0_carry_i_6_n_0;
  wire sout0_carry_i_7_n_0;
  wire sout0_carry_i_8_n_0;
  wire sout0_carry_n_0;
  wire sout0_carry_n_1;
  wire sout0_carry_n_2;
  wire sout0_carry_n_3;
  wire [7:0]sw_IBUF;

  LUT5 #(
    .INIT(32'h0100FE00)) 
    AIN_i_1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sout),
        .I4(Q[3]),
        .O(\FSM_sequential_btn_reg[2] ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dc_count[0]_i_1 
       (.I0(dc_count_reg[0]),
        .O(\dc_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_count[1]_i_1 
       (.I0(dc_count_reg[0]),
        .I1(dc_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dc_count[2]_i_1 
       (.I0(dc_count_reg[1]),
        .I1(dc_count_reg[0]),
        .I2(dc_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dc_count[3]_i_1 
       (.I0(dc_count_reg[2]),
        .I1(dc_count_reg[0]),
        .I2(dc_count_reg[1]),
        .I3(dc_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \dc_count[4]_i_1 
       (.I0(dc_count_reg[3]),
        .I1(dc_count_reg[1]),
        .I2(dc_count_reg[0]),
        .I3(dc_count_reg[2]),
        .I4(dc_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \dc_count[5]_i_1 
       (.I0(dc_count_reg[4]),
        .I1(dc_count_reg[2]),
        .I2(dc_count_reg[0]),
        .I3(dc_count_reg[1]),
        .I4(dc_count_reg[3]),
        .I5(dc_count_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dc_count[6]_i_1 
       (.I0(\dc_count[7]_i_2_n_0 ),
        .I1(dc_count_reg[4]),
        .I2(dc_count_reg[5]),
        .I3(dc_count_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \dc_count[7]_i_1 
       (.I0(\dc_count[7]_i_2_n_0 ),
        .I1(dc_count_reg[6]),
        .I2(dc_count_reg[5]),
        .I3(dc_count_reg[4]),
        .I4(dc_count_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \dc_count[7]_i_2 
       (.I0(dc_count_reg[2]),
        .I1(dc_count_reg[0]),
        .I2(dc_count_reg[1]),
        .I3(dc_count_reg[3]),
        .O(\dc_count[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[0] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\dc_count[0]_i_1_n_0 ),
        .Q(dc_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[1] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[1]),
        .Q(dc_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[2] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[2]),
        .Q(dc_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[3] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[3]),
        .Q(dc_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[4] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[4]),
        .Q(dc_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[5] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[5]),
        .Q(dc_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[6] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[6]),
        .Q(dc_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dc_count_reg[7] 
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(p_0_in[7]),
        .Q(dc_count_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    f_clk_i_1
       (.I0(f_count1_carry__0_n_3),
        .I1(f_clk_reg_n_0),
        .O(f_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    f_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(f_clk_i_1_n_0),
        .Q(f_clk_reg_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 f_count1_carry
       (.CI(\<const0> ),
        .CO({f_count1_carry_n_0,f_count1_carry_n_1,f_count1_carry_n_2,f_count1_carry_n_3}),
        .CYINIT(\<const1> ),
        .DI({f_count1_carry_i_1_n_0,f_count1_carry_i_2_n_0,f_count1_carry_i_3_n_0,f_count1_carry_i_4_n_0}),
        .S({f_count1_carry_i_5_n_0,f_count1_carry_i_6_n_0,f_count1_carry_i_7_n_0,f_count1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 f_count1_carry__0
       (.CI(f_count1_carry_n_0),
        .CO(f_count1_carry__0_n_3),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,f_count1_carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,\<const0> ,f_count1_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    f_count1_carry__0_i_1
       (.I0(f_count[9]),
        .I1(f_count1_carry__0_0[9]),
        .I2(f_count[8]),
        .I3(f_count1_carry__0_0[8]),
        .O(f_count1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_count1_carry__0_i_2
       (.I0(f_count1_carry__0_0[9]),
        .I1(f_count[9]),
        .I2(f_count1_carry__0_0[8]),
        .I3(f_count[8]),
        .O(f_count1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    f_count1_carry_i_1
       (.I0(f_count[7]),
        .I1(f_count1_carry__0_0[7]),
        .I2(f_count[6]),
        .I3(f_count1_carry__0_0[6]),
        .O(f_count1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    f_count1_carry_i_2
       (.I0(f_count[5]),
        .I1(f_count1_carry__0_0[4]),
        .I2(f_count[4]),
        .I3(f_count1_carry__0_0[5]),
        .O(f_count1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    f_count1_carry_i_3
       (.I0(f_count[3]),
        .I1(f_count1_carry__0_0[2]),
        .I2(f_count[2]),
        .I3(f_count1_carry__0_0[3]),
        .O(f_count1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20BA)) 
    f_count1_carry_i_4
       (.I0(f_count[1]),
        .I1(f_count1_carry__0_0[0]),
        .I2(f_count[0]),
        .I3(f_count1_carry__0_0[1]),
        .O(f_count1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_count1_carry_i_5
       (.I0(f_count1_carry__0_0[7]),
        .I1(f_count[7]),
        .I2(f_count1_carry__0_0[6]),
        .I3(f_count[6]),
        .O(f_count1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_count1_carry_i_6
       (.I0(f_count1_carry__0_0[5]),
        .I1(f_count[5]),
        .I2(f_count1_carry__0_0[4]),
        .I3(f_count[4]),
        .O(f_count1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    f_count1_carry_i_7
       (.I0(f_count1_carry__0_0[3]),
        .I1(f_count[3]),
        .I2(f_count1_carry__0_0[2]),
        .I3(f_count[2]),
        .O(f_count1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    f_count1_carry_i_8
       (.I0(f_count[0]),
        .I1(f_count[1]),
        .I2(f_count1_carry__0_0[0]),
        .I3(f_count1_carry__0_0[1]),
        .O(f_count1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    \f_count[0]_i_1 
       (.I0(f_count[0]),
        .I1(f_count1_carry__0_n_3),
        .O(\f_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \f_count[1]_i_1 
       (.I0(f_count[1]),
        .I1(f_count[0]),
        .I2(f_count1_carry__0_n_3),
        .O(\f_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \f_count[2]_i_1 
       (.I0(f_count[2]),
        .I1(f_count[0]),
        .I2(f_count[1]),
        .I3(f_count1_carry__0_n_3),
        .O(\f_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \f_count[3]_i_1 
       (.I0(f_count[3]),
        .I1(f_count[1]),
        .I2(f_count[0]),
        .I3(f_count[2]),
        .I4(f_count1_carry__0_n_3),
        .O(\f_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \f_count[4]_i_1 
       (.I0(f_count[4]),
        .I1(f_count[3]),
        .I2(f_count[2]),
        .I3(f_count[1]),
        .I4(f_count[0]),
        .I5(f_count1_carry__0_n_3),
        .O(\f_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \f_count[5]_i_1 
       (.I0(f_count[5]),
        .I1(\f_count[5]_i_2_n_0 ),
        .I2(f_count[2]),
        .I3(f_count[3]),
        .I4(f_count[4]),
        .I5(f_count1_carry__0_n_3),
        .O(\f_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \f_count[5]_i_2 
       (.I0(f_count[0]),
        .I1(f_count[1]),
        .O(\f_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \f_count[6]_i_1 
       (.I0(f_count[6]),
        .I1(\f_count[9]_i_2_n_0 ),
        .I2(f_count1_carry__0_n_3),
        .O(\f_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \f_count[7]_i_1 
       (.I0(f_count[7]),
        .I1(\f_count[9]_i_2_n_0 ),
        .I2(f_count[6]),
        .I3(f_count1_carry__0_n_3),
        .O(\f_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \f_count[8]_i_1 
       (.I0(f_count[8]),
        .I1(f_count[7]),
        .I2(f_count[6]),
        .I3(\f_count[9]_i_2_n_0 ),
        .I4(f_count1_carry__0_n_3),
        .O(\f_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \f_count[9]_i_1 
       (.I0(f_count[9]),
        .I1(f_count[6]),
        .I2(f_count[7]),
        .I3(f_count[8]),
        .I4(\f_count[9]_i_2_n_0 ),
        .I5(f_count1_carry__0_n_3),
        .O(\f_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \f_count[9]_i_2 
       (.I0(f_count[5]),
        .I1(f_count[4]),
        .I2(f_count[0]),
        .I3(f_count[1]),
        .I4(f_count[2]),
        .I5(f_count[3]),
        .O(\f_count[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[0]_i_1_n_0 ),
        .Q(f_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[1]_i_1_n_0 ),
        .Q(f_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[2]_i_1_n_0 ),
        .Q(f_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[3]_i_1_n_0 ),
        .Q(f_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[4]_i_1_n_0 ),
        .Q(f_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[5]_i_1_n_0 ),
        .Q(f_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[6]_i_1_n_0 ),
        .Q(f_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[7]_i_1_n_0 ),
        .Q(f_count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[8]_i_1_n_0 ),
        .Q(f_count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \f_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\f_count[9]_i_1_n_0 ),
        .Q(f_count[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sout0_carry
       (.CI(\<const0> ),
        .CO({sout0_carry_n_0,sout0_carry_n_1,sout0_carry_n_2,sout0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({sout0_carry_i_1_n_0,sout0_carry_i_2_n_0,sout0_carry_i_3_n_0,sout0_carry_i_4_n_0}),
        .S({sout0_carry_i_5_n_0,sout0_carry_i_6_n_0,sout0_carry_i_7_n_0,sout0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    sout0_carry_i_1
       (.I0(sw_IBUF[7]),
        .I1(dc_count_reg[7]),
        .I2(sw_IBUF[6]),
        .I3(dc_count_reg[6]),
        .O(sout0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sout0_carry_i_2
       (.I0(sw_IBUF[5]),
        .I1(dc_count_reg[5]),
        .I2(sw_IBUF[4]),
        .I3(dc_count_reg[4]),
        .O(sout0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sout0_carry_i_3
       (.I0(sw_IBUF[3]),
        .I1(dc_count_reg[3]),
        .I2(sw_IBUF[2]),
        .I3(dc_count_reg[2]),
        .O(sout0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sout0_carry_i_4
       (.I0(sw_IBUF[1]),
        .I1(dc_count_reg[1]),
        .I2(sw_IBUF[0]),
        .I3(dc_count_reg[0]),
        .O(sout0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sout0_carry_i_5
       (.I0(sw_IBUF[7]),
        .I1(dc_count_reg[7]),
        .I2(sw_IBUF[6]),
        .I3(dc_count_reg[6]),
        .O(sout0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sout0_carry_i_6
       (.I0(sw_IBUF[5]),
        .I1(dc_count_reg[5]),
        .I2(sw_IBUF[4]),
        .I3(dc_count_reg[4]),
        .O(sout0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sout0_carry_i_7
       (.I0(sw_IBUF[3]),
        .I1(dc_count_reg[3]),
        .I2(sw_IBUF[2]),
        .I3(dc_count_reg[2]),
        .O(sout0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sout0_carry_i_8
       (.I0(sw_IBUF[1]),
        .I1(dc_count_reg[1]),
        .I2(sw_IBUF[0]),
        .I3(dc_count_reg[0]),
        .O(sout0_carry_i_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sout_reg
       (.C(f_clk_reg_n_0),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(sout0_carry_n_0),
        .Q(sout));
endmodule

module tcounter
   (\FSM_sequential_state_reg[1] ,
    done_reg_0,
    clk_IBUF_BUFG,
    rst_IBUF,
    \FSM_sequential_state_reg[1]_0 ,
    state,
    power_IBUF);
  output \FSM_sequential_state_reg[1] ;
  output done_reg_0;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \FSM_sequential_state_reg[1]_0 ;
  input [1:0]state;
  input power_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire clk_IBUF_BUFG;
  wire clk_count0;
  wire \clk_count[0]_i_10_n_0 ;
  wire \clk_count[0]_i_11_n_0 ;
  wire \clk_count[0]_i_12_n_0 ;
  wire \clk_count[0]_i_13_n_0 ;
  wire \clk_count[0]_i_3_n_0 ;
  wire \clk_count[0]_i_4_n_0 ;
  wire \clk_count[0]_i_5_n_0 ;
  wire \clk_count[0]_i_6_n_0 ;
  wire \clk_count[0]_i_7_n_0 ;
  wire \clk_count[0]_i_8_n_0 ;
  wire \clk_count[0]_i_9_n_0 ;
  wire \clk_count[12]_i_2_n_0 ;
  wire \clk_count[12]_i_3_n_0 ;
  wire \clk_count[12]_i_4_n_0 ;
  wire \clk_count[12]_i_5_n_0 ;
  wire \clk_count[16]_i_2_n_0 ;
  wire \clk_count[16]_i_3_n_0 ;
  wire \clk_count[16]_i_4_n_0 ;
  wire \clk_count[16]_i_5_n_0 ;
  wire \clk_count[20]_i_2_n_0 ;
  wire \clk_count[20]_i_3_n_0 ;
  wire \clk_count[20]_i_4_n_0 ;
  wire \clk_count[20]_i_5_n_0 ;
  wire \clk_count[24]_i_2_n_0 ;
  wire \clk_count[24]_i_3_n_0 ;
  wire \clk_count[24]_i_4_n_0 ;
  wire \clk_count[24]_i_5_n_0 ;
  wire \clk_count[28]_i_2_n_0 ;
  wire \clk_count[28]_i_3_n_0 ;
  wire \clk_count[28]_i_4_n_0 ;
  wire \clk_count[28]_i_5_n_0 ;
  wire \clk_count[4]_i_2_n_0 ;
  wire \clk_count[4]_i_3_n_0 ;
  wire \clk_count[4]_i_4_n_0 ;
  wire \clk_count[4]_i_5_n_0 ;
  wire \clk_count[8]_i_2_n_0 ;
  wire \clk_count[8]_i_3_n_0 ;
  wire \clk_count[8]_i_4_n_0 ;
  wire \clk_count[8]_i_5_n_0 ;
  wire \clk_count_reg[0]_i_2_n_0 ;
  wire \clk_count_reg[0]_i_2_n_1 ;
  wire \clk_count_reg[0]_i_2_n_2 ;
  wire \clk_count_reg[0]_i_2_n_3 ;
  wire \clk_count_reg[0]_i_2_n_4 ;
  wire \clk_count_reg[0]_i_2_n_5 ;
  wire \clk_count_reg[0]_i_2_n_6 ;
  wire \clk_count_reg[0]_i_2_n_7 ;
  wire \clk_count_reg[12]_i_1_n_0 ;
  wire \clk_count_reg[12]_i_1_n_1 ;
  wire \clk_count_reg[12]_i_1_n_2 ;
  wire \clk_count_reg[12]_i_1_n_3 ;
  wire \clk_count_reg[12]_i_1_n_4 ;
  wire \clk_count_reg[12]_i_1_n_5 ;
  wire \clk_count_reg[12]_i_1_n_6 ;
  wire \clk_count_reg[12]_i_1_n_7 ;
  wire \clk_count_reg[16]_i_1_n_0 ;
  wire \clk_count_reg[16]_i_1_n_1 ;
  wire \clk_count_reg[16]_i_1_n_2 ;
  wire \clk_count_reg[16]_i_1_n_3 ;
  wire \clk_count_reg[16]_i_1_n_4 ;
  wire \clk_count_reg[16]_i_1_n_5 ;
  wire \clk_count_reg[16]_i_1_n_6 ;
  wire \clk_count_reg[16]_i_1_n_7 ;
  wire \clk_count_reg[20]_i_1_n_0 ;
  wire \clk_count_reg[20]_i_1_n_1 ;
  wire \clk_count_reg[20]_i_1_n_2 ;
  wire \clk_count_reg[20]_i_1_n_3 ;
  wire \clk_count_reg[20]_i_1_n_4 ;
  wire \clk_count_reg[20]_i_1_n_5 ;
  wire \clk_count_reg[20]_i_1_n_6 ;
  wire \clk_count_reg[20]_i_1_n_7 ;
  wire \clk_count_reg[24]_i_1_n_0 ;
  wire \clk_count_reg[24]_i_1_n_1 ;
  wire \clk_count_reg[24]_i_1_n_2 ;
  wire \clk_count_reg[24]_i_1_n_3 ;
  wire \clk_count_reg[24]_i_1_n_4 ;
  wire \clk_count_reg[24]_i_1_n_5 ;
  wire \clk_count_reg[24]_i_1_n_6 ;
  wire \clk_count_reg[24]_i_1_n_7 ;
  wire \clk_count_reg[28]_i_1_n_1 ;
  wire \clk_count_reg[28]_i_1_n_2 ;
  wire \clk_count_reg[28]_i_1_n_3 ;
  wire \clk_count_reg[28]_i_1_n_4 ;
  wire \clk_count_reg[28]_i_1_n_5 ;
  wire \clk_count_reg[28]_i_1_n_6 ;
  wire \clk_count_reg[28]_i_1_n_7 ;
  wire \clk_count_reg[4]_i_1_n_0 ;
  wire \clk_count_reg[4]_i_1_n_1 ;
  wire \clk_count_reg[4]_i_1_n_2 ;
  wire \clk_count_reg[4]_i_1_n_3 ;
  wire \clk_count_reg[4]_i_1_n_4 ;
  wire \clk_count_reg[4]_i_1_n_5 ;
  wire \clk_count_reg[4]_i_1_n_6 ;
  wire \clk_count_reg[4]_i_1_n_7 ;
  wire \clk_count_reg[8]_i_1_n_0 ;
  wire \clk_count_reg[8]_i_1_n_1 ;
  wire \clk_count_reg[8]_i_1_n_2 ;
  wire \clk_count_reg[8]_i_1_n_3 ;
  wire \clk_count_reg[8]_i_1_n_4 ;
  wire \clk_count_reg[8]_i_1_n_5 ;
  wire \clk_count_reg[8]_i_1_n_6 ;
  wire \clk_count_reg[8]_i_1_n_7 ;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire done_i_5_n_0;
  wire done_i_6_n_0;
  wire done_i_7_n_0;
  wire done_reg_0;
  wire power_IBUF;
  wire rst_IBUF;
  wire [31:0]sel0;
  wire [1:0]state;
  wire t;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFDFD00A0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(t),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(state[0]),
        .I3(power_IBUF),
        .I4(state[1]),
        .O(done_reg_0));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    btn_db_i_1
       (.I0(state[1]),
        .I1(state[0]),
        .I2(power_IBUF),
        .I3(t),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[0]_i_1 
       (.I0(\clk_count[0]_i_3_n_0 ),
        .I1(\clk_count[0]_i_4_n_0 ),
        .I2(\clk_count[0]_i_5_n_0 ),
        .I3(\clk_count[0]_i_6_n_0 ),
        .I4(\clk_count[0]_i_7_n_0 ),
        .I5(\clk_count[0]_i_8_n_0 ),
        .O(clk_count0));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_10 
       (.I0(sel0[3]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_11 
       (.I0(sel0[2]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_12 
       (.I0(sel0[1]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_count[0]_i_13 
       (.I0(sel0[0]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[0]_i_3 
       (.I0(sel0[19]),
        .I1(sel0[20]),
        .I2(sel0[17]),
        .I3(sel0[18]),
        .I4(sel0[16]),
        .I5(sel0[15]),
        .O(\clk_count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[0]_i_4 
       (.I0(sel0[13]),
        .I1(sel0[14]),
        .I2(sel0[11]),
        .I3(sel0[12]),
        .I4(sel0[10]),
        .I5(sel0[9]),
        .O(\clk_count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \clk_count[0]_i_5 
       (.I0(sel0[4]),
        .I1(sel0[6]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(sel0[0]),
        .I5(sel0[27]),
        .O(\clk_count[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[0]_i_6 
       (.I0(sel0[31]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(sel0[29]),
        .I3(sel0[30]),
        .I4(sel0[28]),
        .I5(sel0[7]),
        .O(\clk_count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \clk_count[0]_i_7 
       (.I0(sel0[5]),
        .I1(sel0[8]),
        .I2(sel0[2]),
        .O(\clk_count[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[0]_i_8 
       (.I0(sel0[25]),
        .I1(sel0[26]),
        .I2(sel0[23]),
        .I3(sel0[24]),
        .I4(sel0[22]),
        .I5(sel0[21]),
        .O(\clk_count[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_9 
       (.I0(sel0[0]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_2 
       (.I0(sel0[15]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_3 
       (.I0(sel0[14]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_4 
       (.I0(sel0[13]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_5 
       (.I0(sel0[12]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_2 
       (.I0(sel0[19]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_3 
       (.I0(sel0[18]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_4 
       (.I0(sel0[17]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_5 
       (.I0(sel0[16]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_2 
       (.I0(sel0[23]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_3 
       (.I0(sel0[22]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_4 
       (.I0(sel0[21]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_5 
       (.I0(sel0[20]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_2 
       (.I0(sel0[27]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_3 
       (.I0(sel0[26]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_4 
       (.I0(sel0[25]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_5 
       (.I0(sel0[24]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_2 
       (.I0(sel0[31]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_3 
       (.I0(sel0[30]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_4 
       (.I0(sel0[29]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_5 
       (.I0(sel0[28]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_2 
       (.I0(sel0[7]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_3 
       (.I0(sel0[6]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_4 
       (.I0(sel0[5]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_5 
       (.I0(sel0[4]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_2 
       (.I0(sel0[11]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_3 
       (.I0(sel0[10]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_4 
       (.I0(sel0[9]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_5 
       (.I0(sel0[8]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(\clk_count[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_7 ),
        .Q(sel0[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\clk_count_reg[0]_i_2_n_0 ,\clk_count_reg[0]_i_2_n_1 ,\clk_count_reg[0]_i_2_n_2 ,\clk_count_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\clk_count[0]_i_9_n_0 }),
        .O({\clk_count_reg[0]_i_2_n_4 ,\clk_count_reg[0]_i_2_n_5 ,\clk_count_reg[0]_i_2_n_6 ,\clk_count_reg[0]_i_2_n_7 }),
        .S({\clk_count[0]_i_10_n_0 ,\clk_count[0]_i_11_n_0 ,\clk_count[0]_i_12_n_0 ,\clk_count[0]_i_13_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_5 ),
        .Q(sel0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_4 ),
        .Q(sel0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_7 ),
        .Q(sel0[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[12]_i_1 
       (.CI(\clk_count_reg[8]_i_1_n_0 ),
        .CO({\clk_count_reg[12]_i_1_n_0 ,\clk_count_reg[12]_i_1_n_1 ,\clk_count_reg[12]_i_1_n_2 ,\clk_count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[12]_i_1_n_4 ,\clk_count_reg[12]_i_1_n_5 ,\clk_count_reg[12]_i_1_n_6 ,\clk_count_reg[12]_i_1_n_7 }),
        .S({\clk_count[12]_i_2_n_0 ,\clk_count[12]_i_3_n_0 ,\clk_count[12]_i_4_n_0 ,\clk_count[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_6 ),
        .Q(sel0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_5 ),
        .Q(sel0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_4 ),
        .Q(sel0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_7 ),
        .Q(sel0[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[16]_i_1 
       (.CI(\clk_count_reg[12]_i_1_n_0 ),
        .CO({\clk_count_reg[16]_i_1_n_0 ,\clk_count_reg[16]_i_1_n_1 ,\clk_count_reg[16]_i_1_n_2 ,\clk_count_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[16]_i_1_n_4 ,\clk_count_reg[16]_i_1_n_5 ,\clk_count_reg[16]_i_1_n_6 ,\clk_count_reg[16]_i_1_n_7 }),
        .S({\clk_count[16]_i_2_n_0 ,\clk_count[16]_i_3_n_0 ,\clk_count[16]_i_4_n_0 ,\clk_count[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_6 ),
        .Q(sel0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_5 ),
        .Q(sel0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_4 ),
        .Q(sel0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_6 ),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_7 ),
        .Q(sel0[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[20]_i_1 
       (.CI(\clk_count_reg[16]_i_1_n_0 ),
        .CO({\clk_count_reg[20]_i_1_n_0 ,\clk_count_reg[20]_i_1_n_1 ,\clk_count_reg[20]_i_1_n_2 ,\clk_count_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[20]_i_1_n_4 ,\clk_count_reg[20]_i_1_n_5 ,\clk_count_reg[20]_i_1_n_6 ,\clk_count_reg[20]_i_1_n_7 }),
        .S({\clk_count[20]_i_2_n_0 ,\clk_count[20]_i_3_n_0 ,\clk_count[20]_i_4_n_0 ,\clk_count[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_6 ),
        .Q(sel0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_5 ),
        .Q(sel0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_4 ),
        .Q(sel0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_7 ),
        .Q(sel0[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[24]_i_1 
       (.CI(\clk_count_reg[20]_i_1_n_0 ),
        .CO({\clk_count_reg[24]_i_1_n_0 ,\clk_count_reg[24]_i_1_n_1 ,\clk_count_reg[24]_i_1_n_2 ,\clk_count_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[24]_i_1_n_4 ,\clk_count_reg[24]_i_1_n_5 ,\clk_count_reg[24]_i_1_n_6 ,\clk_count_reg[24]_i_1_n_7 }),
        .S({\clk_count[24]_i_2_n_0 ,\clk_count[24]_i_3_n_0 ,\clk_count[24]_i_4_n_0 ,\clk_count[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_6 ),
        .Q(sel0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_5 ),
        .Q(sel0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_4 ),
        .Q(sel0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_7 ),
        .Q(sel0[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[28]_i_1 
       (.CI(\clk_count_reg[24]_i_1_n_0 ),
        .CO({\clk_count_reg[28]_i_1_n_1 ,\clk_count_reg[28]_i_1_n_2 ,\clk_count_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[28]_i_1_n_4 ,\clk_count_reg[28]_i_1_n_5 ,\clk_count_reg[28]_i_1_n_6 ,\clk_count_reg[28]_i_1_n_7 }),
        .S({\clk_count[28]_i_2_n_0 ,\clk_count[28]_i_3_n_0 ,\clk_count[28]_i_4_n_0 ,\clk_count[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_6 ),
        .Q(sel0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_5 ),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_5 ),
        .Q(sel0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_4 ),
        .Q(sel0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_4 ),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_7 ),
        .Q(sel0[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[4]_i_1 
       (.CI(\clk_count_reg[0]_i_2_n_0 ),
        .CO({\clk_count_reg[4]_i_1_n_0 ,\clk_count_reg[4]_i_1_n_1 ,\clk_count_reg[4]_i_1_n_2 ,\clk_count_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[4]_i_1_n_4 ,\clk_count_reg[4]_i_1_n_5 ,\clk_count_reg[4]_i_1_n_6 ,\clk_count_reg[4]_i_1_n_7 }),
        .S({\clk_count[4]_i_2_n_0 ,\clk_count[4]_i_3_n_0 ,\clk_count[4]_i_4_n_0 ,\clk_count[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_6 ),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_5 ),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_4 ),
        .Q(sel0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_7 ),
        .Q(sel0[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[8]_i_1 
       (.CI(\clk_count_reg[4]_i_1_n_0 ),
        .CO({\clk_count_reg[8]_i_1_n_0 ,\clk_count_reg[8]_i_1_n_1 ,\clk_count_reg[8]_i_1_n_2 ,\clk_count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[8]_i_1_n_4 ,\clk_count_reg[8]_i_1_n_5 ,\clk_count_reg[8]_i_1_n_6 ,\clk_count_reg[8]_i_1_n_7 }),
        .S({\clk_count[8]_i_2_n_0 ,\clk_count[8]_i_3_n_0 ,\clk_count[8]_i_4_n_0 ,\clk_count[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_count0),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_6 ),
        .Q(sel0[9]));
  LUT4 #(
    .INIT(16'h0F08)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(done_i_3_n_0),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(t),
        .O(done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    done_i_2
       (.I0(sel0[28]),
        .I1(sel0[29]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(sel0[31]),
        .I5(sel0[30]),
        .O(done_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    done_i_3
       (.I0(done_i_4_n_0),
        .I1(done_i_5_n_0),
        .I2(done_i_6_n_0),
        .I3(done_i_7_n_0),
        .I4(sel0[2]),
        .I5(sel0[5]),
        .O(done_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    done_i_4
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[26]),
        .I3(sel0[27]),
        .I4(sel0[4]),
        .I5(sel0[3]),
        .O(done_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    done_i_5
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .I2(sel0[20]),
        .I3(sel0[21]),
        .I4(sel0[25]),
        .I5(sel0[24]),
        .O(done_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    done_i_6
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .I2(sel0[14]),
        .I3(sel0[15]),
        .I4(sel0[19]),
        .I5(sel0[18]),
        .O(done_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    done_i_7
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(sel0[8]),
        .I3(sel0[9]),
        .I4(sel0[13]),
        .I5(sel0[12]),
        .O(done_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(done_i_1_n_0),
        .Q(t));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    rst,
    keypad_row,
    sw,
    power,
    keypad_col,
    AIN,
    GAIN,
    SHUTDOWN_L);
  input clk;
  input rst;
  input [3:0]keypad_row;
  input [7:0]sw;
  input power;
  output [3:0]keypad_col;
  output AIN;
  output GAIN;
  output SHUTDOWN_L;

  wire \<const0> ;
  wire \<const1> ;
  wire AIN;
  wire AIN_OBUF;
  wire DB1_n_0;
  wire GAIN;
  wire KP1_n_0;
  wire KP1_n_1;
  wire KP1_n_14;
  wire KP1_n_15;
  wire KP1_n_16;
  wire KP1_n_17;
  wire KP1_n_2;
  wire KP1_n_3;
  wire KP1_n_4;
  wire KP1_n_5;
  wire KP1_n_6;
  wire KP1_n_7;
  wire KP1_n_8;
  wire KP1_n_9;
  wire PWM1_n_1;
  wire SHUTDOWN_L;
  wire SHUTDOWN_L_OBUF;
  wire [3:0]btn;
  wire [3:0]btn__0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]keypad_col;
  wire \keypad_col_TRI[0] ;
  wire \keypad_col_TRI[1] ;
  wire \keypad_col_TRI[2] ;
  wire \keypad_col_TRI[3] ;
  wire [3:0]keypad_row;
  wire [3:0]keypad_row_IBUF;
  wire power;
  wire power_IBUF;
  wire power_shut;
  wire rst;
  wire rst_IBUF;
  wire [7:0]sw;
  wire [7:0]sw_IBUF;

  OBUF AIN_OBUF_inst
       (.I(AIN_OBUF),
        .O(AIN));
  debouncer DB1
       (.btn_db_reg_0(DB1_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .power_IBUF(power_IBUF),
        .power_shut(power_shut),
        .rst_IBUF(rst_IBUF));
  OBUF GAIN_OBUF_inst
       (.I(\<const1> ),
        .O(GAIN));
  GND GND
       (.G(\<const0> ));
  keypad KP1
       (.D({KP1_n_0,KP1_n_1,KP1_n_2,KP1_n_3,KP1_n_4,KP1_n_5,KP1_n_6,KP1_n_7,KP1_n_8,KP1_n_9}),
        .E(KP1_n_14),
        .\FSM_sequential_btn_reg[0] (PWM1_n_1),
        .Q(btn),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\keypad_col_TRI[0] (\keypad_col_TRI[0] ),
        .\keypad_col_TRI[1] (\keypad_col_TRI[1] ),
        .\keypad_col_TRI[2] (\keypad_col_TRI[2] ),
        .\keypad_col_TRI[3] (\keypad_col_TRI[3] ),
        .keypad_row_IBUF(keypad_row_IBUF),
        .\keys_reg[13]_0 (KP1_n_16),
        .\keys_reg[7]_0 (btn__0),
        .\keys_reg[7]_1 (KP1_n_15),
        .\keys_reg[9]_0 (KP1_n_17),
        .rst_IBUF(rst_IBUF));
  audio_top PWM1
       (.AIN_OBUF(AIN_OBUF),
        .D(btn__0),
        .E(KP1_n_14),
        .\FSM_sequential_btn_reg[0]_0 (PWM1_n_1),
        .\N_reg[0]_0 (KP1_n_15),
        .\N_reg[0]_1 (KP1_n_17),
        .\N_reg[0]_2 (KP1_n_16),
        .\N_reg[9]_0 ({KP1_n_0,KP1_n_1,KP1_n_2,KP1_n_3,KP1_n_4,KP1_n_5,KP1_n_6,KP1_n_7,KP1_n_8,KP1_n_9}),
        .Q(btn),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .sw_IBUF(sw_IBUF));
  OBUF SHUTDOWN_L_OBUF_inst
       (.I(SHUTDOWN_L_OBUF),
        .O(SHUTDOWN_L));
  FDRE #(
    .INIT(1'b0)) 
    SHUTDOWN_L_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(power_shut),
        .Q(SHUTDOWN_L_OBUF),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUFT \keypad_col_OBUFT[0]_inst 
       (.I(\<const0> ),
        .O(keypad_col[0]),
        .T(\keypad_col_TRI[0] ));
  OBUFT \keypad_col_OBUFT[1]_inst 
       (.I(\<const0> ),
        .O(keypad_col[1]),
        .T(\keypad_col_TRI[1] ));
  OBUFT \keypad_col_OBUFT[2]_inst 
       (.I(\<const0> ),
        .O(keypad_col[2]),
        .T(\keypad_col_TRI[2] ));
  OBUFT \keypad_col_OBUFT[3]_inst 
       (.I(\<const0> ),
        .O(keypad_col[3]),
        .T(\keypad_col_TRI[3] ));
  IBUF \keypad_row_IBUF[0]_inst 
       (.I(keypad_row[0]),
        .O(keypad_row_IBUF[0]));
  IBUF \keypad_row_IBUF[1]_inst 
       (.I(keypad_row[1]),
        .O(keypad_row_IBUF[1]));
  IBUF \keypad_row_IBUF[2]_inst 
       (.I(keypad_row[2]),
        .O(keypad_row_IBUF[2]));
  IBUF \keypad_row_IBUF[3]_inst 
       (.I(keypad_row[3]),
        .O(keypad_row_IBUF[3]));
  IBUF power_IBUF_inst
       (.I(power),
        .O(power_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    power_shut_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(DB1_n_0),
        .Q(power_shut),
        .R(\<const0> ));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(sw_IBUF[7]));
endmodule
