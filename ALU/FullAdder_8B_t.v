//`include "FullAdder_8B.v"
module FullAdder_8B_t ();
    reg[7:0] input_a, input_b, output_sum;
    reg input_carry, output_carry;
    reg[3:0] i;

    FullAdder_8B f(input_a, input_b, input_carry, output_carry, output_sum);

    task test(input A, input B, input C);
        if(A == 0)begin
            input_a = 8'b00000000;
        end
        else begin
            input_a = 8'b11111111;
        end
        if(B == 0)begin
            input_b = 8'b00000000;
        end
        else begin
            input_b = 8'b11111111;
        end
        input_carry = C;
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