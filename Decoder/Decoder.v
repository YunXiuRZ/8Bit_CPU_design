`include "StatusRegister.v"
`include "CompleteInstructionDecoder.v"
`include "JumpLogic.v"
`include "SequenceGenerator.v"
module Decoder (
    IR,
    carry,
    zero,
    clock,
    clock_enable,
    clear,
    MUXa,
    MUXb,
    MUXc,
    en_da,
    en_pc,
    en_in,
    RAM_we,
    ALU_s0,
    ALU_s1,
    ALU_s2,
    ALU_s3,
    ALU_s4
);

input[7:0] IR;//command
input carry, zero, clock, clock_enable, clear;
output MUXa, MUXb, MUXc, en_da, en_pc, en_in, RAM_we, ALU_s0, ALU_s1, ALU_s2, ALU_s3, ALU_s4;//one-hot coding, enable modules in the system

reg fetch, decode, execute, increment;//four working status, iterate with clock
reg ip, op, load, add, jump, jumpz, jumpnz, jumpc, jumpnc, sub, bitand;//the decode of the command
reg carry_reg, zero_reg, MUXb_reg, MUXc_reg, o3r, a1r, if_jump, o5r, o6r, o7r, a2r;

SequenceGenerator sq(clock, clock_enable, clear, fetch, decode, execute, increment);
CompleteInstructionDecoder cid(IR, decode, execute, ip, op, load, add, jump, jumpz, jumpnz, jumpc, jumpnc, sub, bitand);
StatusRegister sr(carry, zero, clock, add, sub, bitand, clear, carry_reg, zero_reg);

buf b1(MUXa, increment);
or o1(MUXb_reg, load, add, bitand, sub);
buf b2(MUXb, MUXb_reg);
or o2(MUXc_reg, ip, op);
buf b3(MUXc, MUXc_reg);
or o3(o3r, load, add, sub, bitand, ip);
and a2(a2r, o3r, execute);
buf b4(en_da, a2r);
JumpLogic jl(increment, execute, clock, clear, jumpz, jumpnz, jumpc, jumpnc, jump, zero_reg, carry_reg, en_pc);
buf b5(en_in, fetch);
and a1(a1r, execute, op);
buf b6(RAM_we, a1r);
or o4(if_jump, jump, jumpc, jumpnc, jumpz, jumpnz);
or o5(o5r, bitand, ip, load, if_jump);
buf b7(ALU_s0, o5r);
or o6(o6r, load, ip, op, if_jump);
buf b8(ALU_s1, o6r);
or o7(o7r, increment, sub);
buf b9(ALU_s2, o7r);
buf b10(ALU_s3, sub);
buf b11(ALU_s4, increment);
    
endmodule