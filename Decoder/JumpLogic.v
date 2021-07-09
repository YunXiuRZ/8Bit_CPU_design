`include "../FlipFlop/FDC.v"
module JumpLogic (
    increment,
    execute,
    clock,
    clear,
    jumpz,
    jumpnz,
    jumpc,
    jumpnc,
    jump,
    zero_reg,
    carry_reg,
    en_pc
);

input increment, execute, clock, clear, jumpz, jumpnz, jumpc, jumpnc, jump, zero_reg, carry_reg;
output en_pc;

wire nz, nc, c1, c2, c3, c4, condition, ncondition, jump_not_taken, ic, ec;

not n1(nz, zero_reg);
not n2(nc, carry_reg);
and a1(c1, jumpz, zero_reg);
and a2(c2, jumpnz, nz);
and a3(c3, jumpc, carry_reg);
and a4(c4, jumpnc, nc);
or o1(condition, c1, c2, c3, c4, jump);
not n3(ncondition, condition);
FDC fdc(ncondition, clock, clear, jump_not_taken);
and a5(ic, increment, jump_not_taken);
and a6(ec, execute, condition);
or o2(en_pc, ic, ec);
    
endmodule