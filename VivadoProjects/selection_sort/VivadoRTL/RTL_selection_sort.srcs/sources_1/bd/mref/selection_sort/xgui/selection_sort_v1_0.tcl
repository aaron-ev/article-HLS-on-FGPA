# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ap_ST_st10_fsm_9" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st11_fsm_10" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st12_fsm_11" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st13_fsm_12" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st14_fsm_13" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st15_fsm_14" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st16_fsm_15" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st17_fsm_16" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st18_fsm_17" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st19_fsm_18" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st1_fsm_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st2_fsm_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st3_fsm_2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st4_fsm_3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st5_fsm_4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st6_fsm_5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st7_fsm_6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st8_fsm_7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st9_fsm_8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv23_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_10" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_11" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_12" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_17" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_1E" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_36" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_9" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_A" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_B" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_C" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_D" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_E" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_F" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv3_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv3_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv3_4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv5_4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv8_7F" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv8_FF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv9_181" -parent ${Page_0}


}

proc update_PARAM_VALUE.ap_ST_st10_fsm_9 { PARAM_VALUE.ap_ST_st10_fsm_9 } {
	# Procedure called to update ap_ST_st10_fsm_9 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st10_fsm_9 { PARAM_VALUE.ap_ST_st10_fsm_9 } {
	# Procedure called to validate ap_ST_st10_fsm_9
	return true
}

proc update_PARAM_VALUE.ap_ST_st11_fsm_10 { PARAM_VALUE.ap_ST_st11_fsm_10 } {
	# Procedure called to update ap_ST_st11_fsm_10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st11_fsm_10 { PARAM_VALUE.ap_ST_st11_fsm_10 } {
	# Procedure called to validate ap_ST_st11_fsm_10
	return true
}

proc update_PARAM_VALUE.ap_ST_st12_fsm_11 { PARAM_VALUE.ap_ST_st12_fsm_11 } {
	# Procedure called to update ap_ST_st12_fsm_11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st12_fsm_11 { PARAM_VALUE.ap_ST_st12_fsm_11 } {
	# Procedure called to validate ap_ST_st12_fsm_11
	return true
}

proc update_PARAM_VALUE.ap_ST_st13_fsm_12 { PARAM_VALUE.ap_ST_st13_fsm_12 } {
	# Procedure called to update ap_ST_st13_fsm_12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st13_fsm_12 { PARAM_VALUE.ap_ST_st13_fsm_12 } {
	# Procedure called to validate ap_ST_st13_fsm_12
	return true
}

proc update_PARAM_VALUE.ap_ST_st14_fsm_13 { PARAM_VALUE.ap_ST_st14_fsm_13 } {
	# Procedure called to update ap_ST_st14_fsm_13 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st14_fsm_13 { PARAM_VALUE.ap_ST_st14_fsm_13 } {
	# Procedure called to validate ap_ST_st14_fsm_13
	return true
}

proc update_PARAM_VALUE.ap_ST_st15_fsm_14 { PARAM_VALUE.ap_ST_st15_fsm_14 } {
	# Procedure called to update ap_ST_st15_fsm_14 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st15_fsm_14 { PARAM_VALUE.ap_ST_st15_fsm_14 } {
	# Procedure called to validate ap_ST_st15_fsm_14
	return true
}

proc update_PARAM_VALUE.ap_ST_st16_fsm_15 { PARAM_VALUE.ap_ST_st16_fsm_15 } {
	# Procedure called to update ap_ST_st16_fsm_15 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st16_fsm_15 { PARAM_VALUE.ap_ST_st16_fsm_15 } {
	# Procedure called to validate ap_ST_st16_fsm_15
	return true
}

proc update_PARAM_VALUE.ap_ST_st17_fsm_16 { PARAM_VALUE.ap_ST_st17_fsm_16 } {
	# Procedure called to update ap_ST_st17_fsm_16 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st17_fsm_16 { PARAM_VALUE.ap_ST_st17_fsm_16 } {
	# Procedure called to validate ap_ST_st17_fsm_16
	return true
}

proc update_PARAM_VALUE.ap_ST_st18_fsm_17 { PARAM_VALUE.ap_ST_st18_fsm_17 } {
	# Procedure called to update ap_ST_st18_fsm_17 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st18_fsm_17 { PARAM_VALUE.ap_ST_st18_fsm_17 } {
	# Procedure called to validate ap_ST_st18_fsm_17
	return true
}

proc update_PARAM_VALUE.ap_ST_st19_fsm_18 { PARAM_VALUE.ap_ST_st19_fsm_18 } {
	# Procedure called to update ap_ST_st19_fsm_18 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st19_fsm_18 { PARAM_VALUE.ap_ST_st19_fsm_18 } {
	# Procedure called to validate ap_ST_st19_fsm_18
	return true
}

proc update_PARAM_VALUE.ap_ST_st1_fsm_0 { PARAM_VALUE.ap_ST_st1_fsm_0 } {
	# Procedure called to update ap_ST_st1_fsm_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st1_fsm_0 { PARAM_VALUE.ap_ST_st1_fsm_0 } {
	# Procedure called to validate ap_ST_st1_fsm_0
	return true
}

proc update_PARAM_VALUE.ap_ST_st2_fsm_1 { PARAM_VALUE.ap_ST_st2_fsm_1 } {
	# Procedure called to update ap_ST_st2_fsm_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st2_fsm_1 { PARAM_VALUE.ap_ST_st2_fsm_1 } {
	# Procedure called to validate ap_ST_st2_fsm_1
	return true
}

proc update_PARAM_VALUE.ap_ST_st3_fsm_2 { PARAM_VALUE.ap_ST_st3_fsm_2 } {
	# Procedure called to update ap_ST_st3_fsm_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st3_fsm_2 { PARAM_VALUE.ap_ST_st3_fsm_2 } {
	# Procedure called to validate ap_ST_st3_fsm_2
	return true
}

proc update_PARAM_VALUE.ap_ST_st4_fsm_3 { PARAM_VALUE.ap_ST_st4_fsm_3 } {
	# Procedure called to update ap_ST_st4_fsm_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st4_fsm_3 { PARAM_VALUE.ap_ST_st4_fsm_3 } {
	# Procedure called to validate ap_ST_st4_fsm_3
	return true
}

proc update_PARAM_VALUE.ap_ST_st5_fsm_4 { PARAM_VALUE.ap_ST_st5_fsm_4 } {
	# Procedure called to update ap_ST_st5_fsm_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st5_fsm_4 { PARAM_VALUE.ap_ST_st5_fsm_4 } {
	# Procedure called to validate ap_ST_st5_fsm_4
	return true
}

proc update_PARAM_VALUE.ap_ST_st6_fsm_5 { PARAM_VALUE.ap_ST_st6_fsm_5 } {
	# Procedure called to update ap_ST_st6_fsm_5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st6_fsm_5 { PARAM_VALUE.ap_ST_st6_fsm_5 } {
	# Procedure called to validate ap_ST_st6_fsm_5
	return true
}

proc update_PARAM_VALUE.ap_ST_st7_fsm_6 { PARAM_VALUE.ap_ST_st7_fsm_6 } {
	# Procedure called to update ap_ST_st7_fsm_6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st7_fsm_6 { PARAM_VALUE.ap_ST_st7_fsm_6 } {
	# Procedure called to validate ap_ST_st7_fsm_6
	return true
}

proc update_PARAM_VALUE.ap_ST_st8_fsm_7 { PARAM_VALUE.ap_ST_st8_fsm_7 } {
	# Procedure called to update ap_ST_st8_fsm_7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st8_fsm_7 { PARAM_VALUE.ap_ST_st8_fsm_7 } {
	# Procedure called to validate ap_ST_st8_fsm_7
	return true
}

proc update_PARAM_VALUE.ap_ST_st9_fsm_8 { PARAM_VALUE.ap_ST_st9_fsm_8 } {
	# Procedure called to update ap_ST_st9_fsm_8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_ST_st9_fsm_8 { PARAM_VALUE.ap_ST_st9_fsm_8 } {
	# Procedure called to validate ap_ST_st9_fsm_8
	return true
}

proc update_PARAM_VALUE.ap_const_lv23_0 { PARAM_VALUE.ap_const_lv23_0 } {
	# Procedure called to update ap_const_lv23_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv23_0 { PARAM_VALUE.ap_const_lv23_0 } {
	# Procedure called to validate ap_const_lv23_0
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_0 { PARAM_VALUE.ap_const_lv32_0 } {
	# Procedure called to update ap_const_lv32_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_0 { PARAM_VALUE.ap_const_lv32_0 } {
	# Procedure called to validate ap_const_lv32_0
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_1 { PARAM_VALUE.ap_const_lv32_1 } {
	# Procedure called to update ap_const_lv32_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_1 { PARAM_VALUE.ap_const_lv32_1 } {
	# Procedure called to validate ap_const_lv32_1
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_10 { PARAM_VALUE.ap_const_lv32_10 } {
	# Procedure called to update ap_const_lv32_10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_10 { PARAM_VALUE.ap_const_lv32_10 } {
	# Procedure called to validate ap_const_lv32_10
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_11 { PARAM_VALUE.ap_const_lv32_11 } {
	# Procedure called to update ap_const_lv32_11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_11 { PARAM_VALUE.ap_const_lv32_11 } {
	# Procedure called to validate ap_const_lv32_11
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_12 { PARAM_VALUE.ap_const_lv32_12 } {
	# Procedure called to update ap_const_lv32_12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_12 { PARAM_VALUE.ap_const_lv32_12 } {
	# Procedure called to validate ap_const_lv32_12
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_17 { PARAM_VALUE.ap_const_lv32_17 } {
	# Procedure called to update ap_const_lv32_17 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_17 { PARAM_VALUE.ap_const_lv32_17 } {
	# Procedure called to validate ap_const_lv32_17
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_1E { PARAM_VALUE.ap_const_lv32_1E } {
	# Procedure called to update ap_const_lv32_1E when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_1E { PARAM_VALUE.ap_const_lv32_1E } {
	# Procedure called to validate ap_const_lv32_1E
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_3 { PARAM_VALUE.ap_const_lv32_3 } {
	# Procedure called to update ap_const_lv32_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_3 { PARAM_VALUE.ap_const_lv32_3 } {
	# Procedure called to validate ap_const_lv32_3
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_36 { PARAM_VALUE.ap_const_lv32_36 } {
	# Procedure called to update ap_const_lv32_36 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_36 { PARAM_VALUE.ap_const_lv32_36 } {
	# Procedure called to validate ap_const_lv32_36
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_4 { PARAM_VALUE.ap_const_lv32_4 } {
	# Procedure called to update ap_const_lv32_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_4 { PARAM_VALUE.ap_const_lv32_4 } {
	# Procedure called to validate ap_const_lv32_4
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_5 { PARAM_VALUE.ap_const_lv32_5 } {
	# Procedure called to update ap_const_lv32_5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_5 { PARAM_VALUE.ap_const_lv32_5 } {
	# Procedure called to validate ap_const_lv32_5
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_6 { PARAM_VALUE.ap_const_lv32_6 } {
	# Procedure called to update ap_const_lv32_6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_6 { PARAM_VALUE.ap_const_lv32_6 } {
	# Procedure called to validate ap_const_lv32_6
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_7 { PARAM_VALUE.ap_const_lv32_7 } {
	# Procedure called to update ap_const_lv32_7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_7 { PARAM_VALUE.ap_const_lv32_7 } {
	# Procedure called to validate ap_const_lv32_7
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_8 { PARAM_VALUE.ap_const_lv32_8 } {
	# Procedure called to update ap_const_lv32_8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_8 { PARAM_VALUE.ap_const_lv32_8 } {
	# Procedure called to validate ap_const_lv32_8
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_9 { PARAM_VALUE.ap_const_lv32_9 } {
	# Procedure called to update ap_const_lv32_9 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_9 { PARAM_VALUE.ap_const_lv32_9 } {
	# Procedure called to validate ap_const_lv32_9
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_A { PARAM_VALUE.ap_const_lv32_A } {
	# Procedure called to update ap_const_lv32_A when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_A { PARAM_VALUE.ap_const_lv32_A } {
	# Procedure called to validate ap_const_lv32_A
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_B { PARAM_VALUE.ap_const_lv32_B } {
	# Procedure called to update ap_const_lv32_B when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_B { PARAM_VALUE.ap_const_lv32_B } {
	# Procedure called to validate ap_const_lv32_B
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_C { PARAM_VALUE.ap_const_lv32_C } {
	# Procedure called to update ap_const_lv32_C when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_C { PARAM_VALUE.ap_const_lv32_C } {
	# Procedure called to validate ap_const_lv32_C
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_D { PARAM_VALUE.ap_const_lv32_D } {
	# Procedure called to update ap_const_lv32_D when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_D { PARAM_VALUE.ap_const_lv32_D } {
	# Procedure called to validate ap_const_lv32_D
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_E { PARAM_VALUE.ap_const_lv32_E } {
	# Procedure called to update ap_const_lv32_E when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_E { PARAM_VALUE.ap_const_lv32_E } {
	# Procedure called to validate ap_const_lv32_E
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_F { PARAM_VALUE.ap_const_lv32_F } {
	# Procedure called to update ap_const_lv32_F when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_F { PARAM_VALUE.ap_const_lv32_F } {
	# Procedure called to validate ap_const_lv32_F
	return true
}

proc update_PARAM_VALUE.ap_const_lv3_0 { PARAM_VALUE.ap_const_lv3_0 } {
	# Procedure called to update ap_const_lv3_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv3_0 { PARAM_VALUE.ap_const_lv3_0 } {
	# Procedure called to validate ap_const_lv3_0
	return true
}

proc update_PARAM_VALUE.ap_const_lv3_1 { PARAM_VALUE.ap_const_lv3_1 } {
	# Procedure called to update ap_const_lv3_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv3_1 { PARAM_VALUE.ap_const_lv3_1 } {
	# Procedure called to validate ap_const_lv3_1
	return true
}

proc update_PARAM_VALUE.ap_const_lv3_4 { PARAM_VALUE.ap_const_lv3_4 } {
	# Procedure called to update ap_const_lv3_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv3_4 { PARAM_VALUE.ap_const_lv3_4 } {
	# Procedure called to validate ap_const_lv3_4
	return true
}

proc update_PARAM_VALUE.ap_const_lv5_4 { PARAM_VALUE.ap_const_lv5_4 } {
	# Procedure called to update ap_const_lv5_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv5_4 { PARAM_VALUE.ap_const_lv5_4 } {
	# Procedure called to validate ap_const_lv5_4
	return true
}

proc update_PARAM_VALUE.ap_const_lv8_7F { PARAM_VALUE.ap_const_lv8_7F } {
	# Procedure called to update ap_const_lv8_7F when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv8_7F { PARAM_VALUE.ap_const_lv8_7F } {
	# Procedure called to validate ap_const_lv8_7F
	return true
}

proc update_PARAM_VALUE.ap_const_lv8_FF { PARAM_VALUE.ap_const_lv8_FF } {
	# Procedure called to update ap_const_lv8_FF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv8_FF { PARAM_VALUE.ap_const_lv8_FF } {
	# Procedure called to validate ap_const_lv8_FF
	return true
}

proc update_PARAM_VALUE.ap_const_lv9_181 { PARAM_VALUE.ap_const_lv9_181 } {
	# Procedure called to update ap_const_lv9_181 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv9_181 { PARAM_VALUE.ap_const_lv9_181 } {
	# Procedure called to validate ap_const_lv9_181
	return true
}


proc update_MODELPARAM_VALUE.ap_ST_st1_fsm_0 { MODELPARAM_VALUE.ap_ST_st1_fsm_0 PARAM_VALUE.ap_ST_st1_fsm_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st1_fsm_0}] ${MODELPARAM_VALUE.ap_ST_st1_fsm_0}
}

proc update_MODELPARAM_VALUE.ap_ST_st2_fsm_1 { MODELPARAM_VALUE.ap_ST_st2_fsm_1 PARAM_VALUE.ap_ST_st2_fsm_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st2_fsm_1}] ${MODELPARAM_VALUE.ap_ST_st2_fsm_1}
}

proc update_MODELPARAM_VALUE.ap_ST_st3_fsm_2 { MODELPARAM_VALUE.ap_ST_st3_fsm_2 PARAM_VALUE.ap_ST_st3_fsm_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st3_fsm_2}] ${MODELPARAM_VALUE.ap_ST_st3_fsm_2}
}

proc update_MODELPARAM_VALUE.ap_ST_st4_fsm_3 { MODELPARAM_VALUE.ap_ST_st4_fsm_3 PARAM_VALUE.ap_ST_st4_fsm_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st4_fsm_3}] ${MODELPARAM_VALUE.ap_ST_st4_fsm_3}
}

proc update_MODELPARAM_VALUE.ap_ST_st5_fsm_4 { MODELPARAM_VALUE.ap_ST_st5_fsm_4 PARAM_VALUE.ap_ST_st5_fsm_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st5_fsm_4}] ${MODELPARAM_VALUE.ap_ST_st5_fsm_4}
}

proc update_MODELPARAM_VALUE.ap_ST_st6_fsm_5 { MODELPARAM_VALUE.ap_ST_st6_fsm_5 PARAM_VALUE.ap_ST_st6_fsm_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st6_fsm_5}] ${MODELPARAM_VALUE.ap_ST_st6_fsm_5}
}

proc update_MODELPARAM_VALUE.ap_ST_st7_fsm_6 { MODELPARAM_VALUE.ap_ST_st7_fsm_6 PARAM_VALUE.ap_ST_st7_fsm_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st7_fsm_6}] ${MODELPARAM_VALUE.ap_ST_st7_fsm_6}
}

proc update_MODELPARAM_VALUE.ap_ST_st8_fsm_7 { MODELPARAM_VALUE.ap_ST_st8_fsm_7 PARAM_VALUE.ap_ST_st8_fsm_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st8_fsm_7}] ${MODELPARAM_VALUE.ap_ST_st8_fsm_7}
}

proc update_MODELPARAM_VALUE.ap_ST_st9_fsm_8 { MODELPARAM_VALUE.ap_ST_st9_fsm_8 PARAM_VALUE.ap_ST_st9_fsm_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st9_fsm_8}] ${MODELPARAM_VALUE.ap_ST_st9_fsm_8}
}

proc update_MODELPARAM_VALUE.ap_ST_st10_fsm_9 { MODELPARAM_VALUE.ap_ST_st10_fsm_9 PARAM_VALUE.ap_ST_st10_fsm_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st10_fsm_9}] ${MODELPARAM_VALUE.ap_ST_st10_fsm_9}
}

proc update_MODELPARAM_VALUE.ap_ST_st11_fsm_10 { MODELPARAM_VALUE.ap_ST_st11_fsm_10 PARAM_VALUE.ap_ST_st11_fsm_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st11_fsm_10}] ${MODELPARAM_VALUE.ap_ST_st11_fsm_10}
}

proc update_MODELPARAM_VALUE.ap_ST_st12_fsm_11 { MODELPARAM_VALUE.ap_ST_st12_fsm_11 PARAM_VALUE.ap_ST_st12_fsm_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st12_fsm_11}] ${MODELPARAM_VALUE.ap_ST_st12_fsm_11}
}

proc update_MODELPARAM_VALUE.ap_ST_st13_fsm_12 { MODELPARAM_VALUE.ap_ST_st13_fsm_12 PARAM_VALUE.ap_ST_st13_fsm_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st13_fsm_12}] ${MODELPARAM_VALUE.ap_ST_st13_fsm_12}
}

proc update_MODELPARAM_VALUE.ap_ST_st14_fsm_13 { MODELPARAM_VALUE.ap_ST_st14_fsm_13 PARAM_VALUE.ap_ST_st14_fsm_13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st14_fsm_13}] ${MODELPARAM_VALUE.ap_ST_st14_fsm_13}
}

proc update_MODELPARAM_VALUE.ap_ST_st15_fsm_14 { MODELPARAM_VALUE.ap_ST_st15_fsm_14 PARAM_VALUE.ap_ST_st15_fsm_14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st15_fsm_14}] ${MODELPARAM_VALUE.ap_ST_st15_fsm_14}
}

proc update_MODELPARAM_VALUE.ap_ST_st16_fsm_15 { MODELPARAM_VALUE.ap_ST_st16_fsm_15 PARAM_VALUE.ap_ST_st16_fsm_15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st16_fsm_15}] ${MODELPARAM_VALUE.ap_ST_st16_fsm_15}
}

proc update_MODELPARAM_VALUE.ap_ST_st17_fsm_16 { MODELPARAM_VALUE.ap_ST_st17_fsm_16 PARAM_VALUE.ap_ST_st17_fsm_16 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st17_fsm_16}] ${MODELPARAM_VALUE.ap_ST_st17_fsm_16}
}

proc update_MODELPARAM_VALUE.ap_ST_st18_fsm_17 { MODELPARAM_VALUE.ap_ST_st18_fsm_17 PARAM_VALUE.ap_ST_st18_fsm_17 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st18_fsm_17}] ${MODELPARAM_VALUE.ap_ST_st18_fsm_17}
}

proc update_MODELPARAM_VALUE.ap_ST_st19_fsm_18 { MODELPARAM_VALUE.ap_ST_st19_fsm_18 PARAM_VALUE.ap_ST_st19_fsm_18 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_ST_st19_fsm_18}] ${MODELPARAM_VALUE.ap_ST_st19_fsm_18}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_0 { MODELPARAM_VALUE.ap_const_lv32_0 PARAM_VALUE.ap_const_lv32_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_0}] ${MODELPARAM_VALUE.ap_const_lv32_0}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_A { MODELPARAM_VALUE.ap_const_lv32_A PARAM_VALUE.ap_const_lv32_A } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_A}] ${MODELPARAM_VALUE.ap_const_lv32_A}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_10 { MODELPARAM_VALUE.ap_const_lv32_10 PARAM_VALUE.ap_const_lv32_10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_10}] ${MODELPARAM_VALUE.ap_const_lv32_10}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_11 { MODELPARAM_VALUE.ap_const_lv32_11 PARAM_VALUE.ap_const_lv32_11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_11}] ${MODELPARAM_VALUE.ap_const_lv32_11}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_1 { MODELPARAM_VALUE.ap_const_lv32_1 PARAM_VALUE.ap_const_lv32_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_1}] ${MODELPARAM_VALUE.ap_const_lv32_1}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_3 { MODELPARAM_VALUE.ap_const_lv32_3 PARAM_VALUE.ap_const_lv32_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_3}] ${MODELPARAM_VALUE.ap_const_lv32_3}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_4 { MODELPARAM_VALUE.ap_const_lv32_4 PARAM_VALUE.ap_const_lv32_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_4}] ${MODELPARAM_VALUE.ap_const_lv32_4}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_5 { MODELPARAM_VALUE.ap_const_lv32_5 PARAM_VALUE.ap_const_lv32_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_5}] ${MODELPARAM_VALUE.ap_const_lv32_5}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_8 { MODELPARAM_VALUE.ap_const_lv32_8 PARAM_VALUE.ap_const_lv32_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_8}] ${MODELPARAM_VALUE.ap_const_lv32_8}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_B { MODELPARAM_VALUE.ap_const_lv32_B PARAM_VALUE.ap_const_lv32_B } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_B}] ${MODELPARAM_VALUE.ap_const_lv32_B}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_C { MODELPARAM_VALUE.ap_const_lv32_C PARAM_VALUE.ap_const_lv32_C } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_C}] ${MODELPARAM_VALUE.ap_const_lv32_C}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_E { MODELPARAM_VALUE.ap_const_lv32_E PARAM_VALUE.ap_const_lv32_E } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_E}] ${MODELPARAM_VALUE.ap_const_lv32_E}
}

proc update_MODELPARAM_VALUE.ap_const_lv3_0 { MODELPARAM_VALUE.ap_const_lv3_0 PARAM_VALUE.ap_const_lv3_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv3_0}] ${MODELPARAM_VALUE.ap_const_lv3_0}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_12 { MODELPARAM_VALUE.ap_const_lv32_12 PARAM_VALUE.ap_const_lv32_12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_12}] ${MODELPARAM_VALUE.ap_const_lv32_12}
}

proc update_MODELPARAM_VALUE.ap_const_lv3_4 { MODELPARAM_VALUE.ap_const_lv3_4 PARAM_VALUE.ap_const_lv3_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv3_4}] ${MODELPARAM_VALUE.ap_const_lv3_4}
}

proc update_MODELPARAM_VALUE.ap_const_lv3_1 { MODELPARAM_VALUE.ap_const_lv3_1 PARAM_VALUE.ap_const_lv3_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv3_1}] ${MODELPARAM_VALUE.ap_const_lv3_1}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_17 { MODELPARAM_VALUE.ap_const_lv32_17 PARAM_VALUE.ap_const_lv32_17 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_17}] ${MODELPARAM_VALUE.ap_const_lv32_17}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_1E { MODELPARAM_VALUE.ap_const_lv32_1E PARAM_VALUE.ap_const_lv32_1E } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_1E}] ${MODELPARAM_VALUE.ap_const_lv32_1E}
}

proc update_MODELPARAM_VALUE.ap_const_lv9_181 { MODELPARAM_VALUE.ap_const_lv9_181 PARAM_VALUE.ap_const_lv9_181 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv9_181}] ${MODELPARAM_VALUE.ap_const_lv9_181}
}

proc update_MODELPARAM_VALUE.ap_const_lv8_7F { MODELPARAM_VALUE.ap_const_lv8_7F PARAM_VALUE.ap_const_lv8_7F } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv8_7F}] ${MODELPARAM_VALUE.ap_const_lv8_7F}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_36 { MODELPARAM_VALUE.ap_const_lv32_36 PARAM_VALUE.ap_const_lv32_36 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_36}] ${MODELPARAM_VALUE.ap_const_lv32_36}
}

proc update_MODELPARAM_VALUE.ap_const_lv8_FF { MODELPARAM_VALUE.ap_const_lv8_FF PARAM_VALUE.ap_const_lv8_FF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv8_FF}] ${MODELPARAM_VALUE.ap_const_lv8_FF}
}

proc update_MODELPARAM_VALUE.ap_const_lv23_0 { MODELPARAM_VALUE.ap_const_lv23_0 PARAM_VALUE.ap_const_lv23_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv23_0}] ${MODELPARAM_VALUE.ap_const_lv23_0}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_6 { MODELPARAM_VALUE.ap_const_lv32_6 PARAM_VALUE.ap_const_lv32_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_6}] ${MODELPARAM_VALUE.ap_const_lv32_6}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_7 { MODELPARAM_VALUE.ap_const_lv32_7 PARAM_VALUE.ap_const_lv32_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_7}] ${MODELPARAM_VALUE.ap_const_lv32_7}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_9 { MODELPARAM_VALUE.ap_const_lv32_9 PARAM_VALUE.ap_const_lv32_9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_9}] ${MODELPARAM_VALUE.ap_const_lv32_9}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_D { MODELPARAM_VALUE.ap_const_lv32_D PARAM_VALUE.ap_const_lv32_D } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_D}] ${MODELPARAM_VALUE.ap_const_lv32_D}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_F { MODELPARAM_VALUE.ap_const_lv32_F PARAM_VALUE.ap_const_lv32_F } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_F}] ${MODELPARAM_VALUE.ap_const_lv32_F}
}

proc update_MODELPARAM_VALUE.ap_const_lv5_4 { MODELPARAM_VALUE.ap_const_lv5_4 PARAM_VALUE.ap_const_lv5_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv5_4}] ${MODELPARAM_VALUE.ap_const_lv5_4}
}

