Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
--use IEEE.fixed_float_types.all;
--use IEEE.fixed_pkg.all;
use work.fixed_generic_pkg_mod.all; -- Fix for Vivado

 -- Main Author : Julien BESSE
 -- With the kind collaboration of : Pierre JOUBERT

 --library xil_defaultlib;
 --use xil_defaultlib.op_codes.all;

 entity UAL is
  generic (
    data_size       : integer;
    op_code_size    : integer;
    sfixed_msb_add  : integer := 15;
    sfixed_msb_mul  : integer := 10;
    sfixed_lsb      : integer := -8
    );
  port (
    sel_ual   : in  std_logic_vector (op_code_size-1 downto 0);
    data_A    : in  std_logic_vector (data_size-1 downto 0);
    data_B    : in  std_logic_vector (data_size-1 downto 0);

    data_out  : out std_logic_vector (data_size-1 downto 0);
    carry     : out std_logic
    );

end entity UAL;

architecture rtl of UAL is 

/*  --constant op_code_size : integer := 5;
  -- Instructions logiques
  constant OP_NOR  : std_logic_vector (op_code_size-1 downto 0) := "00000";
  constant OP_OR   : std_logic_vector (op_code_size-1 downto 0) := "00001";
  constant OP_AND  : std_logic_vector (op_code_size-1 downto 0) := "00010";
  constant OP_XOR  : std_logic_vector (op_code_size-1 downto 0) := "00011";
  
  -- Instructions mathématiques sur entiers
  constant OP_ADD  : std_logic_vector (op_code_size-1 downto 0) := "00100";
  constant OP_SUB  : std_logic_vector (op_code_size-1 downto 0) := "00101";
  --constant OP_DIV  : std_logic_vector (op_code_size-1 downto 0) := "00110"; -- deprecated use optimunDivisor peripherique
  constant OP_MUL  : std_logic_vector (op_code_size-1 downto 0) := "00111";

  -- Instructions mathématiques sur virgule fixe
  constant OP_ADDF : std_logic_vector (op_code_size-1 downto 0) := "01001";
  --constant OP_DIVF : std_logic_vector (op_code_size-1 downto 0) := "01010"; --deprecated use optimunDivisor peripherique
  constant OP_MULF : std_logic_vector (op_code_size-1 downto 0) := "01011";

  -- Conversions virgule fixe/entiers
  constant OP_FTOI : std_logic_vector (op_code_size-1 downto 0) := "01100";
  constant OP_ITOF : std_logic_vector (op_code_size-1 downto 0) := "01101";

  -- Opérations mémoire
  constant OP_STA  : std_logic_vector (op_code_size-1 downto 0) := "10000";
  constant OP_JCC  : std_logic_vector (op_code_size-1 downto 0) := "10001";
  constant OP_JMP  : std_logic_vector (op_code_size-1 downto 0) := "10010";
  constant OP_GET  : std_logic_vector (op_code_size-1 downto 0) := "10011";

  -- Tests sur les entiers
  constant OP_TGT  : std_logic_vector (op_code_size-1 downto 0) := "10100";
  constant OP_TLT  : std_logic_vector (op_code_size-1 downto 0) := "10101";
  constant OP_TEQ  : std_logic_vector (op_code_size-1 downto 0) := "10110";

  -- Tests sur les virgule fixe
  constant OP_TGTF : std_logic_vector (op_code_size-1 downto 0) := "10111";
  constant OP_TLTF : std_logic_vector (op_code_size-1 downto 0) := "11000";
  constant OP_TEQF : std_logic_vector (op_code_size-1 downto 0) := "11001";
*/
  attribute use_dsp : string;
  attribute use_dsp of rtl : architecture is "no";

signal data_out_with_carry : std_logic_vector(data_size*2 downto 0); -- Assez de place pour contenir le résultat d'une multiplication

begin

  process(data_A, data_B, sel_ual) is
    variable data_A_fixed     : sfixed(sfixed_msb_add downto sfixed_lsb);
    variable data_B_fixed     : sfixed(sfixed_msb_add downto sfixed_lsb);
    variable data_out_fixed   : sfixed(sfixed_msb_add*2+1 downto sfixed_lsb*2); -- La multiplication donne un résultat large

  begin
    data_out_with_carry <= (others => '0');
    data_A_fixed        := (others => '0'); 
    data_B_fixed        := (others => '0'); 
    data_out_fixed      := (others => '0');

    case sel_ual is

      -- Instructions logiques
      when 5x"00"  =>
        data_out_with_carry (data_size-1   downto 0)   <= (data_A nor data_B);

      when 5x"01"  =>
        data_out_with_carry (data_size-1   downto 0)   <= (data_A or  data_B);

      when 5x"02"  =>
        data_out_with_carry (data_size-1   downto 0)   <= (data_A and data_B);

      when 5x"03"  =>
        data_out_with_carry (data_size-1   downto 0)   <= (data_A xor data_B);

      -- Instructions mathématiques sur entiers
      when 5x"04"  =>
        data_out_with_carry (data_size     downto 0)   <= std_logic_vector(signed("0" & data_A) + signed("0" & data_B));

      when 5x"05" =>
        data_out_with_carry (data_size-1   downto 0)   <= std_logic_vector(signed(data_B) - signed(data_A));

      --when "00110"  => -- deprecated
        --data_out_with_carry (6             downto 0)   <= std_logic_vector(signed(data_B(6 downto 0)) / signed(data_A(3 downto 0)));
        
      when 5x"06"  =>
        --data_out_with_carry (31            downto 0)   <= std_logic_vector(signed(data_B(15 downto 0)) * signed(data_A(15 downto 0)));
        data_out_with_carry ((data_size*2)-1 downto 0)   <= std_logic_vector(signed(data_B(data_size-1 downto 0)) * signed(data_A(data_size-1 downto 0)));
        
     
      
      
  -- Instructions mathématiques sur virgules fixes
  -- OP_ADDF
      when 5x"07" =>
        
        -- Conversion
        data_A_fixed := to_sfixed(data_A(sfixed_msb_add-sfixed_lsb  downto 0), sfixed_msb_add, sfixed_lsb);
        data_B_fixed := to_sfixed(data_B(sfixed_msb_add-sfixed_lsb  downto 0), sfixed_msb_add, sfixed_lsb);

        -- Calculs
        data_out_fixed(sfixed_msb_add+1 downto sfixed_lsb) := data_A_fixed + data_B_fixed;

        -- Conversion
        data_out_with_carry (sfixed_msb_add-sfixed_lsb+1  downto 0) <= to_slv(data_out_fixed(sfixed_msb_add+1 downto sfixed_lsb));
        
  -- OP_SUBF
      when 5x"08" =>
        
        -- Conversion
        data_A_fixed := to_sfixed(data_A(sfixed_msb_add-sfixed_lsb  downto 0), sfixed_msb_add, sfixed_lsb);
        data_B_fixed := to_sfixed(data_B(sfixed_msb_add-sfixed_lsb  downto 0), sfixed_msb_add, sfixed_lsb);

        -- Calculs
        data_out_fixed(sfixed_msb_add+1 downto sfixed_lsb) := data_B_fixed - data_A_fixed;

        -- Conversion
        data_out_with_carry (sfixed_msb_add-sfixed_lsb+1  downto 0) <= to_slv(data_out_fixed(sfixed_msb_add+1 downto sfixed_lsb));

  -- OP_DIVF -- deprecated
  --    when "01010" =>

  -- OP_MULF
      when 5x"09" =>

        -- Conversion
        data_A_fixed(sfixed_msb_mul downto sfixed_lsb) := to_sfixed(data_A(sfixed_msb_mul-sfixed_lsb  downto 0), sfixed_msb_mul, sfixed_lsb);
        data_B_fixed(sfixed_msb_mul downto sfixed_lsb) := to_sfixed(data_B(sfixed_msb_mul-sfixed_lsb  downto 0), sfixed_msb_mul, sfixed_lsb);

        -- Calculs
        data_out_fixed (sfixed_msb_mul*2+1 downto sfixed_lsb*2) := data_A_fixed(sfixed_msb_mul downto sfixed_lsb) * data_B_fixed(sfixed_msb_mul downto sfixed_lsb);

        -- Conversion
        data_out_with_carry (sfixed_msb_mul*2+1-sfixed_lsb downto 0) <= to_slv(data_out_fixed(sfixed_msb_mul*2+1 downto sfixed_lsb));
     
     
     
  -- Conversions virgules fixes/entiers
  -- OP_FTOI
      when 5x"a" =>
        -- Tronquage de la partie entière (l'idéal serait un arrondi mais bon...)
        data_out_with_carry(sfixed_msb_add downto 0) <= data_A(sfixed_msb_add-sfixed_lsb downto (-sfixed_lsb)); 

  -- OP_ITOF
      when 5x"0b" =>
        -- On prend les bits les plus faibles de l'entier, qui deviennent la partie entière du virgule fixe
        data_out_with_carry(sfixed_msb_add-sfixed_lsb downto -sfixed_lsb) <= data_A(sfixed_msb_add downto 0);

  -- Opérations mémoire
  -- OP_STA
      when 5x"0e" =>

  -- OP_JCC
      when 5x"0f" =>

  -- OP_JMP
      when 5x"10" =>

  -- OP_GET
      when 5x"11" =>
        data_out_with_carry (data_size-1 downto 0) <= data_A;

  -- OP_GAD
      when 5x"17" =>
        data_out_with_carry (data_size-1 downto 0) <= data_A;
        
  -- Tests sur les entiers et les virgules fixes
  -- OP_TGT
      when 5x"12" =>
        data_out_with_carry(data_size) <= '1' when signed(data_A) < signed (data_B) else '0';

  -- OP_TLT
      when 5x"13" =>
        data_out_with_carry(data_size) <= '1' when signed(data_A) > signed (data_B) else '0';

  -- OP_TEQ
      when 5x"14" =>
        data_out_with_carry(data_size) <= '1' when signed(data_A) = signed (data_B) else '0';
  -- OP_TNE
      when 5x"15" =>
        data_out_with_carry(data_size) <= '1' when signed(data_A) /= signed (data_B) else '0';


      when others =>
      data_out_with_carry <= (others => '0');
      data_out_with_carry(31 downto 0) <= x"CAFEFADE";

    end case;
  end process;

  data_out <= data_out_with_carry(data_size-1 downto 0);
  carry    <= data_out_with_carry(data_size);

end architecture rtl;
