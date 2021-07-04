module FDC (d, clock, clear, q);
    input d, clock, clear;
    output reg q;

    always @(posedge clock) begin
        if(clear == 0) begin
            q = d;
        end
    end

    always @(clear) begin
        if(clear == 1) begin
            q = 0;
        end
    end
    
endmodule