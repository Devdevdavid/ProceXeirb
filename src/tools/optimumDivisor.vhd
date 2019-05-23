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
 
entity optimumDivisor is
    generic (
            data_size    : integer := 8;
            address_size : integer := 8;
            mode         : integer := 0; -- 0 = int ; 1 = float
            sfixed_msb  : integer := 15;
            sfixed_lsb   : integer := -8
        );
    port (
        clk                : in  std_logic;
        clk_en             : in  std_logic;
        reset              : in  std_logic;
        
        en                 : in  std_logic;
        bus_data_in        : out std_logic_vector(data_size-1 downto 0);
        bus_data_out       : in  std_logic_vector(data_size-1 downto 0);
        bus_address        : in  std_logic_vector(address_size-1 downto 0);
        bus_R_W            : in  std_logic;
        bus_en             : in  std_logic
        
        );

end entity optimumDivisor;

architecture rtl of optimumDivisor is 
  attribute use_dsp : string;
  attribute use_dsp of rtl : architecture is "yes";

component bus_periph_interface is
  generic (
    address_size  : integer := 6;  -- Largeur du signal d'adresses
    data_size     : integer := 8
  );
  port (
    en                 : in  std_logic;

    periph_data_in     : out std_logic_vector(data_size-1 downto 0);
    periph_data_out    : in  std_logic_vector(data_size-1 downto 0);

    bus_data_in        : out std_logic_vector(data_size-1 downto 0);
    bus_data_out       : in  std_logic_vector(data_size-1 downto 0);

    periph_address     : out std_logic_vector(address_size-1 downto 0);
    bus_address        : in  std_logic_vector(address_size-1 downto 0);

    periph_R_W         : out std_logic;
    bus_R_W            : in  std_logic;

    periph_en          : out std_logic;
    bus_en             : in  std_logic
    );
end component;

  signal periph_data_in    : std_logic_vector(data_size-1 downto 0);
  signal periph_data_out   : std_logic_vector(data_size-1 downto 0);
  signal periph_address    : std_logic_vector(address_size-1 downto 0);
  signal periph_R_W        : std_logic;
  signal periph_en         : std_logic;
  
  signal in_1              : std_logic_vector(data_size-1 downto 0);
  signal in_2              : std_logic_vector(data_size-1 downto 0);
  signal result            : std_logic_vector(data_size-1 downto 0);
  signal ready             : std_logic;

begin

inst_bus_interface : bus_periph_interface
  generic map (
    address_size  => address_size,
    data_size     => data_size
  )
  port map (
    en                => en,

    periph_data_in    => periph_data_in,
    periph_data_out   => periph_data_out,

    bus_data_in       => bus_data_in,
    bus_data_out      => bus_data_out,

    periph_address    => periph_address,
    bus_address       => bus_address,

    bus_R_W           => bus_R_W,
    periph_R_W        => periph_R_W,

    bus_en            => bus_en,
    periph_en         => periph_en
    );
    
    
    process(clk, reset) is
    begin
        if reset = '1' then
            periph_data_out <= std_logic_vector(to_unsigned(0, data_size));
        elsif rising_edge(clk) then
            if periph_en = '1' then
                case periph_address(1 downto 0) is
                    when "00" =>
                        if (periph_R_W = '1') then
                            in_1 <= periph_data_in;
                        end if;
                    when "01" =>
                        if (periph_R_W = '1') then
                            in_2 <= periph_data_in;
                        end if;
                    
                    when "10" =>
                            periph_data_out <= result;
                    when "11" =>
                         periph_data_out <= (0 => ready, others => '0');
                end case;
            end if;
        end if;
    end process;
    
    
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
       result(17 downto 0)  <= std_logic_vector(signed(in_1(17 downto 0)) / (signed(in_2(17 downto 0)))); 
       
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
       --result <= result sll 1  ; 
    else
       result(31 downto 0) <= x"CAFEFADE";
    end if;
    end process;

end rtl;
