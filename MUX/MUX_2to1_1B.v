module MUX_2to1_1B (
	input a,
	input b,
	input select,
	output result);
	wire w1, w2, w3;

	not not1(w1, select);
	and and1(w2, a, w1);
	and and2(w3, select, b);
	or or1(result, w2, w3);

endmodule