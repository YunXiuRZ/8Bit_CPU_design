`include "FullAdder_1B.v"
module FullAdder_1B_t ();
    reg input_a, input_b, input_carry, output_carry, output_sum;
    reg[3:0] i;

    FullAdder_1B f(input_a, input_b, input_carry, output_carry, output_sum);

    task test(input A, input B, input carry);
        input_a = A;
        input_b = B;
        input_carry = carry;
        #100;
    endtask

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;

        for (i = 4'b0000; i < 4'b1000; i = i + 4'b0001) begin
            test(i[0], i[1], i[2]);
        end
        $finish;
    end
    
endmodule