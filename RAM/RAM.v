module RAM(
        din,
        addr,
        we,
        dout
    );

    input [15:0] din;
    input [7:0] addr;
    input we;
    output [15:0] dout;

    localparam invalid_data  = { ( ( ( ( 15 - 0 ) < 0 ) ) ? ( (  -( 1) * ( 15 - 0 ) ) ) : ( ( 15 - 0 ) ) ) { 1'bx }} ;
    
    /*function CONV_INTEGER_1;
        input arg;
    begin
    end
    endfunction*/ 

    reg [15:0] dout;
    reg [15:0] data_ram [255:0];

    always @ (addr or we)
    begin
        dout = data_ram[addr];
        if ( we == 1'b1 ) 
        begin
            data_ram[addr] = din;
        end
    end

endmodule 
