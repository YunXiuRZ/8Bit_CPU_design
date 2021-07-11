module Split_16B (
    a,
    low,
    high
);

input[15:0] a;
output[7:0] low, high;

assign high[7] = a[15];
assign high[6] = a[14];
assign high[5] = a[13];
assign high[4] = a[12];
assign high[3] = a[11];
assign high[2] = a[10];
assign high[1] = a[9];
assign high[0] = a[8];

assign low[7] = a[7];
assign low[6] = a[6];
assign low[5] = a[5];
assign low[4] = a[4];
assign low[3] = a[3];
assign low[2] = a[2];
assign low[1] = a[1];
assign low[0] = a[0];

    
endmodule