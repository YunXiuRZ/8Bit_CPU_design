/*`include "NorGate_8B.v"*/
module NorGate_8B_t ();

    reg[7:0] input_a;
    reg output_z;

    NorGate_8B n(input_a, output_z);

    initial begin
        $dumpfile("NorGate_8B.vcd");
        $dumpvars;

        input_a = 8'b0000_0000;#50
        input_a = 8'b1001_1111;#50
        input_a = 8'b1100_0101;#50
        input_a = 8'b1111_1111;#50

        $finish;
        
    end
    
endmodule