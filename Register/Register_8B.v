/*`include "Register_4B.v"*/
module Register_8B (d, clock, clock_enable, clear, q);
    input[7:0] d;
    input clock, clock_enable, clear;
    output[7:0] q;

    wire[3:0] d1, d2, q1, q2;

    assign d1[0] = d[0];
    assign d1[1] = d[1];
    assign d1[2] = d[2];
    assign d1[3] = d[3];
    assign d2[0] = d[4];
    assign d2[1] = d[5];
    assign d2[2] = d[6];
    assign d2[3] = d[7];

    Register_4B r1(d1, clock, clock_enable, clear, q1);
    Register_4B r2(d2, clock, clock_enable, clear, q2);

    assign q[0] = q1[0];
    assign q[1] = q1[1];
    assign q[2] = q1[2];
    assign q[3] = q1[3];
    assign q[4] = q2[0];
    assign q[5] = q2[1];
    assign q[6] = q2[2];
    assign q[7] = q2[3];
    
    
endmodule