
call xelab xil_defaultlib.apatb_selectionSort_top -prj selectionSort.prj --lib "ieee_proposed=./ieee_proposed" -s selectionSort -debug wave
call xsim --noieeewarnings selectionSort -tclbatch selectionSort.tcl

