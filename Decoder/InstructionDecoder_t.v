`include "InstructionDecoder.v"
module InstructionDecoder_t ();
    reg[7:0] input_a;
    reg output_ip, 
        output_op, 
        output_load, 
        output_add, 
        output_jump, 
        output_jumpz, 
        output_jumpnz, 
        output_jumpc, 
        output_jumpnc, 
        output_sub, 
        output_bitand;

    InstructionDecoder id(input_a, output_ip, 
        output_op, 
        output_load, 
        output_add, 
        output_jump, 
        output_jumpz, 
        output_jumpnz, 
        output_jumpc, 
        output_jumpnc, 
        output_sub, 
        output_bitand);

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;
        input_a = 8'b00000000;
        #50;
        input_a = 8'b01000000;
        #50;
        input_a = 8'b00010000;
        #50;
        input_a = 8'b01100000;
        #50;
        input_a = 8'b10100000;
        #50;
        input_a = 8'b11100000;
        #50;
        input_a = 8'b10000000;
        #50;
        input_a = 8'b10010000;
        #50;
        input_a = 8'b10011000;
        #50;
        input_a = 8'b10010100;
        #50;
        input_a = 8'b10011100;
        #50;
        $finish;
    end

endmodule