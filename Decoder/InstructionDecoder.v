module InstructionDecoder (a, ip, op, load, add, jump, jumpz, jumpnz, jumpc, jumpnc, sub, bitand);
    input [7:0] a;
    output reg ip, op, load, add, jump, jumpz, jumpnz, jumpc, jumpnc, sub, bitand;



    always @(a) begin
        ip = a[7] && !a[6] && a[5] && !a[4];
        op = a[7] && a[6] && a[5] && !a[4];
        load = !a[7] && !a[6] && !a[5] && !a[4];
        add = !a[7] && a[6] && !a[5] && !a[4];
        jump = a[7] && !a[6] && !a[5] && !a[4];
        if(a[7] && !a[6] && !a[5] && a[4]) begin
            jump_condition(a[3], a[2]);
        end
        else begin
            jumpz = 0;
            jumpnz = 0;
            jumpc = 0;
            jumpnc = 0;
        end
        sub = !a[7] && a[6] && a[5] && !a[4];
        bitand = !a[7] && !a[6] && !a[5] && a[4];
    end

    task jump_condition(a3, a2);
        jumpz = !a3 && !a2;
        jumpnz = !a3 && a2;
        jumpc = a3 && !a2;
        jumpnc = a3 && a2;
    endtask

endmodule