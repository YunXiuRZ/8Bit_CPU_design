module HalfAdder_1B (a, b, carry_out, sum);
    input a, b;
    output carry_out, sum;

    and and1(carry_out, a, b);
    xor xor1(sum, a, b);
    
endmodule