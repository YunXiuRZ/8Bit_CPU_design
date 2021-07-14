/*`include "Replicater_8B.v"*/
module Replicater_8B_t ();
    reg input_a;
    reg[7:0] output_z;

    Replicater_8B b(input_a, output_z);


    initial begin
        $dumpfile("Replicater_8B.vcd");
        $dumpvars;

        input_a = 8'b00000000;
        #100;
        input_a = 8'b11111111;
        #100;

        $finish;
    end
    
endmodule