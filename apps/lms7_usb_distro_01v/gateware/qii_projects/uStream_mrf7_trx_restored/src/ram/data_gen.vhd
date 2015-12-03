-- ----------------------------------------------------------------------------	
-- FILE: 	data_gen.vhd
-- DESCRIPTION:	Generates test IQ data
-- DATE:	Nov 10, 2014
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity data_gen is
  port (
        --input ports 
        clk       : in std_logic;
        reset_n   : in std_logic;
        pause     : in std_logic;

        --output ports
        IQ_data   : out std_logic_vector(12 downto 0) 
        
        );
end data_gen;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture data_gen_arch of data_gen is
  
  signal out_reg : std_logic_vector (11 downto 0 );
  signal cnt     : unsigned (2 downto 0);
  signal IQ_sel  : std_logic;  
  
  type lut is array (0 to 7) of std_logic_vector (11 downto 0); 
  constant sin_cos_lut : lut :=(
      --cos--     --sin--
      0=>x"7FF",   1=>x"000",
      2=>x"000",   3=>x"7FF",
      4=>x"800",   5=>x"000",
      6=>x"000",   7=>x"800" 
    );
begin
  
  
  --output register data 
--  process (clk, reset_n) is 
--    begin 
--      if reset_n='0' then 
--          out_reg<=(others=>'0');
--      elsif (clk'event and clk = '1') then
--          out_reg<=sin_cos_lut(To_integer(cnt)); 
--      end if;  
--    end process;
    
  --counter to sellect sin or cos values from lut and IQ_sel signal gen. 
   
      process (clk, reset_n) is 
    begin 
      if reset_n='0' then 
          cnt<=(others=>'0');
          IQ_sel<='0'; 
      elsif (clk'event and clk = '1') then
          if pause='0' then
              IQ_sel<=NOT IQ_sel; 
              cnt<=cnt+1;
          end if;  
      end if;  
    end process;
    
   IQ_data<= IQ_sel & sin_cos_lut(To_integer(cnt));
      
end data_gen_arch;   




