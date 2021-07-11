//`include "HalfAdder_1B.v"
module HalfAdder_1B_t();
    reg input_a, input_b, output_carry, output_sum;
    reg[2:0] i;

    HalfAdder_1B h(input_a, input_b, output_carry, output_sum);

    task test(input A, input B);
        input_a = A;
        input_b = B;
        #100;
    endtask

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;

        for (i = 3'b000; i < 3'b100; i = i + 3'b001) begin
            test(i[0], i[1]);
        end
        $finish;
    end
    
endmodule