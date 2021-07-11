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
    
    

    reg [15:0] dout;
    reg [15:0] data_ram [255:0];

    /*Load ACC kk : 0000 XXXX KKKKKKKK
    Add ACC kk : 0100 XXXX KKKKKKKK
    And ACC kk : 0001 XXXX KKKKKKKK
    Sub ACC kk : 0110 XXXX KKKKKKKK
    Input ACC pp : 1010 XXXX PPPPPPPP
    Output ACC pp : 1110 XXXX PPPPPPPP
    Jump U aa : 1000 XXXX AAAAAAAA
    Jump Z aa : 1001 00XX AAAAAAAA
    Jump C aa : 1001 10XX AAAAAAAA
    Jump NZ aa : 1001 01XX AAAAAAAA
    Jump NC aa : 1001 11XX AAAAAAAA*/

    initial begin
        data_ram[0] = 16'b1010_0000_00000110;
        data_ram[1] = 16'b0100_0000_00001010;
        data_ram[2] = 16'b1001_0100_00000100;
        data_ram[3] = 16'b0000_0000_11111111;
        data_ram[4] = 16'b1110_0000_00000111;
        data_ram[5] = 16'b1000_0000_00000000;
        data_ram[6] = 16'b0000_0000_11111010;
        data_ram[7] = 16'b0000_0000_00000000;
    end

    always @ (addr or we)
    begin
        dout = data_ram[addr];
        if ( we == 1'b1 ) 
        begin
            data_ram[addr] = din;
        end
    end

endmodule 
