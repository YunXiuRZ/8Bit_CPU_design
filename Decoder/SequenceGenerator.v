`include "../FlipFlop/FDCE.v"
`include "../FlipFlop/FDPE.v"
module SequenceGenerator (clock, clock_enable, clear, fetch, decode, execute, increment);
    input clock, clock_enable, clear;
    output fetch, decode, execute, increment;

    FDPE fdpe1(increment, clock, clock_enable, clear, fetch);
    FDCE fdce1(fetch, clock, clock_enable, clear, decode);
    FDCE fdce2(decode, clock, clock_enable, clear, execute);
    FDCE fdce3(execute, clock, clock_enable, clear, increment);

endmodule