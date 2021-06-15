`include "SequenceGenerator.v"
module SequenceGenerator_t ();
    reg clock, 
        input_clock_enable, 
        input_clear, 
        output_fetch, 
        output_decode, 
        output_execute, 
        output_increment;

    SequenceGenerator sg(clock, 
                         input_clock_enable, 
                         input_clear, 
                         output_fetch, 
                         output_decode, 
                         output_execute,
                         output_increment);
    
    task test(CE, CLR);
        input_clock_enable = CE;
        input_clear = CLR;
        #100;
    endtask

    initial begin
        clock = 0;
        $dumpfile("result.vcd");
        $dumpvars;

        test(1, 1);
        test(1, 0);
        test(1, 1);
        #100;
        $finish;
    end

    always #20 begin
        clock = ~clock;
    end
    
endmodule