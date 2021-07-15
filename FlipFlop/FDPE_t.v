//`include "FDPE.v"
module FDPE_t ();
    reg input_d, input_clock_enable, input_preset, output_q, clock;

    FDPE fdpe(input_d, clock, input_clock_enable, input_preset, output_q);

    task test(D, CE, PRE);
        input_d = D;
        input_clock_enable = CE;
        input_preset = PRE;
        #100;
    endtask

    initial begin
        clock = 0;
        $dumpfile("FDPE.vcd");
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