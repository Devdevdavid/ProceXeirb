Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

 -- Main Author : 
 -- With the kind collaboration of : 

entity timer is
    generic (
            address_size : integer := 6;  -- Largeur du signal d'adresses
            data_size : integer :=8
        );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;
        
        --bus
        en                 : in std_logic;
        bus_data_in        : out std_logic_vector(data_size-1 downto 0);
        bus_data_out       : in  std_logic_vector(data_size-1 downto 0);
        bus_address        : in  std_logic_vector(address_size-1 downto 0);
        bus_R_W            : in  std_logic;
        bus_en             : in  std_logic
        
        
        );

end entity timer;

architecture rtl of timer is 

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
    
component cpt is
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

end component; 
    signal cpt_value         : std_logic_vector(data_size-1 downto 0);
    signal periode           : std_logic_vector(data_size-1 downto 0);
    signal cpt_100           : std_logic_vector(data_size-1 downto 0);
    signal clk_en_div_100    : std_logic;
    --bus 
    signal periph_data_in    : std_logic_vector(data_size-1 downto 0);
    signal periph_data_out   : std_logic_vector(data_size-1 downto 0);
    signal periph_address    : std_logic_vector(address_size-1 downto 0);
    signal periph_R_W        : std_logic;
    signal periph_en         : std_logic;

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
    
    inst_div_100 : cpt  
    generic map (
    size     => data_size
  )
  port map (
    reset           => reset,
    clk             => clk,
    clk_en          => clk_en,
    
    cpt_max_value   => 25x"64",
    cpt_out         => cpt_100
    );
    
    inst_div_periode : cpt  
    generic map (
    size     => data_size
  )
  port map (
    reset           => reset,
    clk             => clk,
    clk_en          => clk_en_div_100,
    
    cpt_max_value   => periode,
    cpt_out         => cpt_value
    );
    
    process (cpt_100, reset) is
    begin
        if reset = '1' then
            clk_en_div_100 <= '0';
        elsif cpt_100 = 25x"00000000" then
            clk_en_div_100 <= '1';
        else
             clk_en_div_100 <= '0';
        end if;
    end process;
    
    
    process(clk, reset) is
    begin
        if reset = '1' then
            periph_data_out <= (others => '0');

        elsif rising_edge(clk) then
            if clk_en = '1' then
                if periph_en = '1' then
                    case periph_address(0) is
                        when '0' =>
                            if (periph_R_W = '1') then
                                periode <= periph_data_in;
                            end if;
                        when '1' =>
                            if (periph_R_W = '0') then
                                periph_data_out <= cpt_value;
                            end if;
                    end case;
                end if;
            end if;
        end if;
    end process;

end architecture;