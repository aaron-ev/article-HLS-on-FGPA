// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="insertionSort,hls_ip_2016_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.484000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=65,HLS_SYN_LUT=79}" *)

module insertionSort (
        ap_clk,
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
        ap_return
);

parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_st2_fsm_1 = 6'b10;
parameter    ap_ST_st3_fsm_2 = 6'b100;
parameter    ap_ST_st4_fsm_3 = 6'b1000;
parameter    ap_ST_st5_fsm_4 = 6'b10000;
parameter    ap_ST_st6_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv9_100 = 9'b100000000;
parameter    ap_const_lv9_1FF = 9'b111111111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_5 = 32'b101;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] indexOutputData;
input  [0:0] operation_V;
output  [7:0] A_address0;
output   A_ce0;
output   A_we0;
output  [15:0] A_d0;
input  [15:0] A_q0;
output  [7:0] A_address1;
output   A_ce1;
output   A_we1;
output  [15:0] A_d1;
input  [15:0] A_q1;
output  [15:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] A_address0;
reg A_ce0;
reg A_we0;
reg[7:0] A_address1;
reg A_ce1;
reg A_we1;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_21;
wire   [0:0] operation_V_load_load_fu_106_p1;
wire   [8:0] j_fu_121_p2;
reg   [8:0] j_reg_172;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_61;
reg   [7:0] A_addr_1_reg_180;
wire   [0:0] tmp_1_fu_131_p3;
reg   [7:0] A_addr_2_reg_186;
wire   [8:0] i_fu_149_p2;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_80;
reg   [8:0] i_i_reg_73;
reg   [8:0] j_0_in_i_reg_85;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_93;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_100;
wire   [0:0] exitcond_i_fu_115_p2;
reg   [15:0] p_0_reg_95;
wire  signed [63:0] tmp_fu_110_p1;
wire   [63:0] tmp_1_i_fu_139_p1;
wire   [63:0] tmp_4_i_fu_144_p1;
wire   [0:0] tmp_5_i_fu_155_p2;
wire  signed [15:0] j_cast_fu_127_p1;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_155;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'b1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0) & (operation_V_load_load_fu_106_p1 == 1'b0))) begin
        i_i_reg_73 <= ap_const_lv9_1;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == tmp_1_fu_131_p3))) begin
        i_i_reg_73 <= i_fu_149_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond_i_fu_115_p2))) begin
        j_0_in_i_reg_85 <= i_i_reg_73;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        j_0_in_i_reg_85 <= j_reg_172;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond_i_fu_115_p2))) begin
        p_0_reg_95 <= ap_const_lv16_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        p_0_reg_95 <= A_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_1_fu_131_p3))) begin
        A_addr_1_reg_180 <= tmp_1_i_fu_139_p1;
        A_addr_2_reg_186 <= tmp_4_i_fu_144_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        j_reg_172 <= j_fu_121_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        A_address0 = A_addr_2_reg_186;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        A_address0 = tmp_1_i_fu_139_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st1_fsm_0)) begin
        A_address0 = tmp_fu_110_p1;
    end else begin
        A_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        A_address1 = A_addr_1_reg_180;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        A_address1 = tmp_4_i_fu_144_p1;
    end else begin
        A_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | (1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3))) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3))) begin
        A_ce1 = 1'b1;
    end else begin
        A_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_5_i_fu_155_p2))) begin
        A_we0 = 1'b1;
    end else begin
        A_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_5_i_fu_155_p2))) begin
        A_we1 = 1'b1;
    end else begin
        A_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
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
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_21) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_100) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_61) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_93) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_80) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_155) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if ((~(ap_start == 1'b0) & ~(operation_V_load_load_fu_106_p1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else if ((~(ap_start == 1'b0) & (operation_V_load_load_fu_106_p1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(1'b0 == exitcond_i_fu_115_p2)) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == tmp_1_fu_131_p3)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_d0 = A_q0;

assign A_d1 = A_q1;

assign ap_return = p_0_reg_95;

always @ (*) begin
    ap_sig_100 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_155 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_21 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_61 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_80 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_93 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

assign exitcond_i_fu_115_p2 = ((i_i_reg_73 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign i_fu_149_p2 = (i_i_reg_73 + ap_const_lv9_1);

assign j_cast_fu_127_p1 = $signed(j_fu_121_p2);

assign j_fu_121_p2 = ($signed(j_0_in_i_reg_85) + $signed(ap_const_lv9_1FF));

assign operation_V_load_load_fu_106_p1 = operation_V;

assign tmp_1_fu_131_p3 = j_fu_121_p2[ap_const_lv32_8];

assign tmp_1_i_fu_139_p1 = $unsigned(j_cast_fu_127_p1);

assign tmp_4_i_fu_144_p1 = j_0_in_i_reg_85;

assign tmp_5_i_fu_155_p2 = (($signed(A_q0) > $signed(A_q1)) ? 1'b1 : 1'b0);

assign tmp_fu_110_p1 = $signed(indexOutputData);

endmodule //insertionSort
