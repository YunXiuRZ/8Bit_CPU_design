/*`include "BitWiseInverter_8B.v"*/
module BitWiseInverter_8B_t ();
    reg[7:0] input_a, output_z;
    reg input_enable;
    reg[2:0] i;

    BitWiseInverter_8B in(input_a, input_enable, output_z);

    task test(input A, input E);
        if(A == 0)begin
            input_a = 8'b00000000;
        end
        else begin
            input_a = 8'b11111111;
        end
        input_enable = E;
        #100;
    endtask

    initial begin
        $dumpfile("BitWiseInverter_8B.vcd");
        $dumpvars;

        for (i = 3'b000; i < 3'b100; i = i + 3'b001) begin
            test(i[0], i[1]);
        end
        $finish;
    end

endmodule