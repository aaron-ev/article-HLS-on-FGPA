// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _bubbleSort_HH_
#define _bubbleSort_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct bubbleSort : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > indexOutputData;
    sc_in< sc_lv<1> > operation_V;
    sc_out< sc_lv<4> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_out< sc_logic > A_we0;
    sc_out< sc_lv<16> > A_d0;
    sc_in< sc_lv<16> > A_q0;
    sc_out< sc_lv<4> > A_address1;
    sc_out< sc_logic > A_ce1;
    sc_out< sc_logic > A_we1;
    sc_out< sc_lv<16> > A_d1;
    sc_in< sc_lv<16> > A_q1;
    sc_out< sc_lv<16> > ap_return;


    // Module declarations
    bubbleSort(sc_module_name name);
    SC_HAS_PROCESS(bubbleSort);

    ~bubbleSort();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_21;
    sc_signal< sc_lv<1> > operation_V_load_load_fu_109_p1;
    sc_signal< sc_lv<4> > j_fu_136_p2;
    sc_signal< sc_lv<4> > j_reg_178;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_61;
    sc_signal< sc_lv<4> > A_addr_1_reg_183;
    sc_signal< sc_lv<1> > exitcond_i_fu_130_p2;
    sc_signal< sc_lv<4> > A_addr_2_reg_189;
    sc_signal< sc_lv<5> > i_fu_152_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_80;
    sc_signal< sc_lv<5> > indvars_iv_i_reg_75;
    sc_signal< sc_lv<4> > j_i_reg_87;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_93;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_101;
    sc_signal< sc_lv<1> > tmp_1_fu_118_p3;
    sc_signal< sc_lv<16> > p_0_reg_98;
    sc_signal< sc_lv<64> > tmp_fu_113_p1;
    sc_signal< sc_lv<64> > tmp_1_i_fu_142_p1;
    sc_signal< sc_lv<64> > tmp_4_i_fu_147_p1;
    sc_signal< sc_lv<1> > tmp_5_i_fu_158_p2;
    sc_signal< sc_lv<5> > j_i_cast_fu_126_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_155;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_st1_fsm_0;
    static const sc_lv<6> ap_ST_st2_fsm_1;
    static const sc_lv<6> ap_ST_st3_fsm_2;
    static const sc_lv<6> ap_ST_st4_fsm_3;
    static const sc_lv<6> ap_ST_st5_fsm_4;
    static const sc_lv<6> ap_ST_st6_fsm_5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_address1();
    void thread_A_ce0();
    void thread_A_ce1();
    void thread_A_d0();
    void thread_A_d1();
    void thread_A_we0();
    void thread_A_we1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_101();
    void thread_ap_sig_155();
    void thread_ap_sig_21();
    void thread_ap_sig_61();
    void thread_ap_sig_80();
    void thread_ap_sig_93();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_exitcond_i_fu_130_p2();
    void thread_i_fu_152_p2();
    void thread_j_fu_136_p2();
    void thread_j_i_cast_fu_126_p1();
    void thread_operation_V_load_load_fu_109_p1();
    void thread_tmp_1_fu_118_p3();
    void thread_tmp_1_i_fu_142_p1();
    void thread_tmp_4_i_fu_147_p1();
    void thread_tmp_5_i_fu_158_p2();
    void thread_tmp_fu_113_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
