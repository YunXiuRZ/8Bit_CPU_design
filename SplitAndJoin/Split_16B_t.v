`include "Split_16B.v"
module Split_16B_t ();

reg [15:0] input_a;
reg [7:0] output_low, output_high;

Split_16B s(input_a, output_low, output_high);

initial begin
    $dumpfile("result.vcd");
    $dumpvars;

    input_a = 16'b1111_0000_1010_0101;
    #50;

    $finish;
end
    
endmodule