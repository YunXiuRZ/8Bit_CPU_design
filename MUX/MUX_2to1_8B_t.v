`include "MUX_2to1_8B.v"
module MUX_2to1_8B_t;
	reg input_select;
	reg[7:0] output_result;
	reg[7:0] input_a, input_b;

	task test(input[7:0] a, input[7:0] b, input select);
		input_a = a;
		input_b = b;
		input_select = select;
		#100;
	endtask

	MUX_2to1_8B M(input_a, input_b, input_select, output_result);

	initial begin
		$dumpfile("result.vcd");
		$dumpvars;

		test(8'b00000000, 8'b00000000, 1'b0);
		test(8'b11111111, 8'b00000000, 1'b0);
		test(8'b00000000, 8'b11111111, 1'b0);
		test(8'b11111111, 8'b11111111, 1'b0);
		test(8'b00000000, 8'b00000000, 1'b1);
		test(8'b11111111, 8'b00000000, 1'b1);
		test(8'b00000000, 8'b11111111, 1'b1);
		test(8'b11111111, 8'b11111111, 1'b1);
		$finish
		
	end


endmodule