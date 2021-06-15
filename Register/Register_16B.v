`include "Register_8B.v"
module Register_16B (d, clock, clock_enable, clear, q);
    input[15:0] d;
    input clock, clock_enable, clear;
    output[15:0] q;

    wire[7:0] d1, d2, q1, q2;

    assign d1[0] = d[0];
    assign d1[1] = d[1];
    assign d1[2] = d[2];
    assign d1[3] = d[3];
    assign d1[4] = d[4];
    assign d1[5] = d[5];
    assign d1[6] = d[6];
    assign d1[7] = d[7];
    assign d2[0] = d[8];
    assign d2[1] = d[9];
    assign d2[2] = d[10];
    assign d2[3] = d[11];
    assign d2[4] = d[12];
    assign d2[5] = d[13];
    assign d2[6] = d[14];
    assign d2[7] = d[15];
    
    

    Register_8B r1(d1, clock, clock_enable, clear, q1);
    Register_8B r2(d2, clock, clock_enable, clear, q2);

    assign q[0] = q1[0];
    assign q[1] = q1[1];
    assign q[2] = q1[2];
    assign q[3] = q1[3];
    assign q[4] = q1[4];
    assign q[5] = q1[5];
    assign q[6] = q1[6];
    assign q[7] = q1[7];
    assign q[8] = q2[0];
    assign q[9] = q2[1];
    assign q[10] = q2[2];
    assign q[11] = q2[3];
    assign q[12] = q2[4];
    assign q[13] = q2[5];
    assign q[14] = q2[6];
    assign q[15] = q2[7];
    
    
endmodule