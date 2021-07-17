
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set A_group [add_wave_group A(memory) -into $cinoutgroup]
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/A_q0 -into $A_group -radix hex
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/A_d0 -into $A_group -radix hex
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/A_we0 -into $A_group -color #ffff00 -radix hex
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/A_ce0 -into $A_group -color #ffff00 -radix hex
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/A_address0 -into $A_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set operation_group [add_wave_group operation(wire) -into $cinputgroup]
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/operation_V -into $operation_group -radix hex
set indexOutputData_group [add_wave_group indexOutputData(wire) -into $cinputgroup]
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/indexOutputData -into $indexOutputData_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/ap_start -into $blocksiggroup
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/ap_done -into $blocksiggroup
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/ap_idle -into $blocksiggroup
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_selectionSort_top/AESL_inst_selectionSort/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_selectionSort_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_selectionSort_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_selectionSort_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_selectionSort_top/LENGTH_indexOutputData -into $tb_portdepth_group -radix hex
add_wave /apatb_selectionSort_top/LENGTH_operation_V -into $tb_portdepth_group -radix hex
add_wave /apatb_selectionSort_top/LENGTH_A -into $tb_portdepth_group -radix hex
add_wave /apatb_selectionSort_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_A_group [add_wave_group A(memory) -into $tbcinoutgroup]
add_wave /apatb_selectionSort_top/A_q0 -into $tb_A_group -radix hex
add_wave /apatb_selectionSort_top/A_d0 -into $tb_A_group -radix hex
add_wave /apatb_selectionSort_top/A_we0 -into $tb_A_group -color #ffff00 -radix hex
add_wave /apatb_selectionSort_top/A_ce0 -into $tb_A_group -color #ffff00 -radix hex
add_wave /apatb_selectionSort_top/A_address0 -into $tb_A_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_selectionSort_top/ap_return -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_operation_group [add_wave_group operation(wire) -into $tbcinputgroup]
add_wave /apatb_selectionSort_top/operation_V -into $tb_operation_group -radix hex
set tb_indexOutputData_group [add_wave_group indexOutputData(wire) -into $tbcinputgroup]
add_wave /apatb_selectionSort_top/indexOutputData -into $tb_indexOutputData_group -radix hex
save_wave_config selectionSort.wcfg
run all
quit

