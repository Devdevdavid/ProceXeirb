Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

 -- Main Author : Julien BESSE
 -- With the kind collaboration of : Pierre JOUBERT

entity timer is
    generic (
            address_size : integer := 6;  -- Largeur du signal d'adresses
            data_size : integer :=8
        );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;

        init_cpt : in  std_logic;
        en_cpt   : in  std_logic;
        load_cpt : in  std_logic;

        cpt_in   : in  std_logic_vector (address_size -1 downto 0);
        cpt_out  : out std_logic_vector (address_size -1 downto 0);
        
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
    
    
    signal cpt : integer range 0 to 2**address_size-1;
    
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
    process(clk, reset) is
    begin
        if reset = '1' then
            cpt <= 0;

        elsif rising_edge(clk) then
            if clk_en = '1' then

                if init_cpt = '1' then 
                    cpt <= 0;

                elsif load_cpt = '1' then
                    cpt <= to_integer(unsigned(cpt_in));
                    
                elsif  periph_R_W = '1' then 
                    cpt <= to_integer(unsigned(periph_data_in));
                    
                elsif en_cpt = '1' then
                    if cpt < 2**address_size-1 then
                        cpt <= cpt + 1;
                        
                    else
                        cpt <= 0;

                    end if;
                end if;
            end if;
        end if;
    end process;

    cpt_out <= std_logic_vector(to_unsigned(cpt, address_size));
    periph_data_out <= std_logic_vector("00000" & to_unsigned(cpt, address_size));

end architecture;