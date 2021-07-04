`include "FDC.v"
module FDC_t ();
    reg input_d, input_clear, output_q, clock;

    FDC fdc(input_d, clock, input_clear, output_q);

    task test(D, CLR);
        input_d = D;
        input_clear = CLR;
        #100;
    endtask

    initial begin
        clock = 0;
        $dumpfile("result.vcd");
        $dumpvars;

        test(0, 0);
        test(0, 1);
        test(1, 1);
        test(0, 0);
        test(1, 0);
        
        $finish;
    end

    always #25 begin
        clock = ~clock;
    end
    
endmodule