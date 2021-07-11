`include "Join_16B.v"
module Join_16B_t ();
    
    reg[7:0] input_low, input_high;
    reg[15:0] output_z;

    Join_16B j(input_low, input_high, output_z);

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;

        input_low = 8'b1010_0000;
        input_high = 8'b0101_1100;
        #50;

        $finish;
    end

endmodule