`include "JumpLogic.v"
module JumpLogic_t ();
    reg input_increment, 
        input_execute,
        clock,
        input_clear, 
        input_jumpz, 
        input_jumpnz, 
        input_jumpc, 
        input_jumpnc, 
        input_jump, 
        input_zero_reg, 
        input_carry_reg, 
        output_en_pc;

    JumpLogic jl(input_increment, 
        input_execute,
        clock,
        input_clear, 
        input_jumpz, 
        input_jumpnz, 
        input_jumpc, 
        input_jumpnc, 
        input_jump, 
        input_zero_reg, 
        input_carry_reg, 
        output_en_pc);
    
    task test(I, E, JZ, JNZ, JC, JNC, J, ZR, CR);
        input_increment = I; 
        input_execute = E;
        input_jumpz = JZ;
        input_jumpnz = JNZ;
        input_jumpc = JC;
        input_jumpnc = JNC;
        input_jump = J;
        input_zero_reg = ZR;
        input_carry_reg = CR;
        #50;
    endtask

    initial begin
        clock = 0;
        input_clear = 1;
        $dumpfile("result.vcd");
        $dumpvars();
        input_clear = 0;

        test(0, 1, 1, 0, 0, 0, 0, 1, 0);
        test(0, 0, 0, 0, 0, 0, 0, 0, 0);
        test(0, 1, 0, 1, 0, 0, 0, 0, 0);
        test(0, 0, 0, 0, 0, 0, 0, 0, 0);
        test(0, 0, 0, 0, 1, 0, 0, 0, 1);
        test(0, 0, 0, 0, 0, 0, 0, 0, 0);
        test(0, 0, 0, 0, 0, 1, 0, 0, 0);
        test(1, 0, 0, 0, 0, 0, 0, 0, 0);
        $finish;

    end

    always #25 begin
        clock = ~clock;
    end
    
endmodule