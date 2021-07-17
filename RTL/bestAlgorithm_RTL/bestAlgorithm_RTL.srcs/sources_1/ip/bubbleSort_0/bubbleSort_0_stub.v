// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Thu Jul 15 12:00:16 2021
// Host        : DESKTOP-92AEKAJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/aaron/Desktop/git_article/RTL/bestAlgorithm_RTL/bestAlgorithm_RTL.srcs/sources_1/ip/bubbleSort_0/bubbleSort_0_stub.v
// Design      : bubbleSort_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bubbleSort,Vivado 2016.1" *)
module bubbleSort_0(A_ce0, A_we0, A_ce1, A_we1, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, ap_return, indexOutputData, operation_V, A_address0, A_d0, A_q0, A_address1, A_d1, A_q1)
/* synthesis syn_black_box black_box_pad_pin="A_ce0,A_we0,A_ce1,A_we1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[15:0],indexOutputData[7:0],operation_V[0:0],A_address0[1:0],A_d0[15:0],A_q0[15:0],A_address1[1:0],A_d1[15:0],A_q1[15:0]" */;
  output A_ce0;
  output A_we0;
  output A_ce1;
  output A_we1;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [15:0]ap_return;
  input [7:0]indexOutputData;
  input [0:0]operation_V;
  output [1:0]A_address0;
  output [15:0]A_d0;
  input [15:0]A_q0;
  output [1:0]A_address1;
  output [15:0]A_d1;
  input [15:0]A_q1;
endmodule
