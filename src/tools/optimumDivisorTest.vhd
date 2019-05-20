Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
--use IEEE.fixed_float_types.all;
--use IEEE.fixed_pkg.all;
use work.fixed_generic_pkg_mod.all; -- Fix for Vivado

 -- Main Author : Aurelien TROMPAT
 -- With the kind collaboration of : David DEVANT

 -- This block is responsible for WNS = -75 ns
 
entity optimumDivisorTest is
    generic (
            data_size    : integer := 25;
            address_size : integer := 20;
            mode         : integer := 1; -- 0 = int ; 1 = float
            sfixed_msb  : integer := 15;
            sfixed_lsb   : integer := -8
        );
    port (
        clk                : in  std_logic;
        clk_en             : in  std_logic;
        reset              : in  std_logic;
        in_1              : in std_logic_vector(data_size-1 downto 0);
        in_2              : in std_logic_vector(data_size-1 downto 0);
        result              : out std_logic_vector(data_size-1 downto 0)
        );

end entity optimumDivisorTest;

architecture rtl of optimumDivisorTest is 
  attribute use_dsp : string;
  attribute use_dsp of rtl : architecture is "yes";

begin
    
   
    
    
    process(in_1, in_2) is
        variable in_1_fixed     : sfixed(sfixed_msb downto sfixed_lsb);
        variable in_2_fixed     : sfixed(sfixed_msb downto sfixed_lsb);
        variable un             : sfixed(sfixed_msb downto sfixed_lsb);
        variable result_fixed   : sfixed(sfixed_msb*2+1 downto sfixed_lsb*2); 
        variable in_2_inv    : sfixed(sfixed_msb*2+1 downto sfixed_lsb*2);
        
    begin
    result <= (others => '0');
    in_1_fixed        := (others => '0'); 
    in_2_fixed        := (others => '0'); 
    result_fixed      := (others => '0');
    in_2_inv          := (others => '0');
    un   := 24x"000001";
    
    if mode = 0 then -- int
       result  <= std_logic_vector(signed(in_1) / (signed(in_2))); 
       
    elsif mode = 1 then -- fixed_point
     --Conversion
        in_1_fixed(sfixed_msb downto sfixed_lsb) := to_sfixed(in_1(sfixed_msb-sfixed_lsb  downto 0), sfixed_msb, sfixed_lsb);
        in_2_fixed(sfixed_msb downto sfixed_lsb) := to_sfixed(in_2(sfixed_msb-sfixed_lsb  downto 0), sfixed_msb, sfixed_lsb);

     --Calculs
        -- fix (Magic) : vivado doesn't generate block if in_1/in_2 
        in_2_inv(sfixed_msb*2+1 downto sfixed_lsb*2) :=  un(sfixed_msb downto sfixed_lsb) / in_2_fixed(sfixed_msb downto sfixed_lsb);
        result_fixed (sfixed_msb*2+1 downto sfixed_lsb*2) := (in_1_fixed(sfixed_msb downto sfixed_lsb) * in_2_inv(sfixed_msb downto sfixed_lsb));

     --Conversion
       result(sfixed_msb-sfixed_lsb downto 0) <= to_slv(result_fixed(sfixed_msb downto sfixed_lsb));
 
    else
       result(31 downto 0) <= x"CAFEFADE";
    end if;
    end process;

end rtl;
