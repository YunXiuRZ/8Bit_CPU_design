`include "InstructionDecoder.v"
module CompleteInstructionDecoder (a, decode, execute, ip, op, load, add, jump, jumpz, jumpnz, jumpc, jumpnc, sub, bitand);
    input [7:0] a;
    input decode, execute;
    output ip, op, load, add, jump, jumpz, jumpnz, jumpc, jumpnc, sub, bitand;
    wire enable, wip, wop, wload, wadd, wjump, wjumpz, wjumpnz, wjumpc, wjumpnc, wsub, wbitand;

    InstructionDecoder ID(a, wip, wop, wload, wadd, wjump, wjumpz, wjumpnz, wjumpc, wjumpnc, wsub, wbitand);

    or o(enable, decode, execute);
    and a1(ip, enable, wip);
    and a2(op, enable, wop);
    and a3(load, enable, wload);
    and a4(add, enable, wadd);
    and a5(jump, enable, wjump);
    and a6(jumpz, enable, wjumpz);
    and a7(jumpnz, enable, wjumpnz);
    and a8(jumpc, enable, wjumpc);
    and a9(jumpnc, enable, wjumpnc);
    and a10(sub, enable, wsub);
    and a11(bitand, enable, wbitand);
    

endmodule