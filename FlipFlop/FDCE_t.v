//`include "FDCE.v"
module FDCE_t ();
    reg input_d, input_clock_enable, input_clear, output_q, clock;

    FDCE fdce(input_d, clock, input_clock_enable, input_clear, output_q);

    task test(D, CE, CLR);
        input_d = D;
        input_clock_enable = CE;
        input_clear = CLR;
        #100;
    endtask

    initial begin
        clock = 0;
        $dumpfile("FDCE.vcd");
        $dumpvars;

        test(1, 1, 0);
        test(0, 1, 0);
        test(0, 1, 1);
        test(1, 1, 1);
        test(1, 0, 0);
        test(1, 1, 0);
        test(0, 0, 0);
        $finish;
    end

    always #25 begin
        clock = ~clock;
    end
    
endmodule