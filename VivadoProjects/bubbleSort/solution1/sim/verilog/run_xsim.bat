
call xelab xil_defaultlib.apatb_bubbleSort_top -prj bubbleSort.prj --lib "ieee_proposed=./ieee_proposed" -s bubbleSort -debug wave
call xsim --noieeewarnings bubbleSort -tclbatch bubbleSort.tcl

