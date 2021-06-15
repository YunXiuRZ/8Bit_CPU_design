`include "MUX_2to1_1B.v"
module MUX_2to1_8B (
	input[7:0] a,
	input[7:0] b,
	input select,
	output[7:0] result);
	
	MUX_2to1_1B m1(a[0], b[0], select, result[0]);
	MUX_2to1_1B m2(a[1], b[1], select, result[1]);
	MUX_2to1_1B m3(a[2], b[2], select, result[2]);
	MUX_2to1_1B m4(a[3], b[3], select, result[3]);
	MUX_2to1_1B m5(a[4], b[4], select, result[4]);
	MUX_2to1_1B m6(a[5], b[5], select, result[5]);
	MUX_2to1_1B m7(a[6], b[6], select, result[6]);
	MUX_2to1_1B m8(a[7], b[7], select, result[7]);
	

endmodule