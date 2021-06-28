module FDCE (d, clock, clock_enable, clear, q);
    input d, clock, clock_enable, clear;
    output reg q;

    always @(posedge clock) begin
        if(clock_enable == 1 & clear == 0) begin
            q = d;
        end
    end

    always @(clear) begin
        if(clear == 1) begin
            q = 0;
        end
    end
    
endmodule