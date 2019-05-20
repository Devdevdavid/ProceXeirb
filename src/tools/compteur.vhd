Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

 -- Main Author : Julien BESSE
 -- With the kind collaboration of : Pierre JOUBERT

entity cpt is
    generic (
            size : integer :=8
        );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;

        cpt_max_value   : in  std_logic_vector (size -1 downto 0);
        cpt_out  : out std_logic_vector (size -1 downto 0)       
        );

end entity cpt;

architecture rtl of cpt is 
    signal cpt : integer range 0 to 2**size-1;

begin

    process(clk, reset) is
    begin
        if reset = '1' then
            cpt <= 0;

        elsif rising_edge(clk) then
            if clk_en = '1' then
                    
                if cpt < cpt_max_value then
                    cpt <= cpt + 1;
                        
                else
                    cpt <= 0;

                end if;
            end if;
        end if;
    end process;

    cpt_out <= std_logic_vector(to_unsigned(cpt, size));
    periph_data_out <= std_logic_vector("00000" & to_unsigned(cpt, size));

end architecture;