module NorGate_8B (
    a,
    result
);

input[7:0] a;
output result;

nor n(result, a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]);
    
endmodule