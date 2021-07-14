/*`include "Register_2B.v"*/
module Register_4B (d, clock, clock_enable, clear, q);
    input[3:0] d;
    input clock, clock_enable, clear;
    output[3:0] q;

    Register_2B r1(d[0], d[1], clock, clock_enable, clear, q[0], q[1]);
    Register_2B r2(d[2], d[3], clock, clock_enable, clear, q[2], q[3]);
    
endmodule