
module topInsertionSort
(
	input   ap_clk,
	input   ap_rst,
	input   ap_start,
	output   ap_done,
	output   ap_idle,
	output   ap_ready,
	input  [15:0] dataIn,
	input  [7:0] posOutData,
	output  [15:0] ap_return
);


insertionSort
(
	.ap_clk(ap_clk),
	.ap_rst(ap_rst),
	.ap_start(ap_start),
	.ap_done(ap_done),
	.ap_idle(ap_idle),
	.ap_ready(ap_ready),
	.dataIn(dataIn),
	.posOutData(posOutData),
	.ap_return(ap_return)
);

endmodule