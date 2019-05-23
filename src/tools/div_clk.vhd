Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

 -- Main Author : Julien BESSE
 -- With the kind collaboration of : Pierre JOUBERT

entity div_clk is
    generic (
        size : integer :=8
        );
    port (
        reset           : in  std_logic;
        clk             : in  std_logic;
        clk_en          : in  std_logic;

        clk_in          : in  std_logic;
        divider         : in  std_logic_vector (size -1 downto 0);
        clk_out         : out std_logic       
        );

end entity div_clk;

architecture rtl of div_clk is 
    signal cpt : integer range 0 to 2**size-1;

begin

    process(clk, reset) is
    begin
        if reset = '1' then
            cpt <= 0;

        elsif rising_edge(clk) then
            if clk_en = '1' then
                if clk_in = '1' then
                    -- Increment the counter
                    if cpt < divider then
                        cpt <= cpt + 1;
                        clk_out <= '0';
                    else
                        cpt <= 1;
                        clk_out <= '1';
                    end if;
                else 
                    clk_out <= '0';
                end if;
            end if;
        end if;
    end process;


end architecture;