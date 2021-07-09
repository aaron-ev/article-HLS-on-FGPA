
call xelab xil_defaultlib.apatb_heapSort_top -prj heapSort.prj --lib "ieee_proposed=./ieee_proposed" -s heapSort -debug wave
call xsim --noieeewarnings heapSort -tclbatch heapSort.tcl

