library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity RAM is
    port (
        addr   : in std_logic_vector(7 downto 0);
        din : in std_logic_vector(15 downto 0);
        dout : out std_logic_vector(15 downto 0);
        we : in std_logic
    );
end RAM;

architecture ram_arch of RAM is

    constant INVALID_DATA : std_logic_vector(15 downto 0) := (others => 'X');

    subtype data_ram_word is std_logic_vector(15 downto 0);
    type data_ram_table is array(0 to (2**8)-1) of data_ram_word;

    signal data_ram : data_ram_table := data_ram_table'
    ( data_ram_word'("1010000000001010"),
      data_ram_word'("0100000000001010"),
      data_ram_word'("1001110000000100"),
      data_ram_word'("0000000011111111"),
      data_ram_word'("1110000000001010"),
      data_ram_word'("1000000000000000"),
      data_ram_word'("0000000000000000")
    );
    
begin

    process (addr, we)
    begin
        dout <= data_ram(conv_integer(addr));
        if we = '1'
        then
            data_ram(conv_integer(addr)) <= din;
        end if;
    end process;    

end ram_arch;