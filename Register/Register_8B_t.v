/*`include "Register_8B.v"*/
module Register_8B_t ();
    reg[7:0] input_d, output_q;
    reg clock, input_clock_enable, input_clear;

    Register_8B r(input_d, clock, input_clock_enable, input_clear, output_q);

    task test(input[7:0] D, CE, CLR);
        input_d = D;
        input_clock_enable = CE;
        input_clear = CLR;
        #100;
    endtask

    initial begin
        clock = 0;
        $dumpfile("Register_8B.vcd");
        $dumpvars;

        test(8'b00000000, 0, 0);
        test(8'b00000000, 1, 0);
        test(8'b11111111, 1, 0);
        test(8'b11111111, 1, 1);
        $finish;
    end

    always #25 begin
        clock = ~clock;
    end
    
endmodule