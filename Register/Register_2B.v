/*`include "../FlipFlop/FDCE.v"*/
module Register_2B (d0, d1, clock, clock_enable, clear, q0, q1);
    input d0, d1, clock, clock_enable, clear;
    output q0, q1;

    FDCE f1(d0, clock, clock_enable, clear, q0);
    FDCE f2(d1, clock, clock_enable, clear, q1);
    
endmodule