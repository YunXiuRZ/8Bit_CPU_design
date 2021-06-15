`include "MUX_2to1_1B.v"
module MUX_2to1_1B_t;
	reg output_result, input_a, input_b, input_select;
	

	MUX_2to1_1B M(input_a, input_b, input_select, output_result);

	task test(input a, input b, input select);
		input_a = a;
		input_b = b;
		input_select = select;
		#100;
	endtask

	initial begin
		$dumpfile("result.vcd");
		$dumpvars;

		integer i;
		for (i = 3'b000; i <= 3'b111; i = i + 3'b001) begin
			test(i[0], i[1], i[2]);
		end
		$finish

		/*test(1'b0, 1'b0, 1'b0);
		test(1'b1, 1'b0, 1'b0);
		test(1'b0, 1'b1, 1'b0);
		test(1'b1, 1'b1, 1'b0);
		test(1'b0, 1'b0, 1'b1);
		test(1'b1, 1'b0, 1'b1);
		test(1'b0, 1'b1, 1'b1);
		test(1'b1, 1'b1, 1'b1);*/
	end


endmodule