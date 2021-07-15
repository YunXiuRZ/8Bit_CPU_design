//`include "MUX_4to1_8B.v"
module MUX_4to1_8B_t;
	reg input_select1, input_select2;
	reg[7:0] output_result;
	reg[7:0] input_a, input_b, input_c, input_d;

	MUX_4to1_8B M(input_a, input_b, input_c, input_d, input_select1, input_select2, output_result);

	task test(input[7:0] a, input[7:0] b, input[7:0] c, input[7:0] d, input select1, input select2);
		input_a = a;
		input_b = b;
		input_c = c;
		input_d = d;
		input_select1 = select1;
		input_select2 = select2;
		#100;
	endtask

	initial begin
		$dumpfile("MUX_4to1_8B.vcd");
		$dumpvars;

		test(8'b00000000, 8'b11110000, 8'b00001111, 8'b11111111, 1'b0, 1'b0);
		test(8'b00000000, 8'b11110000, 8'b00001111, 8'b11111111, 1'b1, 1'b0);
		test(8'b00000000, 8'b11110000, 8'b00001111, 8'b11111111, 1'b0, 1'b1);
		test(8'b00000000, 8'b11110000, 8'b00001111, 8'b11111111, 1'b1, 1'b1);
		$finish;
		
		
	end


endmodule