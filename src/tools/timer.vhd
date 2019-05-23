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
            size : integer := data_size
        );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;

        cpt_max_value   : in  std_logic_vector (size -1 downto 0);
        cpt_out  : out std_logic_vector (size -1 downto 0)       
        );

end component; 

component div_clk is
    generic (
        size : integer := data_size
    );
    port (
        reset           : in  std_logic;
        clk             : in  std_logic;
        clk_en          : in  std_logic;

        clk_in          : in  std_logic;
        divider         : in  std_logic_vector (size -1 downto 0);
        clk_out         : out std_logic       
     );
end component;

    signal clk_1MHz          : std_logic;
    signal clk_timer_out     : std_logic;
    signal period            : std_logic_vector(data_size-1 downto 0) := 25x"0000002";
    signal cpt_timer_out     : std_logic_vector(data_size-1 downto 0);
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
    
    ins_div_clk_1 : div_clk  
    generic map (
        size            => data_size
    )
    port map (
        reset           => reset,
        clk             => clk,
        clk_en          => clk_en,
        
        clk_in          => '1',
        divider         => 25x"00064", -- Divide by 100 to get a 1MHz
        clk_out         => clk_1MHz
    );
    ins_div_clk_2 : div_clk  
    generic map (
        size            => data_size
    )
    port map (
        reset           => reset,
        clk             => clk,
        clk_en          => clk_en,
        
        clk_in          => clk_1MHz,
        divider         => period,
        clk_out         => clk_timer_out
    );
    
    inst_cpt_periode : cpt  
    generic map (
        size     => data_size
    )
    port map (
        reset           => reset,
        clk             => clk,
        clk_en          => clk_timer_out,
        
        cpt_max_value   => 25x"FFFFF", -- Max value of a 25 bits value
        cpt_out         => cpt_timer_out
    );
    
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
                                period <= periph_data_in;
                            else
                                periph_data_out <= period;
                            end if;
                        when '1' =>
                            if (periph_R_W = '0') then
                                periph_data_out <= cpt_timer_out;
                            end if;
                        when others =>
                    end case;
                end if;
            end if;
        end if;
    end process;

end architecture;