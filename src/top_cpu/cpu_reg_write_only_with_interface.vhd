Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

 -- Main Author : Julien BESSE
 -- With the kind collaboration of : Pierre JOUBERT

entity reg_write_only_with_interface is
    generic (
            data_size : integer := 8;
            address_size : integer := 8;
            init_value : integer := 0
        );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;
        
        data_in  : in std_logic_vector(data_size-1 downto 0);
        
        en                 : in  std_logic;
        bus_data_in        : out std_logic_vector(data_size-1 downto 0);
        bus_data_out       : in  std_logic_vector(data_size-1 downto 0);
        bus_address        : in  std_logic_vector(address_size-1 downto 0);
        bus_R_W            : in  std_logic;
        bus_en             : in  std_logic
        );

end entity reg_write_only_with_interface;

architecture rtl of reg_write_only_with_interface is 

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
            periph_data_out <= std_logic_vector(to_unsigned(init_value, data_size));
        elsif rising_edge(clk) then
            if clk_en = '1' then
                periph_data_out <= data_in;
            end if;
        end if;
    end process;

end architecture rtl;