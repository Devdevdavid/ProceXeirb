Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

 -- Main Author : Julien BESSE
 -- With the kind collaboration of : Pierre JOUBERT

entity cpu_periph_manager is
  generic (
    address_size : integer     -- Largeur de l'adresse
    );
  port (
    cpu_bus_address         : in std_logic_vector(address_size-1 downto 0);
    cpu_bus_en              : in std_logic;

    cpu_ram_en              : out std_logic;
    cpu_shr_ram_en          : out std_logic;
    spi_en                  : out std_logic;
    gpio_ctrl_en            : out std_logic;
    cpu_sinus_table_en      : out std_logic;
    cpu_call_stack_en       : out std_logic;
    cpu_stack_pointer_en    : out std_logic;
    cpu_base_pointer_en     : out std_logic;
    cpu_stack_add_param_en  : out std_logic;
    cpu_address_counter_en  : out std_logic;
    cpu_dummy_en            : out std_logic;
    cpu_div_int_en          : out std_logic;
    cpu_div_real_en         : out std_logic;
    cpu_timer_en            : out std_logic
    );

end entity cpu_periph_manager;


architecture rtl of cpu_periph_manager is

begin

  process (cpu_bus_address, cpu_bus_en) is
  begin
    cpu_ram_en              <= '0';
    cpu_shr_ram_en          <= '0';
    spi_en                  <= '0';
    gpio_ctrl_en            <= '0';
    cpu_sinus_table_en      <= '0';
    cpu_call_stack_en       <= '0';
    cpu_stack_pointer_en    <= '0';
    cpu_base_pointer_en     <= '0';
    cpu_stack_add_param_en  <= '0';
    cpu_address_counter_en  <= '0';
    cpu_dummy_en            <= '0';
    cpu_div_int_en          <= '0';
    cpu_div_real_en         <= '0';
    cpu_timer_en            <= '0';
    if cpu_bus_en = '1' then
      case to_integer(unsigned(cpu_bus_address)) is
        when 16#00000# to 16#01fff# => 
          cpu_ram_en    <= '1';
          
        when 16#02000# to 16#023ff# => 
          cpu_call_stack_en    <= '1';
        
        when 16#02400# => 
          cpu_stack_pointer_en  <= '1';
          
        when 16#02401# => 
          cpu_base_pointer_en    <= '1';
        
        when 16#02402# => 
          cpu_stack_add_param_en    <= '1';
          
        when 16#02403# => 
          cpu_address_counter_en    <= '1';
          
        when 16#02404# => 
          cpu_dummy_en    <= '1';
          
        when 16#02408# to 16#0240B# => 
          cpu_div_int_en    <= '1';
          
        when 16#0240C# to 16#0240F#=> 
          cpu_div_real_en    <= '1';
          
         when 16#02410# to 16#02411#=> 
           cpu_timer_en    <= '1';
     
        when 16#03000# to 16#03fff# =>
          cpu_shr_ram_en   <= '1';

        when 16#04000# to 16#041C3# =>
          cpu_sinus_table_en   <= '1';

        when 16#80000# =>
          spi_en       <= '1';

        when 16#80001# to 16#8001f# =>
          gpio_ctrl_en <= '1';

        when others =>
          
      end case;

    end if;

  end process;

end;