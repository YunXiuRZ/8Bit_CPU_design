/*`include "Register_16B.v"*/
module Register_16B_t ();
    reg[15:0] input_d, output_q;
    reg clock, input_clock_enable, input_clear;

    Register_16B r(input_d, clock, input_clock_enable, input_clear, output_q);

    task test(input[15:0] D, CE, CLR);
        input_d = D;
        input_clock_enable = CE;
        input_clear = CLR;
        #100;
    endtask

    initial begin
        clock = 0;
        $dumpfile("Register_16B.vcd");
        $dumpvars;

        test(16'b0000000011111111, 0, 0);
        test(16'b0000000011111111, 1, 0);
        test(16'b1010101010101010, 1, 0);
        test(16'b0101010101010101, 1, 1);
        $finish;
    end

    always #25 begin
        clock = ~clock;
    end
    
endmodule