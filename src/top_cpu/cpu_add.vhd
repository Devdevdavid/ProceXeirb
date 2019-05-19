Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

 -- Main Author : Aurelien TROMPAT
 -- With the kind collaboration of : David DEVANT
 
 --adder to calculate the address to point on the call stack

entity add is
    generic (
            size : integer := 8
        );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;
        
        data_in_1  : in  std_logic_vector (size-1 downto 0);
        data_in_2  : in  std_logic_vector (size-1 downto 0);
        data_out : out std_logic_vector (size-1 downto 0)
        );

end entity add;

architecture rtl of add is 
    signal data_out_with_carry : std_logic_vector(size downto 0);
begin
    data_out <= data_out_with_carry(size-1 downto 0);
    
    process(clk, reset) is
    begin
        if reset = '1' then
            data_out_with_carry <= (others => '0');

        elsif rising_edge(clk) then
            if clk_en = '1' then
                data_out_with_carry  <= std_logic_vector (signed("0" & data_in_1) + signed("0" & data_in_2));
            end if; 
        end if;
    end process;

end architecture rtl;