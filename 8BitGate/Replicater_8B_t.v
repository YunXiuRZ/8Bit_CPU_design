`include "Replicater_8B.v"
module Replicater_8B_t ();
    reg[7:0] input_a, output_z;

    Replicater_8B b(input_a, output_z);


    initial begin
        $dumpfile("result.vcd");
        $dumpvars;

        input_a = 8'b00000000;
        #100;
        input_a = 8'b11111111;
        #100;

        $finish;
    end
    
endmodule