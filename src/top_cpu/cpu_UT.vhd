Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

 -- Main Author : Julien BESSE
 -- With the kind collaboration of : Pierre JOUBERT

entity UT is
  generic (
    op_code_size : integer; -- Largeur du signal des instructions
    data_size    : integer;  -- Taille de chaque mot stocké
    address_size : integer
      );
  port (
  reset    : in  std_logic;
    clk      : in  std_logic;
    clk_en   : in  std_logic;

    data_in  : in  std_logic_vector(data_size-1 downto 0);
    data_out : out std_logic_vector(data_size-1 downto 0);

    carry    : out std_logic;

    sel_ual  : in std_logic_vector(op_code_size-1 downto 0);

    load_ra  : in std_logic;
    load_ff  : in std_logic;
    load_rd  : in std_logic;
    load_of  : in std_logic;
    init_ff  : in std_logic;
    init_acc : in std_logic;
    add_stack  : in std_logic;
    rmv_stack  : in std_logic;
    
    --bus
    bus_data_in        : out std_logic_vector(data_size-1 downto 0);
    bus_data_out       : in  std_logic_vector(data_size-1 downto 0);
    bus_address        : in  std_logic_vector(address_size-1 downto 0);
    bus_R_W            : in  std_logic;
    bus_en             : in  std_logic;

    --entree enable des peripherique
    cpu_stack_pointer_en      : in  std_logic;
    cpu_base_pointer_en       : in  std_logic;
    cpu_stack_add_param_en    : in  std_logic
  );

end entity;

architecture rtl of UT is 

    component reg
        generic (
            size : integer := 8
        );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;

        load     : in  std_logic;
        init     : in  std_logic;

        data_in  : in  std_logic_vector (size-1 downto 0);
        data_out : out std_logic_vector (size-1 downto 0)
        );
    end component;

    component UAL 
        generic (
          data_size    : integer;
          op_code_size : integer
        );
    port (
      --  clk       : in std_logic;
        sel_ual   : in  std_logic_vector (op_code_size-1 downto 0);
        data_A    : in  std_logic_vector (data_size-1 downto 0);
        data_B    : in  std_logic_vector (data_size-1 downto 0);

        data_out  : out std_logic_vector (data_size-1 downto 0);
        carry     : out std_logic
        );
    end component;
    
    component reg_read_only_with_interface is
    generic (
            data_size : integer := 8;
            address_size : integer := 8;
            init_value  : integer := 0
        );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;
        
        data_out : out std_logic_vector(data_size-1 downto 0);
        en                 : in  std_logic;
        bus_data_in        : out std_logic_vector(data_size-1 downto 0);
        bus_data_out       : in  std_logic_vector(data_size-1 downto 0);
        bus_address        : in  std_logic_vector(address_size-1 downto 0);
        bus_R_W            : in  std_logic;
        bus_en             : in  std_logic
        );
        end component;

    component reg_write_only_with_interface is
    generic (
            data_size : integer := 8;
            address_size : integer := 8
            
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
    end component;
        
    component add is
    generic (
                    size : integer := 8
                );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;
                
        data_in_1  : in  std_logic_vector (size-1 downto 0);
        data_in_2  : in  std_logic_vector (size-1 downto 0);
        data_out : out std_logic_vector (size-1 downto 0)
        );
    end component;
    
    component stack_pointer is
    generic (
            address_size : integer := 6;  -- Largeur du signal d'adresses
            init_value : integer := 0;
            data_size : integer := 8
        );
    port (
        reset    : in  std_logic;
        clk      : in  std_logic;
        clk_en   : in  std_logic;

        add_cpt : in  std_logic;
        rmv_cpt : in std_logic;
        
        en                 : in  std_logic;
        bus_data_in        : out std_logic_vector(data_size-1 downto 0);
        bus_data_out       : in  std_logic_vector(data_size-1 downto 0);
        bus_address        : in  std_logic_vector(address_size-1 downto 0);
        bus_R_W            : in  std_logic;
        bus_en             : in  std_logic
        );
    end component;
    
    signal reg_data_to_UAL : std_logic_vector (data_size-1 downto 0);
    signal reg_accu_to_UAL : std_logic_vector (data_size-1 downto 0);
    signal UAL_out_to_accu : std_logic_vector (data_size-1 downto 0);
    signal UAL_carry_to_ff : std_logic;
    signal ff_input : std_logic_vector(0 downto 0);
    
    signal base_pointer_to_add : std_logic_vector (data_size-1 downto 0);
    signal offset_to_add : std_logic_vector (data_size-1 downto 0);
    signal add_to_stack_add : std_logic_vector (data_size-1 downto 0);

begin

inst_UAL : UAL
    generic map(
         data_size    => data_size,
         op_code_size => op_code_size
    )
    port map(
       --clk      => clk,
        sel_ual  => sel_ual,
        data_A   => reg_data_to_UAL,
        data_B   => reg_accu_to_UAL,

        data_out => UAL_out_to_accu,
        carry    => UAL_carry_to_ff
    );


    ff_input(0) <= UAL_carry_to_ff;

inst_ff : reg
    generic map (
        size => 1
        )
    port map (
        reset   => reset,
        clk     => clk,
        clk_en  => clk_en,

        load    => load_ff,
        init    => init_ff,

        data_in  => ff_input,
        data_out(0) => carry
        );

inst_reg_accu : reg
    generic map (
        size => data_size
        )
    port map (
        reset   => reset,
        clk     => clk,
        clk_en  => clk_en,

        load    => load_ra,
        init    => init_acc,

        data_in  => UAL_out_to_accu,
        data_out => reg_accu_to_UAL
        );

    data_out <= reg_accu_to_UAL; -- To RAM

inst_reg_data : reg
    generic map (
        size => data_size
        )
    port map (
        reset   => reset,
        clk     => clk,
        clk_en  => clk_en,

        load    => load_rd,
        init    => '0',

        data_in  => data_in,
        data_out => reg_data_to_UAL
        );

inst_reg_base_pointer : reg_read_only_with_interface
    generic map (
    data_size        => data_size,
    address_size     => address_size,
    init_value       => 9215 -- 0x23FF
  )
  port map (
    reset           => reset,
    clk             => clk,
    clk_en          => clk_en,
    
    data_out        => base_pointer_to_add,
    
    en              => cpu_base_pointer_en,         
    bus_data_in     => bus_data_in,
    bus_data_out    => bus_data_out,
    bus_address     => bus_address,
    bus_R_W         => bus_R_W,
    bus_en          => bus_en
  );   
  
  inst_reg_stack_add : reg_write_only_with_interface
    generic map (
    data_size        => data_size,
    address_size     => address_size
  )
  port map (
    reset           => reset,
    clk             => clk,
    clk_en          => clk_en,
    
    data_in        => add_to_stack_add,
    
    en              => cpu_stack_add_param_en,         
    bus_data_in     => bus_data_in,
    bus_data_out    => bus_data_out,
    bus_address     => bus_address,
    bus_R_W         => bus_R_W,
    bus_en          => bus_en
  );   
   
  inst_reg_offset_param : reg
    generic map (
    size        => data_size
  )
  port map (
    reset   => reset,
    clk     => clk,
    clk_en  => clk_en,

    load    => load_of,
    init    => '0',

    data_in  => data_in,
    data_out => offset_to_add
    
  );   
  
  inst_calc_stack_adr : add
    generic map (
        size        => data_size
    )
    port map (
    reset   => reset,
    clk     => clk,
    clk_en  => clk_en,

    data_in_1  => base_pointer_to_add,
    data_in_2  => offset_to_add,
    data_out => add_to_stack_add
    );   
    
    inst_stack_pointer : stack_pointer
    generic map (
        data_size        => data_size,
        address_size     => address_size,
        init_value       => 9215 -- 0x23FF
    )
    port map (
    reset   => reset,
    clk     => clk,
    clk_en  => clk_en,
    
    add_cpt => add_stack,
    rmv_cpt => rmv_stack,
    
    en              => cpu_stack_pointer_en,         
    bus_data_in     => bus_data_in,
    bus_data_out    => bus_data_out,
    bus_address     => bus_address,
    bus_R_W         => bus_R_W,
    bus_en          => bus_en
   
    );   

end architecture;