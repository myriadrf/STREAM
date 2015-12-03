-- ----------------------------------------------------------------------------	
-- FILE: 	fifo_read.vhd
-- DESCRIPTION:	constatly checks FIFO and if not empty, produces read signal 
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
entity fifo_read is
  port (
        --input ports 
        clk       : in std_logic;
        reset_n   : in std_logic;
		  empty		: in std_logic;

        --output ports
        read_en        : out std_logic 
        
        );
end fifo_read;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of fifo_read is
--declare signals,  components here


  
begin

  process(reset_n, clk)
    begin
      if reset_n='0' then
				read_en<='0';
 	    elsif (clk'event and clk = '1') then
 	     if empty='0' then 
 	          read_en<='1';
 	     else 
 	       read_en<='0'; 
 	      end if;
 	    end if;
    end process;
	 
  
end arch;