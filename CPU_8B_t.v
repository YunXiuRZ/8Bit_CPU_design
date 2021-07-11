`include "CPU_8B.v"
module CPU_8B_t ();

    reg input_nclear, clock, VCC, output_serial_out;

    CPU_8B cpu(input_nclear, clock, VCC, output_serial_out);

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;

        clock = 0;
        input_nclear = 0;
        VCC = 1;
        input_nclear = 1;

    end

    always #50 begin
        clock = ~clock;
    end
    
endmodule