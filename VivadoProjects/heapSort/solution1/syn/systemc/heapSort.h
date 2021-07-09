// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _heapSort_HH_
#define _heapSort_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "heapSort_maxHeapify_noRecurv.h"
#include "heapSort_A.h"

namespace ap_rtl {

struct heapSort : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > dataIn;
    sc_in< sc_lv<8> > posOutData;
    sc_out< sc_lv<16> > ap_return;


    // Module declarations
    heapSort(sc_module_name name);
    SC_HAS_PROCESS(heapSort);

    ~heapSort();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    heapSort_A* A_U;
    heapSort_maxHeapify_noRecurv* grp_heapSort_maxHeapify_noRecurv_fu_148;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_25;
    sc_signal< sc_lv<32> > count;
    sc_signal< sc_lv<8> > A_address0;
    sc_signal< sc_logic > A_ce0;
    sc_signal< sc_logic > A_we0;
    sc_signal< sc_lv<16> > A_d0;
    sc_signal< sc_lv<16> > A_q0;
    sc_signal< sc_lv<8> > A_address1;
    sc_signal< sc_logic > A_ce1;
    sc_signal< sc_logic > A_we1;
    sc_signal< sc_lv<16> > A_d1;
    sc_signal< sc_lv<16> > A_q1;
    sc_signal< sc_lv<1> > flagFill;
    sc_signal< sc_lv<16> > reg_159;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_59;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_66;
    sc_signal< sc_lv<1> > flagFill_load_load_fu_185_p1;
    sc_signal< sc_lv<1> > flagFill_load_reg_286;
    sc_signal< sc_lv<1> > icmp_fu_179_p2;
    sc_signal< sc_lv<8> > i_fu_214_p2;
    sc_signal< sc_lv<8> > i_reg_293;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_86;
    sc_signal< sc_lv<1> > tmp_16_fu_206_p3;
    sc_signal< sc_lv<8> > A_addr_6_reg_301;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_98;
    sc_signal< sc_lv<1> > tmp_17_fu_224_p3;
    sc_signal< sc_lv<10> > i_1_i_cast_cast_fu_266_p1;
    sc_signal< sc_lv<10> > i_1_i_cast_cast_reg_311;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_118;
    sc_signal< sc_lv<9> > i_2_fu_271_p2;
    sc_signal< sc_lv<9> > i_2_reg_316;
    sc_signal< sc_logic > grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start;
    sc_signal< sc_logic > grp_heapSort_maxHeapify_noRecurv_fu_148_ap_done;
    sc_signal< sc_logic > grp_heapSort_maxHeapify_noRecurv_fu_148_ap_idle;
    sc_signal< sc_logic > grp_heapSort_maxHeapify_noRecurv_fu_148_ap_ready;
    sc_signal< sc_lv<8> > grp_heapSort_maxHeapify_noRecurv_fu_148_A_address0;
    sc_signal< sc_logic > grp_heapSort_maxHeapify_noRecurv_fu_148_A_ce0;
    sc_signal< sc_logic > grp_heapSort_maxHeapify_noRecurv_fu_148_A_we0;
    sc_signal< sc_lv<16> > grp_heapSort_maxHeapify_noRecurv_fu_148_A_d0;
    sc_signal< sc_lv<8> > grp_heapSort_maxHeapify_noRecurv_fu_148_A_address1;
    sc_signal< sc_logic > grp_heapSort_maxHeapify_noRecurv_fu_148_A_ce1;
    sc_signal< sc_logic > grp_heapSort_maxHeapify_noRecurv_fu_148_A_we1;
    sc_signal< sc_lv<16> > grp_heapSort_maxHeapify_noRecurv_fu_148_A_d1;
    sc_signal< sc_lv<8> > grp_heapSort_maxHeapify_noRecurv_fu_148_startA;
    sc_signal< sc_lv<10> > grp_heapSort_maxHeapify_noRecurv_fu_148_endA;
    sc_signal< sc_lv<8> > i_i_reg_113;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_147;
    sc_signal< sc_lv<9> > i_1_i_reg_125;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_163;
    sc_signal< sc_lv<16> > p_0_reg_137;
    sc_signal< sc_logic > ap_reg_grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start;
    sc_signal< sc_lv<64> > tmp_s_fu_189_p1;
    sc_signal< sc_lv<64> > tmp_16_i_fu_232_p1;
    sc_signal< sc_lv<64> > gepindex2_fu_257_p3;
    sc_signal< sc_lv<32> > tmp_15_fu_194_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_201;
    sc_signal< sc_lv<24> > tmp_fu_169_p4;
    sc_signal< sc_lv<16> > i_1_i_cast_fu_220_p1;
    sc_signal< sc_lv<11> > mem_index_gep7_cast_fu_243_p1;
    sc_signal< sc_lv<1> > tmp_18_fu_250_p3;
    sc_signal< sc_lv<64> > adjSize_fu_246_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_262;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_st1_fsm_0;
    static const sc_lv<10> ap_ST_st2_fsm_1;
    static const sc_lv<10> ap_ST_st3_fsm_2;
    static const sc_lv<10> ap_ST_st4_fsm_3;
    static const sc_lv<10> ap_ST_st5_fsm_4;
    static const sc_lv<10> ap_ST_st6_fsm_5;
    static const sc_lv<10> ap_ST_st7_fsm_6;
    static const sc_lv<10> ap_ST_st8_fsm_7;
    static const sc_lv<10> ap_ST_st9_fsm_8;
    static const sc_lv<10> ap_ST_st10_fsm_9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<9> ap_const_lv9_FF;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<10> ap_const_lv10_100;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<24> ap_const_lv24_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<64> ap_const_lv64_FF;
    static const sc_lv<9> ap_const_lv9_1FF;
    static const sc_lv<32> ap_const_lv32_9;
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
    void thread_adjSize_fu_246_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_118();
    void thread_ap_sig_147();
    void thread_ap_sig_163();
    void thread_ap_sig_201();
    void thread_ap_sig_25();
    void thread_ap_sig_262();
    void thread_ap_sig_59();
    void thread_ap_sig_66();
    void thread_ap_sig_86();
    void thread_ap_sig_98();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_flagFill_load_load_fu_185_p1();
    void thread_gepindex2_fu_257_p3();
    void thread_grp_heapSort_maxHeapify_noRecurv_fu_148_ap_start();
    void thread_grp_heapSort_maxHeapify_noRecurv_fu_148_endA();
    void thread_grp_heapSort_maxHeapify_noRecurv_fu_148_startA();
    void thread_i_1_i_cast_cast_fu_266_p1();
    void thread_i_1_i_cast_fu_220_p1();
    void thread_i_2_fu_271_p2();
    void thread_i_fu_214_p2();
    void thread_icmp_fu_179_p2();
    void thread_mem_index_gep7_cast_fu_243_p1();
    void thread_tmp_15_fu_194_p2();
    void thread_tmp_16_fu_206_p3();
    void thread_tmp_16_i_fu_232_p1();
    void thread_tmp_17_fu_224_p3();
    void thread_tmp_18_fu_250_p3();
    void thread_tmp_fu_169_p4();
    void thread_tmp_s_fu_189_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif