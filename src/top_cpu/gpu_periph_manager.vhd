Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

 -- Main Author : Julien BESSE
 -- With the kind collaboration of : Pierre JOUBERT

entity gpu_periph_manager is
  generic (
    address_size : integer     -- Largeur de l'adresse
    );
  port (
    gpu_bus_address     : in std_logic_vector(address_size-1 downto 0);
    gpu_bus_en          : in std_logic;

    gpu_ram_en          : out std_logic;
    gpu_shr_ram_en      : out std_logic;
    gpu_sinus_table_en  : out std_logic;
    vga_bitmap_en       : out std_logic;
    gpu_call_stack_en       : out std_logic;
    gpu_stack_pointer_en    : out std_logic;
    gpu_base_pointer_en     : out std_logic;
    gpu_stack_add_param_en  : out std_logic;
    gpu_address_counter_en  : out std_logic;
    gpu_dummy_en            : out std_logic;
    gpu_div_int_en          : out std_logic;
    gpu_div_real_en        : out std_logic
    );

end entity gpu_periph_manager;


architecture rtl of gpu_periph_manager is

begin

  process (gpu_bus_address, gpu_bus_en) is
  begin
    gpu_ram_en         <= '0';
    gpu_shr_ram_en     <= '0';
    vga_bitmap_en      <= '0';
    gpu_call_stack_en       <= '0';
    gpu_stack_pointer_en    <= '0';
    gpu_base_pointer_en     <= '0';
    gpu_stack_add_param_en  <= '0';
    gpu_address_counter_en  <= '0';
    gpu_dummy_en            <= '0';
    gpu_sinus_table_en <= '0';
    gpu_div_int_en          <= '0';
    gpu_div_real_en         <= '0';
    
    if gpu_bus_en = '1' then
      case to_integer(unsigned(gpu_bus_address)) is
        when 16#00000# to 16#01fff# => 
          gpu_ram_en   <= '1';
          
        when 16#02000# to 16#023ff# => 
          gpu_call_stack_en    <= '1';
   
        when 16#02400# => 
          gpu_stack_pointer_en  <= '1';
          
        when 16#02401# => 
          gpu_base_pointer_en    <= '1';
        
        when 16#02402# => 
          gpu_stack_add_param_en    <= '1';
          
        when 16#02403# => 
          gpu_address_counter_en    <= '1';
          
        when 16#02404# => 
          gpu_dummy_en    <= '1';
        
         when 16#02408# to 16#0240B# => 
          gpu_div_int_en    <= '1';
          
        when 16#0240C# to 16#0240F#=> 
          gpu_div_real_en    <= '1';
          
        when 16#03000# to 16#03fff# =>
          gpu_shr_ram_en <= '1';

        when 16#04000# to 16#041C3# =>
          gpu_sinus_table_en   <= '1';

        when 16#80000# to 16#cb000# =>
          vga_bitmap_en <= '1';

        when others =>

      end case;

    end if;

  end process;

end;