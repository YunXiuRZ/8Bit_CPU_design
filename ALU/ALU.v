/*`include "../8BitGate/Replicater_8B.v"
`include "../8BitGate/BitWiseInverter_8B.v"
`include "../8BitGate/BitWiseAndGate_8B.v"
`include "FullAdder_8B.v"
`include "../MUX/MUX_4to1_8B.v"*/
module ALU (a, b, s0, s1, s2, s3, s4, z, carry_out);
    input[7:0] a, b;
    input s0, s1, s2, s3, s4;
    output[7:0] z;
    output carry_out;

    wire w1;
    wire[7:0] w2, w3, w4, w5, w6;

    xor x1(w1, s4, 1);
    Replicater_8B b1(w1, w2);
    BitWiseInverter_8B i1(b, s3, w3);
    BitWiseAndGate_8B a1(w2, w3, w4);
    FullAdder_8B f1(a, w4, s2, carry_out, w5);
    BitWiseAndGate_8B a2(a, b, w6);
    MUX_4to1_8B m1(w5, w6, a, b, s0, s1, z);

    
endmodule