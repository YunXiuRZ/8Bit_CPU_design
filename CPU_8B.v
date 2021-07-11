`include "8BitGate/NorGate_8B.v"
`include "ALU/ALU.v"
`include "Decoder/Decoder/v"
`include "FlipFlop/FD.v"
`include "FlipFlop/FDCE.v"
`include "MUX/MUX_2to1_8B.v"
`include "RAM/RAM.v"
`include "Register/Register_8B.v"
`include "Register/Register_16B.v"
`include "SplitAndJoin/Join_16B.v"
`include "SplitAndJoin/Split_16B.v"
module CPU_8B (
    nclear,
    clock,
    VCC,
    serial_out
);

wire clear, FD_o, nclock, en_out, out;
wire[15:0] RAM_i, RAM_o, IR;
wire[7:0] ALU_o, PC_o, ACC_o, muxa_o, muxb_o, muxc_o, ADDR;
wire RAM_l, RAM_h, IR_l, IR_h;
wire carry, zero;
wire MUX_a, MUX_b, MUX_c, en_da, en_pc, en_in, RAM_we, ALU_s0, ALU_s1, ALU_s2, ALU_s3, ALU_s4;
reg[7:0] A0 = 8'b0000_0000;

not n1(clear, nclear);
FD fd(clear, clock, FD_o);
Register_16B ir(RAM_o, clock, en_in, FDo, IR);
Split_16B s1(IR, IR_l, IR_h);
Split_16B s2(RAM_o, RAM_l, RAM_h);
Register_8B pc(ALU_o, clock, en_pc, clear, PC_o);
MUX_2to1_8B muxa(ACC_o, PC_o, MUX_a, muxa_o);
MUX_2to1_8B muxb(RAM_l, IR_l, MUX_b, muxb_o);
ALU alu(muxa_o, muxb_o, ALU_s0, ALU_s1, ALU_s2, ALU_s3, ALU_s4, ALU_o, carry);
NorGate_8B n2(ALU_o, zero);
Register acc(ALU_o, clock, en_da, clear, ACC_o);
MUX_2to1_8B muxc(PC_o, IR_l, MUX_c, ADDR);
Decoder decoder(IR_h, carry, zero, clock, VCC, clear, MUX_a, MUX_b, MUX_c, en_da, en_pc, en_in, RAM_we, ALU_s0, ALU_s1, ALU_s2, ALU_s3, ALU_s4);
Join_16B j(ACC_o, A0, RAM_i);
not n3(nclock, clock);
RAM ram(ram_i, ADDR, RAM_we, nclock, RAM_o);
and a(en_out, addr[7], addr[6], addr[5], addr[4], addr[3], addr[2], addr[1], addr[0]);
FDCE fdce(RAM_i[0], en_out, clock, clear, out);
not n4(serial_out, out);
    
endmodule