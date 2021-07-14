/*`include "RAM.v"*/
module RAM_t ();
    
    reg [15:0] input_din, output_dout;
    reg [7:0] input_addr;
    reg input_we;

    RAM r(input_din, input_addr, input_we, output_dout);

    task test;
        input [15:0] D;
        input [7:0] ADDR;
        input WE;
        input_din = D;
        input_addr = ADDR;
        input_we = WE;
        #100;
    endtask

    initial begin
        $dumpfile("RAM.vcd");
        $dumpvars;

        test(16'b1010_0000_0000_1010, 8'b0000_0000, 1);
        test(16'b0100_0000_0000_1010, 8'b0000_0000, 0);
        test(16'b1001_1100_0000_0100, 8'b0000_0001, 0);
        test(16'b1001_1100_0000_0100, 8'b0000_0001, 1);
        test(16'b1110_0000_0000_1010, 8'b0000_0000, 1);
        test(16'b1000_0000_0000_0000, 8'b0000_0001, 1);

        $finish;
    end

endmodule