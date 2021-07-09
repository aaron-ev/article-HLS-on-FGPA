############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project selection_sort
set_top selectionSort
add_files selection_sort.c
add_files -tb selection_sort_tb.c
open_solution "solution1"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 10 -name default
#source "./selection_sort/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
