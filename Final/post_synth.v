// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Apr 22 23:55:56 2025
// Host        : NashPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force post_synth.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_divider
   (div_clk,
    clk_IBUF_BUFG,
    rst_IBUF);
  output div_clk;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire \<const0> ;
  wire \<const1> ;
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
  wire div_clk_i_1_n_0;
  wire rst_IBUF;

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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_count[0]_i_1 
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[30]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(clk_count_0[30]));
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
    .INIT(32'hFFFFFBFF)) 
    \clk_count[31]_i_2 
       (.I0(clk_count[13]),
        .I1(clk_count[12]),
        .I2(clk_count[11]),
        .I3(clk_count[10]),
        .I4(\clk_count[31]_i_5_n_0 ),
        .O(\clk_count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_count[31]_i_3 
       (.I0(clk_count[5]),
        .I1(clk_count[4]),
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
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_5 
       (.I0(clk_count[15]),
        .I1(clk_count[14]),
        .I2(clk_count[17]),
        .I3(clk_count[16]),
        .O(\clk_count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_count[31]_i_6 
       (.I0(clk_count[6]),
        .I1(clk_count[7]),
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
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_8 
       (.I0(clk_count[19]),
        .I1(clk_count[18]),
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
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    div_clk_i_1
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(div_clk),
        .O(div_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    div_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(div_clk_i_1_n_0),
        .Q(div_clk));
endmodule

module fifo
   (rx_rdy_to_uart_start,
    \bit_index_reg[2] ,
    clk_IBUF_BUFG,
    in_data,
    bit_index,
    state,
    uart_done_to_rx_done,
    request_buff,
    \out_data_reg[1]_0 );
  output rx_rdy_to_uart_start;
  output \bit_index_reg[2] ;
  input clk_IBUF_BUFG;
  input [6:0]in_data;
  input [2:0]bit_index;
  input [1:0]state;
  input uart_done_to_rx_done;
  input request_buff;
  input [0:0]\out_data_reg[1]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [4:0]back;
  wire \back[0]_i_1_n_0 ;
  wire \back[1]_i_1_n_0 ;
  wire \back[2]_i_1_n_0 ;
  wire \back[3]_i_1_n_0 ;
  wire \back[4]_i_1_n_0 ;
  wire \back[4]_i_2_n_0 ;
  wire [2:0]bit_index;
  wire \bit_index_reg[2] ;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[5]_i_3_n_0 ;
  wire [5:0]count_reg;
  wire decr_i_1_n_0;
  wire decr_reg_n_0;
  wire empty_i_1_n_0;
  wire empty_i_2_n_0;
  wire empty_reg_n_0;
  wire front;
  wire \front[0]_i_1_n_0 ;
  wire \front[1]_i_1_n_0 ;
  wire \front[2]_i_1_n_0 ;
  wire \front[3]_i_1_n_0 ;
  wire \front[4]_i_2_n_0 ;
  wire front_0;
  wire [4:0]front_reg;
  wire full_i_1_n_0;
  wire full_i_2_n_0;
  wire full_reg_n_0;
  wire [6:0]in_data;
  wire incr;
  wire incr_i_1_n_0;
  wire [7:0]out_data;
  wire [7:0]out_data0;
  wire out_data110_out;
  wire \out_data[7]_i_1_n_0 ;
  wire [0:0]\out_data_reg[1]_0 ;
  wire request_buff;
  wire rx_rdy_i_1_n_0;
  wire rx_rdy_to_uart_start;
  wire [1:0]rx_state;
  wire \rx_state[0]_i_1_n_0 ;
  wire \rx_state[1]_i_1_n_0 ;
  wire [1:0]state;
  wire tx_i_2_n_0;
  wire tx_i_3_n_0;
  wire tx_state;
  wire tx_state_i_1_n_0;
  wire uart_done_to_rx_done;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT4 #(
    .INIT(16'h010F)) 
    \back[0]_i_1 
       (.I0(back[3]),
        .I1(back[2]),
        .I2(back[0]),
        .I3(back[4]),
        .O(\back[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h01100FF0)) 
    \back[1]_i_1 
       (.I0(back[3]),
        .I1(back[2]),
        .I2(back[0]),
        .I3(back[1]),
        .I4(back[4]),
        .O(\back[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \back[2]_i_1 
       (.I0(back[2]),
        .I1(back[0]),
        .I2(back[1]),
        .I3(back[4]),
        .O(\back[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \back[3]_i_1 
       (.I0(back[3]),
        .I1(back[2]),
        .I2(back[0]),
        .I3(back[1]),
        .I4(back[4]),
        .O(\back[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC4)) 
    \back[4]_i_1 
       (.I0(empty_reg_n_0),
        .I1(decr_reg_n_0),
        .I2(incr),
        .O(\back[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01118000)) 
    \back[4]_i_2 
       (.I0(back[3]),
        .I1(back[2]),
        .I2(back[0]),
        .I3(back[1]),
        .I4(back[4]),
        .O(\back[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \back_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\back[4]_i_1_n_0 ),
        .D(\back[0]_i_1_n_0 ),
        .Q(back[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \back_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\back[4]_i_1_n_0 ),
        .D(\back[1]_i_1_n_0 ),
        .Q(back[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \back_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\back[4]_i_1_n_0 ),
        .D(\back[2]_i_1_n_0 ),
        .Q(back[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \back_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\back[4]_i_1_n_0 ),
        .D(\back[3]_i_1_n_0 ),
        .Q(back[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \back_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\back[4]_i_1_n_0 ),
        .D(\back[4]_i_2_n_0 ),
        .Q(back[4]),
        .R(\<const0> ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "160" *) 
  (* RTL_RAM_NAME = "BUFFER/buffer_reg_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M buffer_reg_0_31_0_5
       (.ADDRA(back),
        .ADDRB(back),
        .ADDRC(back),
        .ADDRD(front_reg),
        .DIA({in_data[0],\out_data_reg[1]_0 }),
        .DIB(in_data[2:1]),
        .DIC(in_data[4:3]),
        .DID({\<const0> ,\<const0> }),
        .DOA(out_data0[1:0]),
        .DOB(out_data0[3:2]),
        .DOC(out_data0[5:4]),
        .WCLK(clk_IBUF_BUFG),
        .WE(front));
  LUT3 #(
    .INIT(8'hD0)) 
    buffer_reg_0_31_0_5_i_1
       (.I0(full_reg_n_0),
        .I1(decr_reg_n_0),
        .I2(incr),
        .O(front));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "160" *) 
  (* RTL_RAM_NAME = "BUFFER/buffer_reg_0_31_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D buffer_reg_0_31_6_7
       (.A0(front_reg[0]),
        .A1(front_reg[1]),
        .A2(front_reg[2]),
        .A3(front_reg[3]),
        .A4(front_reg[4]),
        .D(in_data[5]),
        .DPO(out_data0[6]),
        .DPRA0(back[0]),
        .DPRA1(back[1]),
        .DPRA2(back[2]),
        .DPRA3(back[3]),
        .DPRA4(back[4]),
        .WCLK(clk_IBUF_BUFG),
        .WE(front));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "160" *) 
  (* RTL_RAM_NAME = "BUFFER/buffer_reg_0_31_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "19" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D buffer_reg_0_31_6_7__0
       (.A0(front_reg[0]),
        .A1(front_reg[1]),
        .A2(front_reg[2]),
        .A3(front_reg[3]),
        .A4(front_reg[4]),
        .D(in_data[6]),
        .DPO(out_data0[7]),
        .DPRA0(back[0]),
        .DPRA1(back[1]),
        .DPRA2(back[2]),
        .DPRA3(back[3]),
        .DPRA4(back[4]),
        .WCLK(clk_IBUF_BUFG),
        .WE(front));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA65559)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(incr),
        .I2(decr_reg_n_0),
        .I3(full_reg_n_0),
        .I4(count_reg[1]),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF70008AAAE5551)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(incr),
        .I2(decr_reg_n_0),
        .I3(full_reg_n_0),
        .I4(count_reg[2]),
        .I5(count_reg[1]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \count[3]_i_1 
       (.I0(out_data110_out),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[2]),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \count[4]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(out_data110_out),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .I5(count_reg[3]),
        .O(\count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \count[4]_i_2 
       (.I0(incr),
        .I1(decr_reg_n_0),
        .I2(full_reg_n_0),
        .O(out_data110_out));
  LUT4 #(
    .INIT(16'h0434)) 
    \count[5]_i_1 
       (.I0(full_reg_n_0),
        .I1(incr),
        .I2(decr_reg_n_0),
        .I3(empty_reg_n_0),
        .O(\count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \count[5]_i_2 
       (.I0(count_reg[2]),
        .I1(\count[5]_i_3_n_0 ),
        .I2(count_reg[3]),
        .I3(count_reg[5]),
        .I4(count_reg[4]),
        .O(\count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h545454545454D554)) 
    \count[5]_i_3 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(incr),
        .I4(decr_reg_n_0),
        .I5(full_reg_n_0),
        .O(\count[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[4]_i_1_n_0 ),
        .Q(count_reg[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\count[5]_i_1_n_0 ),
        .D(\count[5]_i_2_n_0 ),
        .Q(count_reg[5]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAA00EE0A)) 
    decr_i_1
       (.I0(decr_reg_n_0),
        .I1(uart_done_to_rx_done),
        .I2(empty_reg_n_0),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .O(decr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    decr_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(decr_i_1_n_0),
        .Q(decr_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA0EEAA)) 
    empty_i_1
       (.I0(empty_reg_n_0),
        .I1(empty_i_2_n_0),
        .I2(full_reg_n_0),
        .I3(decr_reg_n_0),
        .I4(incr),
        .O(empty_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    empty_i_2
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .I5(count_reg[2]),
        .O(empty_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    empty_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(empty_i_1_n_0),
        .Q(empty_reg_n_0),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h0155)) 
    \front[0]_i_1 
       (.I0(front_reg[0]),
        .I1(front_reg[3]),
        .I2(front_reg[2]),
        .I3(front_reg[4]),
        .O(\front[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00066666)) 
    \front[1]_i_1 
       (.I0(front_reg[0]),
        .I1(front_reg[1]),
        .I2(front_reg[3]),
        .I3(front_reg[2]),
        .I4(front_reg[4]),
        .O(\front[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \front[2]_i_1 
       (.I0(front_reg[0]),
        .I1(front_reg[1]),
        .I2(front_reg[2]),
        .I3(front_reg[4]),
        .O(\front[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000078F0)) 
    \front[3]_i_1 
       (.I0(front_reg[0]),
        .I1(front_reg[1]),
        .I2(front_reg[3]),
        .I3(front_reg[2]),
        .I4(front_reg[4]),
        .O(\front[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \front[4]_i_1 
       (.I0(full_reg_n_0),
        .I1(decr_reg_n_0),
        .I2(incr),
        .O(front_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00078000)) 
    \front[4]_i_2 
       (.I0(front_reg[0]),
        .I1(front_reg[1]),
        .I2(front_reg[3]),
        .I3(front_reg[2]),
        .I4(front_reg[4]),
        .O(\front[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \front_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(front_0),
        .D(\front[0]_i_1_n_0 ),
        .Q(front_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \front_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(front_0),
        .D(\front[1]_i_1_n_0 ),
        .Q(front_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \front_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(front_0),
        .D(\front[2]_i_1_n_0 ),
        .Q(front_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \front_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(front_0),
        .D(\front[3]_i_1_n_0 ),
        .Q(front_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \front_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(front_0),
        .D(\front[4]_i_2_n_0 ),
        .Q(front_reg[4]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hFAFF00C0)) 
    full_i_1
       (.I0(empty_reg_n_0),
        .I1(full_i_2_n_0),
        .I2(incr),
        .I3(decr_reg_n_0),
        .I4(full_reg_n_0),
        .O(full_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    full_i_2
       (.I0(count_reg[5]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .I5(count_reg[4]),
        .O(full_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    full_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(full_i_1_n_0),
        .Q(full_reg_n_0),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    incr_i_1
       (.I0(full_reg_n_0),
        .I1(request_buff),
        .I2(tx_state),
        .O(incr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    incr_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(incr_i_1_n_0),
        .Q(incr),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h8888CCCF)) 
    \out_data[7]_i_1 
       (.I0(incr),
        .I1(decr_reg_n_0),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(empty_reg_n_0),
        .O(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(out_data0[0]),
        .Q(out_data[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(out_data0[1]),
        .Q(out_data[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(out_data0[2]),
        .Q(out_data[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(out_data0[3]),
        .Q(out_data[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(out_data0[4]),
        .Q(out_data[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(out_data0[5]),
        .Q(out_data[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(out_data0[6]),
        .Q(out_data[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\out_data[7]_i_1_n_0 ),
        .D(out_data0[7]),
        .Q(out_data[7]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAA00BB0F)) 
    rx_rdy_i_1
       (.I0(rx_rdy_to_uart_start),
        .I1(uart_done_to_rx_done),
        .I2(empty_reg_n_0),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .O(rx_rdy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_rdy_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_rdy_i_1_n_0),
        .Q(rx_rdy_to_uart_start),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0151)) 
    \rx_state[0]_i_1 
       (.I0(rx_state[1]),
        .I1(empty_reg_n_0),
        .I2(rx_state[0]),
        .I3(uart_done_to_rx_done),
        .O(\rx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \rx_state[1]_i_1 
       (.I0(uart_done_to_rx_done),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .O(\rx_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_state[0]_i_1_n_0 ),
        .Q(rx_state[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_state[1]_i_1_n_0 ),
        .Q(rx_state[1]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h00FFE20000FFE2FF)) 
    tx_i_1
       (.I0(tx_i_2_n_0),
        .I1(bit_index[2]),
        .I2(tx_i_3_n_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(rx_rdy_to_uart_start),
        .O(\bit_index_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_2
       (.I0(out_data[3]),
        .I1(out_data[2]),
        .I2(bit_index[1]),
        .I3(out_data[1]),
        .I4(bit_index[0]),
        .I5(out_data[0]),
        .O(tx_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_3
       (.I0(out_data[7]),
        .I1(out_data[6]),
        .I2(bit_index[1]),
        .I3(out_data[5]),
        .I4(bit_index[0]),
        .I5(out_data[4]),
        .O(tx_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    tx_state_i_1
       (.I0(tx_state),
        .I1(request_buff),
        .I2(full_reg_n_0),
        .O(tx_state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_state_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tx_state_i_1_n_0),
        .Q(tx_state),
        .R(\<const0> ));
endmodule

module lfsr
   (in_data,
    \num_out_reg[0]_0 ,
    rst_IBUF,
    clk_IBUF_BUFG);
  output [6:0]in_data;
  output [0:0]\num_out_reg[0]_0 ;
  input rst_IBUF;
  input clk_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire ascii_out1;
  wire ascii_out11_in;
  wire buffer_reg_0_31_0_5_i_10_n_0;
  wire buffer_reg_0_31_0_5_i_11_n_0;
  wire buffer_reg_0_31_0_5_i_12_n_0;
  wire buffer_reg_0_31_0_5_i_13_n_0;
  wire buffer_reg_0_31_6_7_i_2_n_0;
  wire buffer_reg_0_31_6_7_i_3_n_0;
  wire buffer_reg_0_31_6_7_i_4_n_0;
  wire clk_IBUF_BUFG;
  wire [6:0]in_data;
  wire [7:0]num_out;
  wire [0:0]\num_out_reg[0]_0 ;
  wire [6:4]p_7_out;
  wire rst_IBUF;
  wire rst_l;
  wire [7:0]shiftreg;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h8080800000000001)) 
    buffer_reg_0_31_0_5_i_10
       (.I0(ascii_out1),
        .I1(num_out[4]),
        .I2(num_out[2]),
        .I3(num_out[0]),
        .I4(num_out[1]),
        .I5(num_out[3]),
        .O(buffer_reg_0_31_0_5_i_10_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    buffer_reg_0_31_0_5_i_11
       (.I0(num_out[3]),
        .I1(num_out[1]),
        .I2(num_out[0]),
        .I3(num_out[2]),
        .O(buffer_reg_0_31_0_5_i_11_n_0));
  LUT6 #(
    .INIT(64'h57FFFFFEA8000001)) 
    buffer_reg_0_31_0_5_i_12
       (.I0(num_out[2]),
        .I1(num_out[0]),
        .I2(num_out[1]),
        .I3(num_out[3]),
        .I4(ascii_out1),
        .I5(num_out[4]),
        .O(buffer_reg_0_31_0_5_i_12_n_0));
  LUT6 #(
    .INIT(64'h0111111111111111)) 
    buffer_reg_0_31_0_5_i_13
       (.I0(num_out[5]),
        .I1(num_out[7]),
        .I2(num_out[3]),
        .I3(num_out[4]),
        .I4(num_out[1]),
        .I5(num_out[2]),
        .O(buffer_reg_0_31_0_5_i_13_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    buffer_reg_0_31_0_5_i_2
       (.I0(ascii_out11_in),
        .I1(num_out[1]),
        .I2(num_out[0]),
        .O(in_data[0]));
  LUT1 #(
    .INIT(2'h1)) 
    buffer_reg_0_31_0_5_i_3
       (.I0(num_out[0]),
        .O(\num_out_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h1ED2D2F0F0F0F0E1)) 
    buffer_reg_0_31_0_5_i_4
       (.I0(ascii_out1),
        .I1(ascii_out11_in),
        .I2(num_out[3]),
        .I3(num_out[1]),
        .I4(num_out[0]),
        .I5(num_out[2]),
        .O(in_data[2]));
  LUT5 #(
    .INIT(32'h78781EE1)) 
    buffer_reg_0_31_0_5_i_5
       (.I0(num_out[1]),
        .I1(num_out[0]),
        .I2(num_out[2]),
        .I3(ascii_out1),
        .I4(ascii_out11_in),
        .O(in_data[1]));
  LUT5 #(
    .INIT(32'hD1112EEE)) 
    buffer_reg_0_31_0_5_i_6
       (.I0(buffer_reg_0_31_0_5_i_10_n_0),
        .I1(ascii_out11_in),
        .I2(buffer_reg_0_31_0_5_i_11_n_0),
        .I3(num_out[4]),
        .I4(num_out[5]),
        .O(in_data[4]));
  LUT4 #(
    .INIT(16'h2EE2)) 
    buffer_reg_0_31_0_5_i_7
       (.I0(buffer_reg_0_31_0_5_i_12_n_0),
        .I1(ascii_out11_in),
        .I2(num_out[4]),
        .I3(buffer_reg_0_31_0_5_i_11_n_0),
        .O(in_data[3]));
  LUT3 #(
    .INIT(8'hAB)) 
    buffer_reg_0_31_0_5_i_8
       (.I0(buffer_reg_0_31_0_5_i_13_n_0),
        .I1(num_out[6]),
        .I2(num_out[7]),
        .O(ascii_out11_in));
  LUT6 #(
    .INIT(64'h00007FFFFFFFFFFF)) 
    buffer_reg_0_31_0_5_i_9
       (.I0(num_out[3]),
        .I1(num_out[2]),
        .I2(num_out[5]),
        .I3(num_out[4]),
        .I4(num_out[6]),
        .I5(num_out[7]),
        .O(ascii_out1));
  LUT6 #(
    .INIT(64'h00000000A5A5959A)) 
    buffer_reg_0_31_6_7__0_i_1
       (.I0(num_out[7]),
        .I1(buffer_reg_0_31_6_7_i_2_n_0),
        .I2(ascii_out1),
        .I3(buffer_reg_0_31_6_7_i_3_n_0),
        .I4(num_out[6]),
        .I5(ascii_out11_in),
        .O(in_data[6]));
  LUT6 #(
    .INIT(64'hFF00B8B800FF4747)) 
    buffer_reg_0_31_6_7_i_1
       (.I0(buffer_reg_0_31_6_7_i_2_n_0),
        .I1(ascii_out1),
        .I2(buffer_reg_0_31_6_7_i_3_n_0),
        .I3(buffer_reg_0_31_6_7_i_4_n_0),
        .I4(ascii_out11_in),
        .I5(num_out[6]),
        .O(in_data[5]));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    buffer_reg_0_31_6_7_i_2
       (.I0(num_out[5]),
        .I1(num_out[3]),
        .I2(num_out[0]),
        .I3(num_out[1]),
        .I4(num_out[2]),
        .I5(num_out[4]),
        .O(buffer_reg_0_31_6_7_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    buffer_reg_0_31_6_7_i_3
       (.I0(num_out[4]),
        .I1(num_out[2]),
        .I2(num_out[0]),
        .I3(num_out[1]),
        .I4(num_out[3]),
        .I5(num_out[5]),
        .O(buffer_reg_0_31_6_7_i_3_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    buffer_reg_0_31_6_7_i_4
       (.I0(num_out[3]),
        .I1(num_out[1]),
        .I2(num_out[0]),
        .I3(num_out[2]),
        .I4(num_out[4]),
        .I5(num_out[5]),
        .O(buffer_reg_0_31_6_7_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \num_out[7]_i_1 
       (.I0(rst_IBUF),
        .O(rst_l));
  FDRE #(
    .INIT(1'b0)) 
    \num_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_l),
        .D(shiftreg[0]),
        .Q(num_out[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \num_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_l),
        .D(shiftreg[1]),
        .Q(num_out[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \num_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_l),
        .D(shiftreg[2]),
        .Q(num_out[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \num_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_l),
        .D(shiftreg[3]),
        .Q(num_out[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \num_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_l),
        .D(shiftreg[4]),
        .Q(num_out[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \num_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_l),
        .D(shiftreg[5]),
        .Q(num_out[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \num_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_l),
        .D(shiftreg[6]),
        .Q(num_out[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \num_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rst_l),
        .D(shiftreg[7]),
        .Q(num_out[7]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \shiftreg[4]_i_1 
       (.I0(shiftreg[0]),
        .I1(shiftreg[5]),
        .O(p_7_out[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \shiftreg[5]_i_1 
       (.I0(shiftreg[0]),
        .I1(shiftreg[6]),
        .O(p_7_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \shiftreg[6]_i_1 
       (.I0(shiftreg[0]),
        .I1(shiftreg[7]),
        .O(p_7_out[6]));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(shiftreg[1]),
        .Q(shiftreg[0]),
        .R(rst_IBUF));
  FDSE #(
    .INIT(1'b0)) 
    \shiftreg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(shiftreg[2]),
        .Q(shiftreg[1]),
        .S(rst_IBUF));
  FDRE #(
    .INIT(1'b1)) 
    \shiftreg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(shiftreg[3]),
        .Q(shiftreg[2]),
        .R(rst_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \shiftreg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(shiftreg[4]),
        .Q(shiftreg[3]),
        .S(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_7_out[4]),
        .Q(shiftreg[4]),
        .R(rst_IBUF));
  FDSE #(
    .INIT(1'b0)) 
    \shiftreg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_7_out[5]),
        .Q(shiftreg[5]),
        .S(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_7_out[6]),
        .Q(shiftreg[6]),
        .R(rst_IBUF));
  FDSE #(
    .INIT(1'b0)) 
    \shiftreg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(shiftreg[0]),
        .Q(shiftreg[7]),
        .S(rst_IBUF));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    rst,
    request_char,
    s_out);
  input clk;
  input rst;
  input request_char;
  output s_out;

  wire \<const0> ;
  wire \<const1> ;
  wire BUFFER_n_1;
  wire [0:0]ascii_out0;
  wire [2:0]bit_index;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:1]in_data;
  wire request_buff;
  wire request_buff_i_1_n_0;
  wire request_char;
  wire request_char_IBUF;
  wire rst;
  wire rst_IBUF;
  wire rx_rdy_to_uart_start;
  wire s_out;
  wire s_out_OBUF;
  wire [1:0]state;
  wire uart_done_to_rx_done;

  fifo BUFFER
       (.bit_index(bit_index),
        .\bit_index_reg[2] (BUFFER_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in_data(in_data),
        .\out_data_reg[1]_0 (ascii_out0),
        .request_buff(request_buff),
        .rx_rdy_to_uart_start(rx_rdy_to_uart_start),
        .state(state),
        .uart_done_to_rx_done(uart_done_to_rx_done));
  GND GND
       (.G(\<const0> ));
  lfsr RAND
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in_data(in_data),
        .\num_out_reg[0]_0 (ascii_out0),
        .rst_IBUF(rst_IBUF));
  uart_tx UART
       (.bit_index(bit_index),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .rx_rdy_to_uart_start(rx_rdy_to_uart_start),
        .s_out_OBUF(s_out_OBUF),
        .state(state),
        .tx_reg_0(BUFFER_n_1),
        .uart_done_to_rx_done(uart_done_to_rx_done));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    request_buff_i_1
       (.I0(request_char_IBUF),
        .I1(request_buff),
        .O(request_buff_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    request_buff_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(request_buff_i_1_n_0),
        .Q(request_buff),
        .R(\<const0> ));
  IBUF request_char_IBUF_inst
       (.I(request_char),
        .O(request_char_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF s_out_OBUF_inst
       (.I(s_out_OBUF),
        .O(s_out));
endmodule

module uart_tx
   (uart_done_to_rx_done,
    s_out_OBUF,
    bit_index,
    state,
    clk_IBUF_BUFG,
    rst_IBUF,
    tx_reg_0,
    rx_rdy_to_uart_start);
  output uart_done_to_rx_done;
  output s_out_OBUF;
  output [2:0]bit_index;
  output [1:0]state;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input tx_reg_0;
  input rx_rdy_to_uart_start;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire [2:0]bit_index;
  wire \bit_index[0]_i_1_n_0 ;
  wire \bit_index[1]_i_1_n_0 ;
  wire \bit_index[1]_i_2_n_0 ;
  wire \bit_index[2]_i_1_n_0 ;
  wire \bit_index[2]_i_2_n_0 ;
  wire \bit_index[2]_i_3_n_0 ;
  wire \bit_index[2]_i_4_n_0 ;
  wire clk_IBUF_BUFG;
  wire div_clk;
  wire done_i_1_n_0;
  wire rst_IBUF;
  wire rx_rdy_to_uart_start;
  wire s_out_OBUF;
  wire [1:0]state;
  wire tx_reg_0;
  wire uart_done_to_rx_done;

  LUT5 #(
    .INIT(32'h00003120)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(rx_rdy_to_uart_start),
        .I4(rst_IBUF),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000858)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(rx_rdy_to_uart_start),
        .I2(state[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(rst_IBUF),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(bit_index[2]),
        .I1(bit_index[1]),
        .I2(bit_index[0]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "SEND:01,WAIT:00,STOP:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(div_clk),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "SEND:01,WAIT:00,STOP:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(div_clk),
        .CE(\<const1> ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h4544455510001000)) 
    \bit_index[0]_i_1 
       (.I0(rst_IBUF),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state[0]),
        .I4(rx_rdy_to_uart_start),
        .I5(bit_index[0]),
        .O(\bit_index[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0EFF0E00)) 
    \bit_index[1]_i_1 
       (.I0(\bit_index[1]_i_2_n_0 ),
        .I1(\bit_index[2]_i_3_n_0 ),
        .I2(rst_IBUF),
        .I3(\bit_index[2]_i_4_n_0 ),
        .I4(bit_index[1]),
        .O(\bit_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00003CBC00FF0000)) 
    \bit_index[1]_i_2 
       (.I0(bit_index[2]),
        .I1(bit_index[1]),
        .I2(bit_index[0]),
        .I3(rst_IBUF),
        .I4(state[1]),
        .I5(state[0]),
        .O(\bit_index[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0EFF0E00)) 
    \bit_index[2]_i_1 
       (.I0(\bit_index[2]_i_2_n_0 ),
        .I1(\bit_index[2]_i_3_n_0 ),
        .I2(rst_IBUF),
        .I3(\bit_index[2]_i_4_n_0 ),
        .I4(bit_index[2]),
        .O(\bit_index[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00006AEA00FF0000)) 
    \bit_index[2]_i_2 
       (.I0(bit_index[2]),
        .I1(bit_index[1]),
        .I2(bit_index[0]),
        .I3(rst_IBUF),
        .I4(state[1]),
        .I5(state[0]),
        .O(\bit_index[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \bit_index[2]_i_3 
       (.I0(rst_IBUF),
        .I1(rx_rdy_to_uart_start),
        .I2(state[1]),
        .I3(state[0]),
        .O(\bit_index[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \bit_index[2]_i_4 
       (.I0(rst_IBUF),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state[0]),
        .I4(rx_rdy_to_uart_start),
        .O(\bit_index[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[0] 
       (.C(div_clk),
        .CE(\<const1> ),
        .D(\bit_index[0]_i_1_n_0 ),
        .Q(bit_index[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[1] 
       (.C(div_clk),
        .CE(\<const1> ),
        .D(\bit_index[1]_i_1_n_0 ),
        .Q(bit_index[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[2] 
       (.C(div_clk),
        .CE(\<const1> ),
        .D(\bit_index[2]_i_1_n_0 ),
        .Q(bit_index[2]),
        .R(\<const0> ));
  clock_divider clk_div
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .div_clk(div_clk),
        .rst_IBUF(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h55441000)) 
    done_i_1
       (.I0(rst_IBUF),
        .I1(state[0]),
        .I2(state[1]),
        .I3(rx_rdy_to_uart_start),
        .I4(uart_done_to_rx_done),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(div_clk),
        .CE(\<const1> ),
        .D(done_i_1_n_0),
        .Q(uart_done_to_rx_done),
        .R(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    tx_reg
       (.C(div_clk),
        .CE(\<const1> ),
        .D(tx_reg_0),
        .Q(s_out_OBUF),
        .S(rst_IBUF));
endmodule
