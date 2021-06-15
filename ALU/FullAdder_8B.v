`include "FullAdder_1B.v"
module FullAdder_8B (a, b, carry_in, carry_out, sum);
    input[7:0] a, b;
    input carry_in;
    output carry_out;
    output[7:0] sum;
    wire[6:0] carry_temp;

    FullAdder_1B f1(a[0], b[0], carry_in, carry_temp[0], sum[0]);
    FullAdder_1B f2(a[1], b[1], carry_temp[0], carry_temp[1], sum[1]);
    FullAdder_1B f3(a[2], b[2], carry_temp[1], carry_temp[2], sum[2]);
    FullAdder_1B f4(a[3], b[3], carry_temp[2], carry_temp[3], sum[3]);
    FullAdder_1B f5(a[4], b[4], carry_temp[3], carry_temp[4], sum[4]);
    FullAdder_1B f6(a[5], b[5], carry_temp[4], carry_temp[5], sum[5]);
    FullAdder_1B f7(a[6], b[6], carry_temp[5], carry_temp[6], sum[6]);
    FullAdder_1B f8(a[7], b[7], carry_temp[6], carry_out, sum[7]);
    
    
endmodule