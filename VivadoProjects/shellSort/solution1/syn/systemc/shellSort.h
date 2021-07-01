// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shellSort_HH_
#define _shellSort_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "shellSort_fcmp_32ns_32ns_1_1.h"

namespace ap_rtl {

struct shellSort : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_out< sc_logic > A_we0;
    sc_out< sc_lv<32> > A_d0;
    sc_in< sc_lv<32> > A_q0;
    sc_out< sc_lv<6> > A_address1;
    sc_out< sc_logic > A_ce1;
    sc_out< sc_logic > A_we1;
    sc_out< sc_lv<32> > A_d1;
    sc_in< sc_lv<32> > A_q1;
    sc_signal< sc_lv<5> > ap_var_for_const0;


    // Module declarations
    shellSort(sc_module_name name);
    SC_HAS_PROCESS(shellSort);

    ~shellSort();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    shellSort_fcmp_32ns_32ns_1_1<1,1,32,32,1>* shellSort_fcmp_32ns_32ns_1_1_U0;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_21;
    sc_signal< sc_lv<32> > i_assign_fu_94_p3;
    sc_signal< sc_lv<32> > i_assign_reg_227;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_48;
    sc_signal< sc_lv<1> > tmp_fu_76_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_62;
    sc_signal< sc_lv<32> > index_2_fu_106_p2;
    sc_signal< sc_lv<32> > index_2_reg_240;
    sc_signal< sc_lv<6> > A_addr_1_reg_245;
    sc_signal< sc_lv<32> > A_load_reg_251;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_74;
    sc_signal< sc_lv<32> > A_load_1_reg_257;
    sc_signal< sc_lv<1> > tmp_11_fu_192_p2;
    sc_signal< sc_lv<1> > tmp_11_reg_264;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_84;
    sc_signal< sc_lv<6> > A_addr_2_reg_268;
    sc_signal< sc_lv<64> > tmp_4_fu_102_p1;
    sc_signal< sc_lv<64> > tmp_6_fu_111_p1;
    sc_signal< sc_lv<64> > tmp_i_fu_198_p1;
    sc_signal< sc_lv<32> > index_3_fu_28;
    sc_signal< sc_lv<32> > index_1_fu_206_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_108;
    sc_signal< sc_lv<1> > tmp_2_fu_82_p2;
    sc_signal< sc_lv<32> > index_fu_88_p2;
    sc_signal< sc_lv<32> > A_load_to_int_fu_116_p1;
    sc_signal< sc_lv<32> > A_load_1_to_int_fu_133_p1;
    sc_signal< sc_lv<8> > tmp_1_fu_119_p4;
    sc_signal< sc_lv<23> > tmp_3_fu_129_p1;
    sc_signal< sc_lv<1> > notrhs_fu_156_p2;
    sc_signal< sc_lv<1> > notlhs_fu_150_p2;
    sc_signal< sc_lv<8> > tmp_5_fu_136_p4;
    sc_signal< sc_lv<23> > tmp_7_fu_146_p1;
    sc_signal< sc_lv<1> > notrhs2_fu_174_p2;
    sc_signal< sc_lv<1> > notlhs1_fu_168_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_162_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_180_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_186_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_64_p2;
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
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_3;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_address1();
    void thread_A_ce0();
    void thread_A_ce1();
    void thread_A_d0();
    void thread_A_d1();
    void thread_A_load_1_to_int_fu_133_p1();
    void thread_A_load_to_int_fu_116_p1();
    void thread_A_we0();
    void thread_A_we1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_108();
    void thread_ap_sig_21();
    void thread_ap_sig_48();
    void thread_ap_sig_62();
    void thread_ap_sig_74();
    void thread_ap_sig_84();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_i_assign_fu_94_p3();
    void thread_index_1_fu_206_p2();
    void thread_index_2_fu_106_p2();
    void thread_index_fu_88_p2();
    void thread_notlhs1_fu_168_p2();
    void thread_notlhs_fu_150_p2();
    void thread_notrhs2_fu_174_p2();
    void thread_notrhs_fu_156_p2();
    void thread_tmp_11_fu_192_p2();
    void thread_tmp_1_fu_119_p4();
    void thread_tmp_2_fu_82_p2();
    void thread_tmp_3_fu_129_p1();
    void thread_tmp_4_fu_102_p1();
    void thread_tmp_5_fu_136_p4();
    void thread_tmp_6_fu_111_p1();
    void thread_tmp_7_fu_146_p1();
    void thread_tmp_8_fu_162_p2();
    void thread_tmp_9_fu_180_p2();
    void thread_tmp_fu_76_p2();
    void thread_tmp_i_fu_198_p1();
    void thread_tmp_s_fu_186_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif