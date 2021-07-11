module Join_16B (
    low,
    high,
    result
);

input[7:0] low, high;
output[15:0] result;
    
assign result[15] = high[7];
assign result[14] = high[6];
assign result[13] = high[5];
assign result[12] = high[4];
assign result[11] = high[3];
assign result[10] = high[2];
assign result[9] = high[1];
assign result[8] = high[0];

assign result[7] = low[7];
assign result[6] = low[6];
assign result[5] = low[5];
assign result[4] = low[4];
assign result[3] = low[3];
assign result[2] = low[2];
assign result[1] = low[1];
assign result[0] = low[0];

endmodule