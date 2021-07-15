############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project selectionSort
set_top selectionSort
add_files selectionSort.cpp
add_files -tb selectionSort_tb.cpp
open_solution "solution1"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 10 -name default
#source "./selectionSort/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
