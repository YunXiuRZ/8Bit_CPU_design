module FDPE (d, clock, clock_enable, preset, q);
    input d, clock, clock_enable, preset;
    output q;

    wire w1, w2, w3, w4, w5, w6;

    and a1(w1, clock, clock_enable);
    nand na1(w2, d, w1);
    not n1(w3, d);
    nand na2(w4, w1, w3);
    nand na3(w5, w2, w6);
    nand na4(w6, w5, w4);
    or o1(q, preset, w5);
    
endmodule