// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="heapSort,hls_ip_2016_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.854000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=0,HLS_SYN_FF=341,HLS_SYN_LUT=511}" *)

module heapSort (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        dataIn,
        posOutData,
        ap_return
);

parameter    ap_ST_st1_fsm_0 = 10'b1;
parameter    ap_ST_st2_fsm_1 = 10'b10;
parameter    ap_ST_st3_fsm_2 = 10'b100;
parameter    ap_ST_st4_fsm_3 = 10'b1000;
parameter    ap_ST_st5_fsm_4 = 10'b10000;
parameter    ap_ST_st6_fsm_5 = 10'b100000;
parameter    ap_ST_st7_fsm_6 = 10'b1000000;
parameter    ap_ST_st8_fsm_7 = 10'b10000000;
parameter    ap_ST_st9_fsm_8 = 10'b100000000;
parameter    ap_ST_st10_fsm_9 = 10'b1000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv8_7F = 8'b1111111;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv9_FF = 9'b11111111;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv10_100 = 10'b100000000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv24_1 = 24'b1;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv64_FF = 64'b11111111;
parameter    ap_const_lv9_1FF = 9'b111111111;
parameter    ap_const_lv32_9 = 32'b1001;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] dataIn;
input  [7:0] posOutData;
output  [15:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_25;
reg   [31:0] count;
reg   [7:0] A_address0;
reg    A_ce0;
reg    A_we0;
reg   [15:0] A_d0;
wire   [15:0] A_q0;
reg   [7:0] A_address1;
reg    A_ce1;
reg    A_we1;
reg   [15:0] A_d1;
wire   [15:0] A_q1;
reg   [0:0] flagFill;
reg   [15:0] reg_159;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_59;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_66;
wire   [0:0] flagFill_load_load_fu_185_p1;
reg   [0:0] flagFill_load_reg_286;
wire   [0:0] icmp_fu_179_p2;
wire   [7:0] i_fu_214_p2;
reg   [7:0] i_reg_293;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_86;
wire   [0:0] tmp_16_fu_206_p3;
reg   [7:0] A_addr_6_reg_301;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_98;
wire   [0:0] tmp_17_fu_224_p3;
wire   [9:0] i_1_i_cast_cast_fu_266_p1;
reg   [9:0] i_1_i_cast_cast_reg_311;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_118;
wire   [8:0] i_2_fu_271_p2;
reg   [8:0] i_2_reg_316;
wire    grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start;
wire    grp_heapSort_maxHeapify_noRecurv_fu_148_ap_done;
wire    grp_heapSort_maxHeapify_noRecurv_fu_148_ap_idle;
wire    grp_heapSort_maxHeapify_noRecurv_fu_148_ap_ready;
wire   [7:0] grp_heapSort_maxHeapify_noRecurv_fu_148_A_address0;
wire    grp_heapSort_maxHeapify_noRecurv_fu_148_A_ce0;
wire    grp_heapSort_maxHeapify_noRecurv_fu_148_A_we0;
wire   [15:0] grp_heapSort_maxHeapify_noRecurv_fu_148_A_d0;
wire   [7:0] grp_heapSort_maxHeapify_noRecurv_fu_148_A_address1;
wire    grp_heapSort_maxHeapify_noRecurv_fu_148_A_ce1;
wire    grp_heapSort_maxHeapify_noRecurv_fu_148_A_we1;
wire   [15:0] grp_heapSort_maxHeapify_noRecurv_fu_148_A_d1;
reg   [7:0] grp_heapSort_maxHeapify_noRecurv_fu_148_startA;
reg   [9:0] grp_heapSort_maxHeapify_noRecurv_fu_148_endA;
reg   [7:0] i_i_reg_113;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_147;
reg   [8:0] i_1_i_reg_125;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_163;
reg   [15:0] p_0_reg_137;
reg    ap_reg_grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start;
wire  signed [63:0] tmp_s_fu_189_p1;
wire   [63:0] tmp_16_i_fu_232_p1;
wire   [63:0] gepindex2_fu_257_p3;
wire   [31:0] tmp_15_fu_194_p2;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_201;
wire   [23:0] tmp_fu_169_p4;
wire  signed [15:0] i_1_i_cast_fu_220_p1;
wire  signed [10:0] mem_index_gep7_cast_fu_243_p1;
wire   [0:0] tmp_18_fu_250_p3;
wire   [63:0] adjSize_fu_246_p1;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_262;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'b1;
#0 count = 32'b00000000000000000000000000000000;
#0 flagFill = 1'b0;
#0 ap_reg_grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start = 1'b0;
end

heapSort_A #(
    .DataWidth( 16 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
A_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(A_address0),
    .ce0(A_ce0),
    .we0(A_we0),
    .d0(A_d0),
    .q0(A_q0),
    .address1(A_address1),
    .ce1(A_ce1),
    .we1(A_we1),
    .d1(A_d1),
    .q1(A_q1)
);

heapSort_maxHeapify_noRecurv grp_heapSort_maxHeapify_noRecurv_fu_148(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start),
    .ap_done(grp_heapSort_maxHeapify_noRecurv_fu_148_ap_done),
    .ap_idle(grp_heapSort_maxHeapify_noRecurv_fu_148_ap_idle),
    .ap_ready(grp_heapSort_maxHeapify_noRecurv_fu_148_ap_ready),
    .A_address0(grp_heapSort_maxHeapify_noRecurv_fu_148_A_address0),
    .A_ce0(grp_heapSort_maxHeapify_noRecurv_fu_148_A_ce0),
    .A_we0(grp_heapSort_maxHeapify_noRecurv_fu_148_A_we0),
    .A_d0(grp_heapSort_maxHeapify_noRecurv_fu_148_A_d0),
    .A_q0(A_q0),
    .A_address1(grp_heapSort_maxHeapify_noRecurv_fu_148_A_address1),
    .A_ce1(grp_heapSort_maxHeapify_noRecurv_fu_148_A_ce1),
    .A_we1(grp_heapSort_maxHeapify_noRecurv_fu_148_A_we1),
    .A_d1(grp_heapSort_maxHeapify_noRecurv_fu_148_A_d1),
    .A_q1(A_q1),
    .startA(grp_heapSort_maxHeapify_noRecurv_fu_148_startA),
    .endA(grp_heapSort_maxHeapify_noRecurv_fu_148_endA)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start <= 1'b0;
    end else begin
        if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == tmp_16_fu_206_p3)) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6))) begin
            ap_reg_grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start <= 1'b1;
        end else if ((1'b1 == grp_heapSort_maxHeapify_noRecurv_fu_148_ap_ready)) begin
            ap_reg_grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == tmp_16_fu_206_p3))) begin
        i_1_i_reg_125 <= ap_const_lv9_FF;
    end else if ((~(1'b0 == grp_heapSort_maxHeapify_noRecurv_fu_148_ap_done) & (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        i_1_i_reg_125 <= i_2_reg_316;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0) & (1'b0 == icmp_fu_179_p2) & (1'b0 == flagFill_load_load_fu_185_p1))) begin
        i_i_reg_113 <= ap_const_lv8_7F;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == grp_heapSort_maxHeapify_noRecurv_fu_148_ap_done))) begin
        i_i_reg_113 <= i_reg_293;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        p_0_reg_137 <= A_q0;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0) & ~(1'b0 == icmp_fu_179_p2))) begin
        p_0_reg_137 <= ap_const_lv16_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == flagFill_load_reg_286) & (1'b0 == tmp_17_fu_224_p3))) begin
        A_addr_6_reg_301 <= tmp_16_i_fu_232_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0) & ~(1'b0 == icmp_fu_179_p2))) begin
        count <= tmp_15_fu_194_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == flagFill_load_reg_286) & ~(1'b0 == tmp_17_fu_224_p3))) begin
        flagFill <= 1'b1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0) & (1'b0 == icmp_fu_179_p2))) begin
        flagFill_load_reg_286 <= flagFill;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        i_1_i_cast_cast_reg_311[8 : 0] <= i_1_i_cast_cast_fu_266_p1[8 : 0];
        i_2_reg_316 <= i_2_fu_271_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == tmp_16_fu_206_p3))) begin
        i_reg_293 <= i_fu_214_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8))) begin
        reg_159 <= A_q0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st1_fsm_0)) begin
        A_address0 = tmp_s_fu_189_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        A_address0 = gepindex2_fu_257_p3;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == flagFill_load_reg_286) & (1'b0 == tmp_17_fu_224_p3))) begin
        A_address0 = ap_const_lv8_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        A_address0 = grp_heapSort_maxHeapify_noRecurv_fu_148_A_address0;
    end else begin
        A_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        A_address1 = A_addr_6_reg_301;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        A_address1 = ap_const_lv8_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        A_address1 = tmp_16_i_fu_232_p1;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        A_address1 = grp_heapSort_maxHeapify_noRecurv_fu_148_A_address1;
    end else begin
        A_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3))) begin
        A_ce0 = 1'b1;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        A_ce0 = grp_heapSort_maxHeapify_noRecurv_fu_148_A_ce0;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        A_ce1 = 1'b1;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        A_ce1 = grp_heapSort_maxHeapify_noRecurv_fu_148_A_ce1;
    end else begin
        A_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st1_fsm_0)) begin
        A_d0 = dataIn;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        A_d0 = grp_heapSort_maxHeapify_noRecurv_fu_148_A_d0;
    end else begin
        A_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        A_d1 = reg_159;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        A_d1 = A_q1;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        A_d1 = grp_heapSort_maxHeapify_noRecurv_fu_148_A_d1;
    end else begin
        A_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0) & ~(1'b0 == icmp_fu_179_p2))) begin
        A_we0 = 1'b1;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        A_we0 = grp_heapSort_maxHeapify_noRecurv_fu_148_A_we0;
    end else begin
        A_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        A_we1 = 1'b1;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        A_we1 = grp_heapSort_maxHeapify_noRecurv_fu_148_A_we1;
    end else begin
        A_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_262) begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_25) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_86) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_147) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_98) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_59) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_201) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_118) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_163) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_66) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        grp_heapSort_maxHeapify_noRecurv_fu_148_endA = i_1_i_cast_cast_reg_311;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_heapSort_maxHeapify_noRecurv_fu_148_endA = ap_const_lv10_100;
    end else begin
        grp_heapSort_maxHeapify_noRecurv_fu_148_endA = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        grp_heapSort_maxHeapify_noRecurv_fu_148_startA = ap_const_lv8_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_heapSort_maxHeapify_noRecurv_fu_148_startA = i_i_reg_113;
    end else begin
        grp_heapSort_maxHeapify_noRecurv_fu_148_startA = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if ((~(ap_start == 1'b0) & ~(1'b0 == icmp_fu_179_p2))) begin
                ap_NS_fsm = ap_ST_st10_fsm_9;
            end else if ((~(ap_start == 1'b0) & (1'b0 == icmp_fu_179_p2) & ~(1'b0 == flagFill_load_load_fu_185_p1))) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else if ((~(ap_start == 1'b0) & (1'b0 == icmp_fu_179_p2) & (1'b0 == flagFill_load_load_fu_185_p1))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(1'b0 == tmp_16_fu_206_p3)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == grp_heapSort_maxHeapify_noRecurv_fu_148_ap_done)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if ((~(1'b0 == flagFill_load_reg_286) | ~(1'b0 == tmp_17_fu_224_p3))) begin
                ap_NS_fsm = ap_ST_st9_fsm_8;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : begin
            if (~(1'b0 == grp_heapSort_maxHeapify_noRecurv_fu_148_ap_done)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign adjSize_fu_246_p1 = $unsigned(mem_index_gep7_cast_fu_243_p1);

assign ap_return = p_0_reg_137;

always @ (*) begin
    ap_sig_118 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_147 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_163 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_201 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_25 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_262 = (1'b1 == ap_CS_fsm[ap_const_lv32_9]);
end

always @ (*) begin
    ap_sig_59 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_66 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_86 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_98 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

assign flagFill_load_load_fu_185_p1 = flagFill;

assign gepindex2_fu_257_p3 = ((tmp_18_fu_250_p3[0:0] === 1'b1) ? ap_const_lv64_FF : adjSize_fu_246_p1);

assign grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start = ap_reg_grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start;

assign i_1_i_cast_cast_fu_266_p1 = i_1_i_reg_125;

assign i_1_i_cast_fu_220_p1 = $signed(i_1_i_reg_125);

assign i_2_fu_271_p2 = ($signed(i_1_i_reg_125) + $signed(ap_const_lv9_1FF));

assign i_fu_214_p2 = ($signed(i_i_reg_113) + $signed(ap_const_lv8_FF));

assign icmp_fu_179_p2 = (($signed(tmp_fu_169_p4) < $signed(24'b1)) ? 1'b1 : 1'b0);

assign mem_index_gep7_cast_fu_243_p1 = $signed(posOutData);

assign tmp_15_fu_194_p2 = (count + ap_const_lv32_1);

assign tmp_16_fu_206_p3 = i_i_reg_113[ap_const_lv32_7];

assign tmp_16_i_fu_232_p1 = $unsigned(i_1_i_cast_fu_220_p1);

assign tmp_17_fu_224_p3 = i_1_i_reg_125[ap_const_lv32_8];

assign tmp_18_fu_250_p3 = posOutData[ap_const_lv32_7];

assign tmp_fu_169_p4 = {{count[ap_const_lv32_1F : ap_const_lv32_8]}};

assign tmp_s_fu_189_p1 = $signed(count);

always @ (posedge ap_clk) begin
    i_1_i_cast_cast_reg_311[9] <= 1'b0;
end

endmodule //heapSort
