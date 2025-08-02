// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Apr 16 03:14:26 2025
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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

(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    rst,
    tx,
    send);
  input clk;
  input rst;
  output tx;
  input send;

  wire \<const1> ;
  wire UART1_n_1;
  wire UART1_n_2;
  wire UART1_n_3;
  wire UART1_n_5;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]d_out;
  wire [3:0]message;
  wire msg_count13_out;
  wire \msg_count_reg_n_0_[0] ;
  wire \msg_count_reg_n_0_[1] ;
  wire \msg_count_reg_n_0_[2] ;
  wire rst;
  wire rst_IBUF;
  wire send;
  wire send_IBUF;
  wire start_reg_n_0;
  wire tx;
  wire tx_OBUF;

  uart_tx UART1
       (.E(msg_count13_out),
        .\FSM_sequential_state_reg[1]_0 (start_reg_n_0),
        .Q(d_out),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\msg_count_reg[0] (UART1_n_1),
        .\msg_count_reg[0]_0 (UART1_n_2),
        .\msg_count_reg[0]_1 (UART1_n_3),
        .\msg_count_reg[0]_2 (UART1_n_5),
        .\msg_count_reg[2] (\msg_count_reg_n_0_[0] ),
        .\msg_count_reg[2]_0 (\msg_count_reg_n_0_[1] ),
        .\msg_count_reg[2]_1 (\msg_count_reg_n_0_[2] ),
        .rst_IBUF(rst_IBUF),
        .send_IBUF(send_IBUF),
        .tx_OBUF(tx_OBUF));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \d_out[0]_i_1 
       (.I0(\msg_count_reg_n_0_[2] ),
        .I1(\msg_count_reg_n_0_[1] ),
        .I2(\msg_count_reg_n_0_[0] ),
        .O(message[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \d_out[2]_i_1 
       (.I0(\msg_count_reg_n_0_[2] ),
        .I1(\msg_count_reg_n_0_[0] ),
        .I2(\msg_count_reg_n_0_[1] ),
        .O(message[2]));
  LUT3 #(
    .INIT(8'hFB)) 
    \d_out[3]_i_2 
       (.I0(\msg_count_reg_n_0_[2] ),
        .I1(\msg_count_reg_n_0_[0] ),
        .I2(\msg_count_reg_n_0_[1] ),
        .O(message[3]));
  FDCE \d_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(msg_count13_out),
        .CLR(rst_IBUF),
        .D(message[0]),
        .Q(d_out[0]));
  FDCE \d_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(msg_count13_out),
        .CLR(rst_IBUF),
        .D(\msg_count_reg_n_0_[2] ),
        .Q(d_out[1]));
  FDCE \d_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(msg_count13_out),
        .CLR(rst_IBUF),
        .D(message[2]),
        .Q(d_out[2]));
  FDPE \d_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(msg_count13_out),
        .D(message[3]),
        .PRE(rst_IBUF),
        .Q(d_out[3]));
  FDCE \msg_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(UART1_n_2),
        .Q(\msg_count_reg_n_0_[0] ));
  FDCE \msg_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(UART1_n_3),
        .Q(\msg_count_reg_n_0_[1] ));
  FDCE \msg_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(UART1_n_1),
        .Q(\msg_count_reg_n_0_[2] ));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF send_IBUF_inst
       (.I(send),
        .O(send_IBUF));
  FDCE start_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(UART1_n_5),
        .Q(start_reg_n_0));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
endmodule

module uart_tx
   (tx_OBUF,
    \msg_count_reg[0] ,
    \msg_count_reg[0]_0 ,
    \msg_count_reg[0]_1 ,
    E,
    \msg_count_reg[0]_2 ,
    clk_IBUF_BUFG,
    rst_IBUF,
    \msg_count_reg[2] ,
    \msg_count_reg[2]_0 ,
    \msg_count_reg[2]_1 ,
    \FSM_sequential_state_reg[1]_0 ,
    send_IBUF,
    Q);
  output tx_OBUF;
  output \msg_count_reg[0] ;
  output \msg_count_reg[0]_0 ;
  output \msg_count_reg[0]_1 ;
  output [0:0]E;
  output \msg_count_reg[0]_2 ;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \msg_count_reg[2] ;
  input \msg_count_reg[2]_0 ;
  input \msg_count_reg[2]_1 ;
  input \FSM_sequential_state_reg[1]_0 ;
  input send_IBUF;
  input [3:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [3:0]Q;
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
  wire done;
  wire done_i_1_n_0;
  wire \msg_count_reg[0] ;
  wire \msg_count_reg[0]_0 ;
  wire \msg_count_reg[0]_1 ;
  wire \msg_count_reg[0]_2 ;
  wire \msg_count_reg[2] ;
  wire \msg_count_reg[2]_0 ;
  wire \msg_count_reg[2]_1 ;
  wire rst_IBUF;
  wire send_IBUF;
  wire [1:0]state;
  wire tx_OBUF;
  wire tx_i_1_n_0;
  wire tx_i_2_n_0;
  wire tx_i_3_n_0;

  LUT5 #(
    .INIT(32'h00003120)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(rst_IBUF),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000858)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(state[0]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(rst_IBUF),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
        .I4(\FSM_sequential_state_reg[1]_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \bit_index[2]_i_3 
       (.I0(rst_IBUF),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(state[1]),
        .I3(state[0]),
        .O(\bit_index[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    \bit_index[2]_i_4 
       (.I0(rst_IBUF),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(state[0]),
        .I4(\FSM_sequential_state_reg[1]_0 ),
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
  LUT3 #(
    .INIT(8'h02)) 
    \d_out[3]_i_1 
       (.I0(send_IBUF),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(done),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h55441000)) 
    done_i_1
       (.I0(rst_IBUF),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(done),
        .O(done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(div_clk),
        .CE(\<const1> ),
        .D(done_i_1_n_0),
        .Q(done),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \msg_count[0]_i_1 
       (.I0(\msg_count_reg[2] ),
        .I1(\msg_count_reg[2]_1 ),
        .I2(done),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\msg_count_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC6CCCCCC)) 
    \msg_count[1]_i_1 
       (.I0(\msg_count_reg[2] ),
        .I1(\msg_count_reg[2]_0 ),
        .I2(\msg_count_reg[2]_1 ),
        .I3(done),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .O(\msg_count_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hF8F0F0F0E8F0F0F0)) 
    \msg_count[2]_i_1 
       (.I0(\msg_count_reg[2] ),
        .I1(\msg_count_reg[2]_0 ),
        .I2(\msg_count_reg[2]_1 ),
        .I3(done),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(send_IBUF),
        .O(\msg_count_reg[0] ));
  LUT6 #(
    .INIT(64'hF0FF00FFE0FF0000)) 
    start_i_1
       (.I0(\msg_count_reg[2] ),
        .I1(\msg_count_reg[2]_0 ),
        .I2(\msg_count_reg[2]_1 ),
        .I3(done),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(send_IBUF),
        .O(\msg_count_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h00FFE20000FFE2FF)) 
    tx_i_1
       (.I0(tx_i_2_n_0),
        .I1(bit_index[2]),
        .I2(tx_i_3_n_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\FSM_sequential_state_reg[1]_0 ),
        .O(tx_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(bit_index[1]),
        .I3(Q[1]),
        .I4(bit_index[0]),
        .I5(Q[0]),
        .O(tx_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    tx_i_3
       (.I0(bit_index[1]),
        .I1(bit_index[0]),
        .O(tx_i_3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    tx_reg
       (.C(div_clk),
        .CE(\<const1> ),
        .D(tx_i_1_n_0),
        .Q(tx_OBUF),
        .S(rst_IBUF));
endmodule
