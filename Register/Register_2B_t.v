/*`include "Register_2B.v"*/
module Register_2B_t ();
    reg[1:0] input_d, output_q;
    reg clock, input_clock_enable, input_clear;

    Register_2B r(input_d[0], input_d[1], clock, input_clock_enable, input_clear, output_q[0], output_q[1]);

    task test(input[1:0] D, CE, CLR);
        input_d = D;
        input_clock_enable = CE;
        input_clear = CLR;
        #100;
    endtask

    initial begin
        clock = 0;
        $dumpfile("Register_2B.vcd");
        $dumpvars;

        test(2'b00, 0, 0);
        test(2'b00, 1, 0);
        test(2'b11, 1, 0);
        test(2'b11, 1, 1);
        $finish;
    end

    always #25 begin
        clock = ~clock;
    end
    
endmodule