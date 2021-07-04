`include "../Register/Register_2B.v"
module StatusRegister (
    carry,
    zero,
    clock,
    add,
    sub,
    bitand,
    clear,
    carry_reg,
    zero_reg
);

input carry, zero, clock, add, sub, bitand, clear;
output caryy_reg, zero_reg;
wire enable;

or condition(enable, add, sub, bitand);
Register_2B r(carry, zero, clock, enable, clear, carry_reg, zero_reg);
    
endmodule