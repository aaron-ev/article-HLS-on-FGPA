
call xelab xil_defaultlib.apatb_insertionSort_top -prj insertionSort.prj --lib "ieee_proposed=./ieee_proposed" -s insertionSort -debug wave
call xsim --noieeewarnings insertionSort -tclbatch insertionSort.tcl

