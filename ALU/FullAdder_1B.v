`include "HalfAdder_1B.v"
module FullAdder_1B (a, b, carry_in, carry_out, sum);
    input a, b, carry_in;
    output carry_out, sum;

    wire w1, w2, w3;

    HalfAdder_1B h1(a, b, w1, w2);
    HalfAdder_1B h2(w2, carry_in, w3, sum);
    or o1(carry_out, w1, w3);
    
endmodule