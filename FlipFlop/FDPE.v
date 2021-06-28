module FDPE (d, clock, clock_enable, preset, q);
    input d, clock, clock_enable, preset;
    output reg q;

    always @(preset) begin
        if(preset == 1) begin
            q = 1;
        end
    end

    always @(posedge clock) begin
        if(clock_enable == 1 & preset == 0) begin
            q = d;
        end
    end
    
endmodule