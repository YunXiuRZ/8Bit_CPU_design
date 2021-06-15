`include "Register_4B.v"
module Register_4B_t ();
    reg[3:0] input_d, output_q;
    reg clock, input_clock_enable, input_clear;

    Register_4B r(input_d, clock, input_clock_enable, input_clear, output_q);

    task test(input[3:0] D, CE, CLR);
        input_d = D;
        input_clock_enable = CE;
        input_clear = CLR;
        #100;
    endtask

    initial begin
        clock = 0;
        $dumpfile("result.vcd");
        $dumpvars;

        test(4'b0000, 0, 0);
        test(4'b0000, 1, 0);
        test(4'b1111, 1, 0);
        test(4'b1111, 1, 1);
        $finish;
    end

    always #25 begin
        clock = ~clock;
    end

endmodule