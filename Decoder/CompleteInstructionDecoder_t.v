`include "SequenceGenerator.v"
`include "CompleteInstructionDecoder.v"
module CompleteInstructionDecoder_t ();
    reg[7:0] input_a;
    reg clock,
        input_clock_enable,
        input_clear,
        fetch, 
        decode, 
        execute, 
        increment;
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

    SequenceGenerator SG(clock, 
                         input_clock_enable, 
                         input_clear, 
                         fetch, 
                         decode, 
                         execute,
                         increment);
    CompleteInstructionDecoder CID(input_a, decode, execute, output_ip, 
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

        clock = 0;
        input_clear = 1;
        input_clock_enable = 1;
        #100;
        input_clear = 0;

        input_a = 8'b00000000;
        #100;
        input_a = 8'b01000000;
        #100;
        input_a = 8'b00010000;
        #100;
        input_a = 8'b01100000;
        #100;
        input_a = 8'b10100000;
        #100;
        input_a = 8'b11100000;
        #100;
        input_a = 8'b10000000;
        #100;
        input_a = 8'b10010000;
        #100;
        input_a = 8'b10011000;
        #100;
        input_a = 8'b10010100;
        #100;
        input_a = 8'b10011100;
        #100;
        $finish;
    end

    always #20 begin
        clock = ~clock;
    end
    
endmodule