// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _heapSort_maxHeapify_noRecurv_HH_
#define _heapSort_maxHeapify_noRecurv_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct heapSort_maxHeapify_noRecurv : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > startA;
    sc_in< sc_lv<10> > endA;
    sc_out< sc_lv<8> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_out< sc_logic > A_we0;
    sc_out< sc_lv<16> > A_d0;
    sc_in< sc_lv<16> > A_q0;
    sc_out< sc_lv<8> > A_address1;
    sc_out< sc_logic > A_ce1;
    sc_out< sc_logic > A_we1;
    sc_out< sc_lv<16> > A_d1;
    sc_in< sc_lv<16> > A_q1;


    // Module declarations
    heapSort_maxHeapify_noRecurv(sc_module_name name);
    SC_HAS_PROCESS(heapSort_maxHeapify_noRecurv);

    ~heapSort_maxHeapify_noRecurv();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_25;
    sc_signal< sc_lv<16> > endA_cast1_fu_125_p1;
    sc_signal< sc_lv<16> > endA_cast1_reg_258;
    sc_signal< sc_lv<16> > startA_cast_fu_129_p1;
    sc_signal< sc_lv<9> > i_1_fu_147_p2;
    sc_signal< sc_lv<9> > i_1_reg_272;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_61;
    sc_signal< sc_lv<16> > current_4_fu_159_p2;
    sc_signal< sc_lv<16> > current_4_reg_277;
    sc_signal< sc_lv<1> > tmp_fu_142_p2;
    sc_signal< sc_lv<16> > current_5_fu_165_p2;
    sc_signal< sc_lv<16> > current_5_reg_282;
    sc_signal< sc_lv<1> > tmp_4_fu_171_p2;
    sc_signal< sc_lv<1> > tmp_4_reg_288;
    sc_signal< sc_lv<1> > tmp_8_fu_186_p2;
    sc_signal< sc_lv<1> > tmp_8_reg_303;
    sc_signal< sc_lv<16> > current_1_fu_198_p3;
    sc_signal< sc_lv<16> > current_1_reg_308;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_87;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_96;
    sc_signal< sc_lv<16> > startA_assign_fu_219_p3;
    sc_signal< sc_lv<16> > startA_assign_reg_325;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_110;
    sc_signal< sc_lv<1> > tmp_3_fu_228_p2;
    sc_signal< sc_lv<1> > tmp_3_reg_333;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_119;
    sc_signal< sc_lv<8> > A_addr_4_reg_337;
    sc_signal< sc_lv<8> > A_addr_5_reg_342;
    sc_signal< sc_lv<16> > temp_reg_347;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_133;
    sc_signal< sc_lv<16> > current_reg_98;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_142;
    sc_signal< sc_lv<9> > i_reg_108;
    sc_signal< sc_lv<64> > tmp_5_fu_176_p1;
    sc_signal< sc_lv<64> > tmp_6_fu_181_p1;
    sc_signal< sc_lv<64> > tmp_9_fu_205_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_209_p1;
    sc_signal< sc_lv<64> > tmp_10_fu_233_p1;
    sc_signal< sc_lv<64> > tmp_11_fu_237_p1;
    sc_signal< sc_lv<16> > p_0_fu_26;
    sc_signal< sc_lv<10> > i_cast_fu_138_p1;
    sc_signal< sc_lv<16> > tmp_1_fu_153_p2;
    sc_signal< sc_lv<1> > grp_fu_119_p2;
    sc_signal< sc_lv<16> > p_current_fu_191_p3;
    sc_signal< sc_lv<16> > p_current_1_fu_213_p3;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_st1_fsm_0;
    static const sc_lv<8> ap_ST_st2_fsm_1;
    static const sc_lv<8> ap_ST_st3_fsm_2;
    static const sc_lv<8> ap_ST_st4_fsm_3;
    static const sc_lv<8> ap_ST_st5_fsm_4;
    static const sc_lv<8> ap_ST_st6_fsm_5;
    static const sc_lv<8> ap_ST_st7_fsm_6;
    static const sc_lv<8> ap_ST_st8_fsm_7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<16> ap_const_lv16_2;
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
    void thread_ap_sig_110();
    void thread_ap_sig_119();
    void thread_ap_sig_133();
    void thread_ap_sig_142();
    void thread_ap_sig_25();
    void thread_ap_sig_61();
    void thread_ap_sig_87();
    void thread_ap_sig_96();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_current_1_fu_198_p3();
    void thread_current_4_fu_159_p2();
    void thread_current_5_fu_165_p2();
    void thread_endA_cast1_fu_125_p1();
    void thread_grp_fu_119_p2();
    void thread_i_1_fu_147_p2();
    void thread_i_cast_fu_138_p1();
    void thread_p_current_1_fu_213_p3();
    void thread_p_current_fu_191_p3();
    void thread_startA_assign_fu_219_p3();
    void thread_startA_cast_fu_129_p1();
    void thread_tmp_10_fu_233_p1();
    void thread_tmp_11_fu_237_p1();
    void thread_tmp_1_fu_153_p2();
    void thread_tmp_3_fu_228_p2();
    void thread_tmp_4_fu_171_p2();
    void thread_tmp_5_fu_176_p1();
    void thread_tmp_6_fu_181_p1();
    void thread_tmp_8_fu_186_p2();
    void thread_tmp_9_fu_205_p1();
    void thread_tmp_fu_142_p2();
    void thread_tmp_s_fu_209_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
