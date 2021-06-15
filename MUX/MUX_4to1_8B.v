`include "MUX_2to1_8B.v"
module MUX_4to1_8B (
	input[7:0] a,
	input[7:0] b,
	input[7:0] c,
	input[7:0] d,
	input select0,
	input select1,
	output[7:0] result
);
	wire[7:0] w1, w2;
	
	MUX_2to1_8B m1(a, b, select0, w1);
	MUX_2to1_8B m2(c, d, select0, w2);
	MUX_2to1_8B m3(w1, w2, select1, result);

endmodule