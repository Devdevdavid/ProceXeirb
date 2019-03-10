----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:00 02/15/2011 
-- Design Name: 
-- Module Name:    CPU_8bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_8bits is
    Port ( reset 		 : in  STD_LOGIC;
           clk100M 	     : in  STD_LOGIC;
		   valid_saisie  : in  STD_LOGIC;
	 	   AN            : out STD_LOGIC_VECTOR(7 downto 0);
           Sevenseg 	 : out STD_LOGIC_VECTOR (7 downto 0);
          -- LED 		     : out STD_LOGIC_VECTOR (7 downto 0);
           
-- Programmeur
           gpu_prog_btn         : in  std_logic;
           gpu_prog_status_led  : out std_logic;
           cpu_prog_btn         : in  std_logic;
           cpu_prog_status_led  : out std_logic;
           uart_rx              : in  std_logic;
     
           -- Affichage débogueur
           debug_cpu_gpu        : in  std_logic; -- Choix de l'afficage entre le CPU et le GPU
           
                             -- Sortie VGA
             VGA_hs               : out std_logic;   -- horisontal vga syncr.
             VGA_vs               : out std_logic;   -- vertical vga syncr.
             VGA_red              : out std_logic_vector(3 downto 0);   -- red output
             VGA_green            : out std_logic_vector(3 downto 0);   -- green output
             VGA_blue             : out std_logic_vector(3 downto 0);   -- blue output
    
         
             -- Interrupteurs
             switches    : in  std_logic_vector(15 downto 0);
             
             -- LEDs
             led_out     : out std_logic_vector(15 downto 0)
			 );
end CPU_8bits;

architecture Behavioral of CPU_8bits is

component clk_wiz_0
port
 (
   clk_in           : in     std_logic;
   clk_out          : out    std_logic
  );
end component;

component top_projet
    Port (
      clk             : in  STD_LOGIC;
      clk_en          : in  STD_LOGIC;
      reset           : in  STD_LOGIC;  
-- Programmeur
            gpu_prog_btn         : in  std_logic;
            gpu_prog_status_led  : out std_logic;
            cpu_prog_btn         : in  std_logic;
            cpu_prog_status_led  : out std_logic;
            uart_rx              : in  std_logic;
      
            -- Affichage débogueur
    --        debug_cpu_gpu        : in  std_logic; -- Choix de l'afficage entre le CPU et le GPU
    --        addr                 : out STD_LOGIC_VECTOR (5 downto 0);
    --        data_mem_in          : out STD_LOGIC_VECTOR (7 downto 0);
   --         data_mem_out         : out STD_LOGIC_VECTOR (7 downto 0);
            
                  -- Sortie VGA
            VGA_hs               : out std_logic;   -- horisontal vga syncr.
            VGA_vs               : out std_logic;   -- vertical vga syncr.
            VGA_red              : out std_logic_vector(3 downto 0);   -- red output
            VGA_green            : out std_logic_vector(3 downto 0);   -- green output
            VGA_blue             : out std_logic_vector(3 downto 0);   -- blue output
            
            
                  -- Afficheur 8 x 7 segments
              sevenseg             : out std_logic_vector (6 downto 0);
              sevenseg_an          : out std_logic_vector (7 downto 0);
              
          -- Interrupteurs
          switches    : in  std_logic_vector(15 downto 0);
          
          -- LEDs
          led_out     : out std_logic_vector(15 downto 0)
      );
end component;

component acces_carte 
    port (clk 		    : in std_logic;
	 	  reset  		: in std_logic;
          AdrLSB 		: in std_logic_vector(3 downto 0);
          AdrMSB 		: in std_logic_vector(1 downto 0);
          DataLSB		: in std_logic_vector(3 downto 0);
          DataMSB		: in std_logic_vector(3 downto 0);
          DataInMem		: in std_logic_vector(7 downto 0);
	 	  ce1s  		: out std_logic;
	      ce25M  		: out std_logic;
	 	  AN            : out std_logic_vector(7 downto 0);
	 	  Sseg 			: out std_logic_vector(7 downto 0);
	 	  LED  			: out std_logic_vector(7 downto 0);
		  LEDg 			: out std_logic);
end component;

signal Data_Mem_Unit    : STD_LOGIC_VECTOR (7 downto 0);
signal Data_Unit_Mem    : STD_LOGIC_VECTOR (7 downto 0);
signal Adr           	: STD_LOGIC_VECTOR (5 downto 0);
signal clk25M			: STD_LOGIC;
signal ce1s 			: STD_LOGIC;
signal ce25M			: STD_LOGIC;
signal LEDg 			: STD_LOGIC;
signal sig_locked   	: STD_LOGIC;

--attribute mark_debug : string;
--attribute keep : string;
--attribute mark_debug of ce25M      : signal is "true";
--attribute mark_debug of sig_locked : signal is "true";
--attribute mark_debug of reset : signal is "true";

constant zero           : STD_LOGIC := '0';

begin


Clock_IP : clk_wiz_0
  port map
   (
    clk_in  => clk100M,
    clk_out => clk25M
    );

-- Attention pour la simulation mettre  ce de UT et UC � ce25M sinon ce1s
														  
proc  				 : top_projet
 port map (
        clk                  => clk25M,
        clk_en               => ce25M,
        reset                => Reset,
        -- Programmeur
        gpu_prog_btn         => gpu_prog_btn,
        gpu_prog_status_led  => gpu_prog_status_led,
        cpu_prog_btn         => cpu_prog_btn,
        cpu_prog_status_led  => cpu_prog_status_led,
        uart_rx              => uart_rx,
  
        -- Affichage débogueur
  --      debug_cpu_gpu        => debug_cpu_gpu,
  --      addr                 => Adr,
  --      data_mem_in          => Data_Unit_Mem,
  --      data_mem_out         => Data_Mem_Unit,
        
                          -- Sortie VGA
          VGA_hs               => VGA_hs,
          VGA_vs               => VGA_vs,
          VGA_red              => VGA_red,
          VGA_green            => VGA_green,
          VGA_blue             => VGA_blue,
          
          sevenseg  =>  Sevenseg(6 downto 0),
          sevenseg_an => AN,
          
          switches => switches,
          
          led_out => led_out
        );

Sevenseg(7) <= '1';

Adr <= (others => '0');
Data_Unit_Mem <= (others => '0');
Data_Mem_Unit <= (others => '0');

Peripheriques 	 : acces_carte  port map (clk25M,
										  Reset, 
										  Adr(3 downto 0), 
										  Adr(5 downto 4),
										  Data_Unit_Mem(3 downto 0), 
										  Data_Unit_Mem(7 downto 4),
										  Data_Mem_Unit,
										  ce1s,  
										  ce25M, 
										  open,
										  open, 
										  open, 
										  LEDg);		
end Behavioral;

