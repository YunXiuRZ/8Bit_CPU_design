module Inverter_8B (a, enable, z);
    input[7:0] a;
    input enable;
    output[7:0] z;

    xor x1(z[0], a[0], enable);
    xor x2(z[1], a[1], enable);
    xor x3(z[2], a[2], enable);
    xor x4(z[3], a[3], enable);
    xor x5(z[4], a[4], enable);
    xor x6(z[5], a[5], enable);
    xor x7(z[6], a[6], enable);
    xor x8(z[7], a[7], enable);
    
    
endmodule