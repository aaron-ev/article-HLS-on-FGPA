############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project heapSort
set_top heapSort_noRecurv
add_files heapSort.c
add_files -tb heapSort_tb.c
open_solution "solution1"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 10 -name default
#source "./heapSort/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
