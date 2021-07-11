//`include "ALU.v"
module ALU_t ();
    reg[7:0] input_a, input_b, output_data;
    reg input_s0, input_s1, input_s2, input_s3, input_s4, output_carry;

    ALU a(input_a, input_b, input_s0, input_s1, input_s2, input_s3, input_s4, output_data, output_carry);

    task test(S0, S1, S2, S3, S4);
        input_s0 = S0;
        input_s1 = S1;
        input_s2 = S2;
        input_s3 = S3;
        input_s4 = S4;
        #100;
    endtask

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;

        input_a = 8'b11111000;
        input_b = 8'b00011111;

        test(0, 0, 0, 0, 0);
        test(1, 0, 0, 0, 0);
        test(0, 1, 0, 0, 0);
        test(1, 1, 0, 0, 0);
        test(0, 0, 1, 1, 0);
        test(0, 0, 1, 0, 1);
        test(0, 0, 0, 0, 1);
        test(0, 0, 1, 0, 0);
        test(0, 0, 0, 1, 0);
        $finish;
        

    end
    
endmodule