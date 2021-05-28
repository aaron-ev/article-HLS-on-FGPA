############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FFT_DIT4_v1
set_top FFT_DIT4_FUNC
add_files FFT4v4.c
add_files FFT_DIT4_out.gold.dat
add_files FFT_DIT4_v2.h
add_files calc_index.c
add_files div_floor.c
add_files four_raised_to_x.c
add_files -tb FFT4v4_test.c
open_solution "sol_pipe_top"
set_part {xc7k325tffg900-2} -tool vivado
create_clock -period 10 -name default
source "./FFT_DIT4_v1/sol_pipe_top/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
