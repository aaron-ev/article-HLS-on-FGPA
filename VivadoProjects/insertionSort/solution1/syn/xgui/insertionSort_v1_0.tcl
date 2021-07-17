# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ap_ST_st1_fsm_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st2_fsm_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st3_fsm_2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st4_fsm_3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st5_fsm_4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_ST_st6_fsm_5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv16_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv32_8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv9_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv9_100" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ap_const_lv9_1FF" -parent ${Page_0}


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

proc update_PARAM_VALUE.ap_const_lv16_0 { PARAM_VALUE.ap_const_lv16_0 } {
	# Procedure called to update ap_const_lv16_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv16_0 { PARAM_VALUE.ap_const_lv16_0 } {
	# Procedure called to validate ap_const_lv16_0
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

proc update_PARAM_VALUE.ap_const_lv32_2 { PARAM_VALUE.ap_const_lv32_2 } {
	# Procedure called to update ap_const_lv32_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_2 { PARAM_VALUE.ap_const_lv32_2 } {
	# Procedure called to validate ap_const_lv32_2
	return true
}

proc update_PARAM_VALUE.ap_const_lv32_3 { PARAM_VALUE.ap_const_lv32_3 } {
	# Procedure called to update ap_const_lv32_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_3 { PARAM_VALUE.ap_const_lv32_3 } {
	# Procedure called to validate ap_const_lv32_3
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

proc update_PARAM_VALUE.ap_const_lv32_8 { PARAM_VALUE.ap_const_lv32_8 } {
	# Procedure called to update ap_const_lv32_8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv32_8 { PARAM_VALUE.ap_const_lv32_8 } {
	# Procedure called to validate ap_const_lv32_8
	return true
}

proc update_PARAM_VALUE.ap_const_lv9_1 { PARAM_VALUE.ap_const_lv9_1 } {
	# Procedure called to update ap_const_lv9_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv9_1 { PARAM_VALUE.ap_const_lv9_1 } {
	# Procedure called to validate ap_const_lv9_1
	return true
}

proc update_PARAM_VALUE.ap_const_lv9_100 { PARAM_VALUE.ap_const_lv9_100 } {
	# Procedure called to update ap_const_lv9_100 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv9_100 { PARAM_VALUE.ap_const_lv9_100 } {
	# Procedure called to validate ap_const_lv9_100
	return true
}

proc update_PARAM_VALUE.ap_const_lv9_1FF { PARAM_VALUE.ap_const_lv9_1FF } {
	# Procedure called to update ap_const_lv9_1FF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ap_const_lv9_1FF { PARAM_VALUE.ap_const_lv9_1FF } {
	# Procedure called to validate ap_const_lv9_1FF
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

proc update_MODELPARAM_VALUE.ap_const_lv32_0 { MODELPARAM_VALUE.ap_const_lv32_0 PARAM_VALUE.ap_const_lv32_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_0}] ${MODELPARAM_VALUE.ap_const_lv32_0}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_2 { MODELPARAM_VALUE.ap_const_lv32_2 PARAM_VALUE.ap_const_lv32_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_2}] ${MODELPARAM_VALUE.ap_const_lv32_2}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_4 { MODELPARAM_VALUE.ap_const_lv32_4 PARAM_VALUE.ap_const_lv32_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_4}] ${MODELPARAM_VALUE.ap_const_lv32_4}
}

proc update_MODELPARAM_VALUE.ap_const_lv9_1 { MODELPARAM_VALUE.ap_const_lv9_1 PARAM_VALUE.ap_const_lv9_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv9_1}] ${MODELPARAM_VALUE.ap_const_lv9_1}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_3 { MODELPARAM_VALUE.ap_const_lv32_3 PARAM_VALUE.ap_const_lv32_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_3}] ${MODELPARAM_VALUE.ap_const_lv32_3}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_1 { MODELPARAM_VALUE.ap_const_lv32_1 PARAM_VALUE.ap_const_lv32_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_1}] ${MODELPARAM_VALUE.ap_const_lv32_1}
}

proc update_MODELPARAM_VALUE.ap_const_lv16_0 { MODELPARAM_VALUE.ap_const_lv16_0 PARAM_VALUE.ap_const_lv16_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv16_0}] ${MODELPARAM_VALUE.ap_const_lv16_0}
}

proc update_MODELPARAM_VALUE.ap_const_lv9_100 { MODELPARAM_VALUE.ap_const_lv9_100 PARAM_VALUE.ap_const_lv9_100 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv9_100}] ${MODELPARAM_VALUE.ap_const_lv9_100}
}

proc update_MODELPARAM_VALUE.ap_const_lv9_1FF { MODELPARAM_VALUE.ap_const_lv9_1FF PARAM_VALUE.ap_const_lv9_1FF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv9_1FF}] ${MODELPARAM_VALUE.ap_const_lv9_1FF}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_8 { MODELPARAM_VALUE.ap_const_lv32_8 PARAM_VALUE.ap_const_lv32_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_8}] ${MODELPARAM_VALUE.ap_const_lv32_8}
}

proc update_MODELPARAM_VALUE.ap_const_lv32_5 { MODELPARAM_VALUE.ap_const_lv32_5 PARAM_VALUE.ap_const_lv32_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ap_const_lv32_5}] ${MODELPARAM_VALUE.ap_const_lv32_5}
}

