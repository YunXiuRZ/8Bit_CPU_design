/*`include "BitWiseAndGate_8B.v"*/
module BitWiseAndGate_8B_t ();
    reg[7:0] input_a, input_b, output_z;

    BitWiseAndGate_8B a(input_a, input_b, output_z);

    task test(input[7:0] A, input[7:0] B);
        input_a = A;
        input_b = B;
        #100;
    endtask

    initial begin
        $dumpfile("BitWiseAndGate_8B.vcd");
        $dumpvars;

        test(8'b00000000, 8'b00000000);
        test(8'b11111111, 8'b11111111);
        test(8'b00001111, 8'b11110000);
        test(8'b00111100, 8'b01100110);

        $finish;
    end
    
endmodule