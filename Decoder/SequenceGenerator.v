/*`include "../FlipFlop/FDCE.v"
`include "../FlipFlop/FDPE.v"*/
module SequenceGenerator (clock, clock_enable, clear, fetch, decode, execute, increment);
    input clock, clock_enable, clear;
    output reg fetch, decode, execute, increment;

    /*FDPE fdpe1(increment, clock, clock_enable, clear, fetch);
    FDCE fdce1(fetch, clock, clock_enable, clear, decode);
    FDCE fdce2(decode, clock, clock_enable, clear, execute);
    FDCE fdce3(execute, clock, clock_enable, clear, increment);*/

    always @(clear) begin
        if(clear == 1) begin
            fetch = 1;
            decode = 0;
            execute = 0;
            increment = 0;
        end
    end

    always @(posedge clock) begin
        if(clock_enable == 1 & clear == 0) begin
            if(fetch == 1) begin
                fetch = 0;
                decode = 1;
            end
            else if(decode == 1) begin
                decode = 0;
                execute = 1;
            end
            else if(execute == 1) begin
                execute = 0;
                increment = 1;
            end
            else if(increment == 1) begin
                increment = 0;
                fetch = 1;
            end
        end
    end

endmodule