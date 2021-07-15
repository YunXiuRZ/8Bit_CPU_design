//`include "Decoder.v"
module Decoder_t ();
    reg[7:0] ip_IR;
    reg ip_carry, ip_zero, clock, ip_clock_enable, ip_clear;
    reg op_MUXa, op_MUXb, op_MUXc, op_en_da, op_en_pc, op_en_in, op_RAM_we, op_ALU_s0, op_ALU_s1, op_ALU_s2, op_ALU_s3, op_ALU_s4;

    Decoder d(ip_IR,
    ip_carry,
    ip_zero,
    clock,
    ip_clock_enable,
    ip_clear,
    op_MUXa,
    op_MUXb,
    op_MUXc,
    op_en_da,
    op_en_pc,
    op_en_in,
    op_RAM_we,
    op_ALU_s0,
    op_ALU_s1,
    op_ALU_s2,
    op_ALU_s3,
    op_ALU_s4);

    initial begin
        $dumpfile("Decoder.vcd");
        $dumpvars;
        ip_clear = 1;
        clock = 0;
        ip_clock_enable = 1;
        #100;
        ip_clear = 0;
        
        ip_zero = 0;
        ip_carry = 1;
        ip_IR = 8'b00000000;#200//load
        ip_IR = 8'b01000000;#200//add
        ip_IR = 8'b00010000;#200//and
        ip_IR = 8'b01100000;#200//sub
        ip_IR = 8'b10100000;#200//input
        ip_IR = 8'b11100000;#200//output
        ip_IR = 8'b10000000;#200//jump
        ip_IR = 8'b10010000;#200//jumpz
        ip_IR = 8'b10011000;#200//jumpc
        ip_IR = 8'b10010100;#200//jumpnz
        ip_IR = 8'b10011100;#200//jumpnc
        ip_IR = 8'b10011100;#200

        $finish;

    end

    always #25 begin
        clock = ~clock;
    end

endmodule