// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Thu Jul 15 12:00:16 2021
// Host        : DESKTOP-92AEKAJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/aaron/Desktop/git_article/RTL/bestAlgorithm_RTL/bestAlgorithm_RTL.srcs/sources_1/ip/bubbleSort_0/bubbleSort_0_sim_netlist.v
// Design      : bubbleSort_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bubbleSort_0,bubbleSort,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bubbleSort,Vivado 2016.1" *) 
(* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bubbleSort_0
   (A_ce0,
    A_we0,
    A_ce1,
    A_we1,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    ap_return,
    indexOutputData,
    operation_V,
    A_address0,
    A_d0,
    A_q0,
    A_address1,
    A_d1,
    A_q1);
  output A_ce0;
  output A_we0;
  output A_ce1;
  output A_we1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ap_return DATA" *) output [15:0]ap_return;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 indexOutputData DATA" *) input [7:0]indexOutputData;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 operation_V DATA" *) input [0:0]operation_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_address0 DATA" *) output [1:0]A_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_d0 DATA" *) output [15:0]A_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_q0 DATA" *) input [15:0]A_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_address1 DATA" *) output [1:0]A_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_d1 DATA" *) output [15:0]A_d1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_q1 DATA" *) input [15:0]A_q1;

  wire [1:0]A_address0;
  wire [1:0]A_address1;
  wire A_ce0;
  wire A_ce1;
  wire [15:0]A_d0;
  wire [15:0]A_d1;
  wire [15:0]A_q0;
  wire [15:0]A_q1;
  wire A_we0;
  wire A_we1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire [15:0]ap_return;
  wire ap_rst;
  wire ap_start;
  wire [7:0]indexOutputData;
  wire [0:0]operation_V;

  (* ap_ST_st1_fsm_0 = "4'b0001" *) 
  (* ap_ST_st2_fsm_1 = "4'b0010" *) 
  (* ap_ST_st3_fsm_2 = "4'b0100" *) 
  (* ap_ST_st4_fsm_3 = "4'b1000" *) 
  (* ap_const_lv16_0 = "16'b0000000000000000" *) 
  (* ap_const_lv2_0 = "2'b00" *) 
  (* ap_const_lv2_1 = "2'b01" *) 
  (* ap_const_lv32_0 = "0" *) 
  (* ap_const_lv32_1 = "1" *) 
  (* ap_const_lv32_2 = "2" *) 
  (* ap_const_lv32_3 = "3" *) 
  (* ap_const_lv3_3 = "3'b011" *) 
  (* ap_const_lv3_7 = "3'b111" *) 
  bubbleSort_0_bubbleSort inst
       (.A_address0(A_address0),
        .A_address1(A_address1),
        .A_ce0(A_ce0),
        .A_ce1(A_ce1),
        .A_d0(A_d0),
        .A_d1(A_d1),
        .A_q0(A_q0),
        .A_q1(A_q1),
        .A_we0(A_we0),
        .A_we1(A_we1),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .indexOutputData(indexOutputData),
        .operation_V(operation_V));
endmodule

(* ORIG_REF_NAME = "bubbleSort" *) (* ap_ST_st1_fsm_0 = "4'b0001" *) (* ap_ST_st2_fsm_1 = "4'b0010" *) 
(* ap_ST_st3_fsm_2 = "4'b0100" *) (* ap_ST_st4_fsm_3 = "4'b1000" *) (* ap_const_lv16_0 = "16'b0000000000000000" *) 
(* ap_const_lv2_0 = "2'b00" *) (* ap_const_lv2_1 = "2'b01" *) (* ap_const_lv32_0 = "0" *) 
(* ap_const_lv32_1 = "1" *) (* ap_const_lv32_2 = "2" *) (* ap_const_lv32_3 = "3" *) 
(* ap_const_lv3_3 = "3'b011" *) (* ap_const_lv3_7 = "3'b111" *) (* hls_module = "yes" *) 
module bubbleSort_0_bubbleSort
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    indexOutputData,
    operation_V,
    A_address0,
    A_ce0,
    A_we0,
    A_d0,
    A_q0,
    A_address1,
    A_ce1,
    A_we1,
    A_d1,
    A_q1,
    ap_return);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [7:0]indexOutputData;
  input [0:0]operation_V;
  output [1:0]A_address0;
  output A_ce0;
  output A_we0;
  output [15:0]A_d0;
  input [15:0]A_q0;
  output [1:0]A_address1;
  output A_ce1;
  output A_we1;
  output [15:0]A_d1;
  input [15:0]A_q1;
  output [15:0]ap_return;

  wire \<const0> ;
  wire [1:0]A_addr_1_reg_156;
  wire [1:0]A_addr_reg_151;
  wire [1:0]A_address0;
  wire [1:0]A_address1;
  wire A_ce0;
  wire [15:0]A_q0;
  wire [15:0]A_q1;
  wire A_we0;
  wire A_we1_INST_0_i_10_n_0;
  wire A_we1_INST_0_i_11_n_0;
  wire A_we1_INST_0_i_12_n_0;
  wire A_we1_INST_0_i_13_n_0;
  wire A_we1_INST_0_i_14_n_0;
  wire A_we1_INST_0_i_15_n_0;
  wire A_we1_INST_0_i_16_n_0;
  wire A_we1_INST_0_i_17_n_0;
  wire A_we1_INST_0_i_18_n_0;
  wire A_we1_INST_0_i_1_n_1;
  wire A_we1_INST_0_i_1_n_2;
  wire A_we1_INST_0_i_1_n_3;
  wire A_we1_INST_0_i_2_n_0;
  wire A_we1_INST_0_i_2_n_1;
  wire A_we1_INST_0_i_2_n_2;
  wire A_we1_INST_0_i_2_n_3;
  wire A_we1_INST_0_i_3_n_0;
  wire A_we1_INST_0_i_4_n_0;
  wire A_we1_INST_0_i_5_n_0;
  wire A_we1_INST_0_i_6_n_0;
  wire A_we1_INST_0_i_7_n_0;
  wire A_we1_INST_0_i_8_n_0;
  wire A_we1_INST_0_i_9_n_0;
  wire \ap_CS_fsm[3]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [2:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst;
  wire ap_sig_54;
  wire ap_sig_80;
  wire ap_sig_88;
  wire ap_start;
  wire exitcond_i_fu_102_p2;
  wire [2:2]indvars_iv_i_reg_67;
  wire indvars_iv_i_reg_6700_out;
  wire \indvars_iv_i_reg_67[0]_i_1_n_0 ;
  wire \indvars_iv_i_reg_67[1]_i_1_n_0 ;
  wire \indvars_iv_i_reg_67[2]_i_1_n_0 ;
  wire \indvars_iv_i_reg_67[2]_i_3_n_0 ;
  wire [1:0]indvars_iv_i_reg_67__0;
  wire [1:0]j_i_reg_79;
  wire \j_i_reg_79[0]_i_1_n_0 ;
  wire \j_i_reg_79[1]_i_1_n_0 ;
  wire [1:0]j_reg_146;
  wire \j_reg_146[0]_i_1_n_0 ;
  wire \j_reg_146[1]_i_1_n_0 ;
  wire [0:0]operation_V;
  wire [1:0]tmp_5_i_fu_119_p1;
  wire tmp_6_i_fu_130_p2;
  wire [3:0]NLW_A_we1_INST_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_A_we1_INST_0_i_2_O_UNCONNECTED;

  assign A_ce1 = A_ce0;
  assign A_d0[15:0] = A_q1;
  assign A_d1[15:0] = A_q0;
  assign A_we1 = A_we0;
  assign ap_ready = ap_done;
  assign ap_return[15] = \<const0> ;
  assign ap_return[14] = \<const0> ;
  assign ap_return[13] = \<const0> ;
  assign ap_return[12] = \<const0> ;
  assign ap_return[11] = \<const0> ;
  assign ap_return[10] = \<const0> ;
  assign ap_return[9] = \<const0> ;
  assign ap_return[8] = \<const0> ;
  assign ap_return[7] = \<const0> ;
  assign ap_return[6] = \<const0> ;
  assign ap_return[5] = \<const0> ;
  assign ap_return[4] = \<const0> ;
  assign ap_return[3] = \<const0> ;
  assign ap_return[2] = \<const0> ;
  assign ap_return[1] = \<const0> ;
  assign ap_return[0] = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \A_addr_1_reg_156[0]_i_1 
       (.I0(j_i_reg_79[0]),
        .O(tmp_5_i_fu_119_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \A_addr_1_reg_156[1]_i_1 
       (.I0(j_i_reg_79[0]),
        .I1(j_i_reg_79[1]),
        .O(tmp_5_i_fu_119_p1[1]));
  FDRE \A_addr_1_reg_156_reg[0] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm[3]_i_1_n_0 ),
        .D(tmp_5_i_fu_119_p1[0]),
        .Q(A_addr_1_reg_156[0]),
        .R(1'b0));
  FDRE \A_addr_1_reg_156_reg[1] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm[3]_i_1_n_0 ),
        .D(tmp_5_i_fu_119_p1[1]),
        .Q(A_addr_1_reg_156[1]),
        .R(1'b0));
  FDRE \A_addr_reg_151_reg[0] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm[3]_i_1_n_0 ),
        .D(j_i_reg_79[0]),
        .Q(A_addr_reg_151[0]),
        .R(1'b0));
  FDRE \A_addr_reg_151_reg[1] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm[3]_i_1_n_0 ),
        .D(j_i_reg_79[1]),
        .Q(A_addr_reg_151[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_address0[0]_INST_0 
       (.I0(A_addr_reg_151[0]),
        .I1(ap_sig_80),
        .I2(j_i_reg_79[0]),
        .O(A_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A_address0[1]_INST_0 
       (.I0(A_addr_reg_151[1]),
        .I1(ap_sig_80),
        .I2(j_i_reg_79[1]),
        .O(A_address0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \A_address1[0]_INST_0 
       (.I0(A_addr_1_reg_156[0]),
        .I1(ap_sig_80),
        .I2(j_i_reg_79[0]),
        .O(A_address1[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \A_address1[1]_INST_0 
       (.I0(A_addr_1_reg_156[1]),
        .I1(ap_sig_80),
        .I2(j_i_reg_79[0]),
        .I3(j_i_reg_79[1]),
        .O(A_address1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    A_ce1_INST_0
       (.I0(ap_sig_54),
        .I1(ap_sig_80),
        .O(A_ce0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    A_we1_INST_0
       (.I0(ap_sig_80),
        .I1(tmp_6_i_fu_130_p2),
        .O(A_we0));
  CARRY4 A_we1_INST_0_i_1
       (.CI(A_we1_INST_0_i_2_n_0),
        .CO({tmp_6_i_fu_130_p2,A_we1_INST_0_i_1_n_1,A_we1_INST_0_i_1_n_2,A_we1_INST_0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({A_we1_INST_0_i_3_n_0,A_we1_INST_0_i_4_n_0,A_we1_INST_0_i_5_n_0,A_we1_INST_0_i_6_n_0}),
        .O(NLW_A_we1_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({A_we1_INST_0_i_7_n_0,A_we1_INST_0_i_8_n_0,A_we1_INST_0_i_9_n_0,A_we1_INST_0_i_10_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    A_we1_INST_0_i_10
       (.I0(A_q0[8]),
        .I1(A_q1[8]),
        .I2(A_q0[9]),
        .I3(A_q1[9]),
        .O(A_we1_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    A_we1_INST_0_i_11
       (.I0(A_q0[6]),
        .I1(A_q1[6]),
        .I2(A_q1[7]),
        .I3(A_q0[7]),
        .O(A_we1_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    A_we1_INST_0_i_12
       (.I0(A_q0[4]),
        .I1(A_q1[4]),
        .I2(A_q1[5]),
        .I3(A_q0[5]),
        .O(A_we1_INST_0_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    A_we1_INST_0_i_13
       (.I0(A_q0[2]),
        .I1(A_q1[2]),
        .I2(A_q1[3]),
        .I3(A_q0[3]),
        .O(A_we1_INST_0_i_13_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    A_we1_INST_0_i_14
       (.I0(A_q0[0]),
        .I1(A_q1[0]),
        .I2(A_q1[1]),
        .I3(A_q0[1]),
        .O(A_we1_INST_0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    A_we1_INST_0_i_15
       (.I0(A_q0[6]),
        .I1(A_q1[6]),
        .I2(A_q0[7]),
        .I3(A_q1[7]),
        .O(A_we1_INST_0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    A_we1_INST_0_i_16
       (.I0(A_q0[4]),
        .I1(A_q1[4]),
        .I2(A_q0[5]),
        .I3(A_q1[5]),
        .O(A_we1_INST_0_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    A_we1_INST_0_i_17
       (.I0(A_q0[2]),
        .I1(A_q1[2]),
        .I2(A_q0[3]),
        .I3(A_q1[3]),
        .O(A_we1_INST_0_i_17_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    A_we1_INST_0_i_18
       (.I0(A_q0[0]),
        .I1(A_q1[0]),
        .I2(A_q0[1]),
        .I3(A_q1[1]),
        .O(A_we1_INST_0_i_18_n_0));
  CARRY4 A_we1_INST_0_i_2
       (.CI(1'b0),
        .CO({A_we1_INST_0_i_2_n_0,A_we1_INST_0_i_2_n_1,A_we1_INST_0_i_2_n_2,A_we1_INST_0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({A_we1_INST_0_i_11_n_0,A_we1_INST_0_i_12_n_0,A_we1_INST_0_i_13_n_0,A_we1_INST_0_i_14_n_0}),
        .O(NLW_A_we1_INST_0_i_2_O_UNCONNECTED[3:0]),
        .S({A_we1_INST_0_i_15_n_0,A_we1_INST_0_i_16_n_0,A_we1_INST_0_i_17_n_0,A_we1_INST_0_i_18_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    A_we1_INST_0_i_3
       (.I0(A_q0[14]),
        .I1(A_q1[14]),
        .I2(A_q0[15]),
        .I3(A_q1[15]),
        .O(A_we1_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    A_we1_INST_0_i_4
       (.I0(A_q0[12]),
        .I1(A_q1[12]),
        .I2(A_q1[13]),
        .I3(A_q0[13]),
        .O(A_we1_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    A_we1_INST_0_i_5
       (.I0(A_q0[10]),
        .I1(A_q1[10]),
        .I2(A_q1[11]),
        .I3(A_q0[11]),
        .O(A_we1_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    A_we1_INST_0_i_6
       (.I0(A_q0[8]),
        .I1(A_q1[8]),
        .I2(A_q1[9]),
        .I3(A_q0[9]),
        .O(A_we1_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    A_we1_INST_0_i_7
       (.I0(A_q0[14]),
        .I1(A_q1[14]),
        .I2(A_q1[15]),
        .I3(A_q0[15]),
        .O(A_we1_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    A_we1_INST_0_i_8
       (.I0(A_q0[12]),
        .I1(A_q1[12]),
        .I2(A_q0[13]),
        .I3(A_q1[13]),
        .O(A_we1_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    A_we1_INST_0_i_9
       (.I0(A_q0[10]),
        .I1(A_q1[10]),
        .I2(A_q0[11]),
        .I3(A_q1[11]),
        .O(A_we1_INST_0_i_9_n_0));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(operation_V),
        .I3(indvars_iv_i_reg_67),
        .I4(ap_sig_88),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(exitcond_i_fu_102_p2),
        .I3(ap_sig_54),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h09000009)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(j_i_reg_79[0]),
        .I1(indvars_iv_i_reg_67__0[0]),
        .I2(indvars_iv_i_reg_67),
        .I3(indvars_iv_i_reg_67__0[1]),
        .I4(j_i_reg_79[1]),
        .O(exitcond_i_fu_102_p2));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(operation_V),
        .I1(indvars_iv_i_reg_67),
        .I2(ap_sig_88),
        .I3(ap_sig_80),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'hAA28AAAAAAAAAA28)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_sig_54),
        .I1(j_i_reg_79[1]),
        .I2(indvars_iv_i_reg_67__0[1]),
        .I3(indvars_iv_i_reg_67),
        .I4(indvars_iv_i_reg_67__0[0]),
        .I5(j_i_reg_79[0]),
        .O(\ap_CS_fsm[3]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_sig_88),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_sig_54),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[3]_i_1_n_0 ),
        .Q(ap_sig_80),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    ap_ready_INST_0
       (.I0(ap_sig_88),
        .I1(indvars_iv_i_reg_67),
        .I2(operation_V),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6F666666)) 
    \indvars_iv_i_reg_67[0]_i_1 
       (.I0(indvars_iv_i_reg_67__0[0]),
        .I1(indvars_iv_i_reg_6700_out),
        .I2(operation_V),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_start),
        .O(\indvars_iv_i_reg_67[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6FFA6A6A6A6A6A6)) 
    \indvars_iv_i_reg_67[1]_i_1 
       (.I0(indvars_iv_i_reg_67__0[1]),
        .I1(indvars_iv_i_reg_6700_out),
        .I2(indvars_iv_i_reg_67__0[0]),
        .I3(operation_V),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .I5(ap_start),
        .O(\indvars_iv_i_reg_67[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAA6)) 
    \indvars_iv_i_reg_67[2]_i_1 
       (.I0(indvars_iv_i_reg_67),
        .I1(indvars_iv_i_reg_6700_out),
        .I2(indvars_iv_i_reg_67__0[0]),
        .I3(indvars_iv_i_reg_67__0[1]),
        .I4(\indvars_iv_i_reg_67[2]_i_3_n_0 ),
        .O(\indvars_iv_i_reg_67[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0900000900000000)) 
    \indvars_iv_i_reg_67[2]_i_2 
       (.I0(j_i_reg_79[1]),
        .I1(indvars_iv_i_reg_67__0[1]),
        .I2(indvars_iv_i_reg_67),
        .I3(indvars_iv_i_reg_67__0[0]),
        .I4(j_i_reg_79[0]),
        .I5(ap_sig_54),
        .O(indvars_iv_i_reg_6700_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \indvars_iv_i_reg_67[2]_i_3 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(operation_V),
        .O(\indvars_iv_i_reg_67[2]_i_3_n_0 ));
  FDRE \indvars_iv_i_reg_67_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\indvars_iv_i_reg_67[0]_i_1_n_0 ),
        .Q(indvars_iv_i_reg_67__0[0]),
        .R(1'b0));
  FDRE \indvars_iv_i_reg_67_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\indvars_iv_i_reg_67[1]_i_1_n_0 ),
        .Q(indvars_iv_i_reg_67__0[1]),
        .R(1'b0));
  FDRE \indvars_iv_i_reg_67_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\indvars_iv_i_reg_67[2]_i_1_n_0 ),
        .Q(indvars_iv_i_reg_67),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE2E2E2E2E200E2E2)) 
    \j_i_reg_79[0]_i_1 
       (.I0(j_i_reg_79[0]),
        .I1(ap_sig_80),
        .I2(j_reg_146[0]),
        .I3(indvars_iv_i_reg_67),
        .I4(ap_sig_88),
        .I5(operation_V),
        .O(\j_i_reg_79[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2E2E200E2E2)) 
    \j_i_reg_79[1]_i_1 
       (.I0(j_i_reg_79[1]),
        .I1(ap_sig_80),
        .I2(j_reg_146[1]),
        .I3(indvars_iv_i_reg_67),
        .I4(ap_sig_88),
        .I5(operation_V),
        .O(\j_i_reg_79[1]_i_1_n_0 ));
  FDRE \j_i_reg_79_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_i_reg_79[0]_i_1_n_0 ),
        .Q(j_i_reg_79[0]),
        .R(1'b0));
  FDRE \j_i_reg_79_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_i_reg_79[1]_i_1_n_0 ),
        .Q(j_i_reg_79[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \j_reg_146[0]_i_1 
       (.I0(j_i_reg_79[0]),
        .I1(ap_sig_54),
        .I2(j_reg_146[0]),
        .O(\j_reg_146[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \j_reg_146[1]_i_1 
       (.I0(j_i_reg_79[0]),
        .I1(j_i_reg_79[1]),
        .I2(ap_sig_54),
        .I3(j_reg_146[1]),
        .O(\j_reg_146[1]_i_1_n_0 ));
  FDRE \j_reg_146_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_reg_146[0]_i_1_n_0 ),
        .Q(j_reg_146[0]),
        .R(1'b0));
  FDRE \j_reg_146_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_reg_146[1]_i_1_n_0 ),
        .Q(j_reg_146[1]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
