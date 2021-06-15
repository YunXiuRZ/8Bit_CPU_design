module AndGate_8B (a, b, z);
    input[7:0] a, b;
    output[7:0] z;

    and a1(z[0], a[0], b[0]);
    and a2(z[1], a[1], b[1]);
    and a3(z[2], a[2], b[2]);
    and a4(z[3], a[3], b[3]);
    and a5(z[4], a[4], b[4]);
    and a6(z[5], a[5], b[5]);
    and a7(z[6], a[6], b[6]);
    and a8(z[7], a[7], b[7]);
    
    
endmodule