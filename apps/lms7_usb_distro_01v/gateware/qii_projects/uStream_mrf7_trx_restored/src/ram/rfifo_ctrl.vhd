-- ----------------------------------------------------------------------------	
-- FILE: 	sl_ctrl.vhd
-- DESCRIPTION:	writes to fifo and checks for unused samples
-- DATE:	Jan 25, 2015
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rfifo_ctrl is
port(
	data  	: in std_logic_vector(31 downto 0);
	wrreq 	: in std_logic;
	wrreq_o	: out std_logic
);
end rfifo_ctrl;

architecture arc of rfifo_ctrl is
	signal data_msb, data_lsb : std_logic_vector(15 downto 0);
begin
	data_msb <= data(31 downto 16);
	data_lsb <= data(15 downto  0);
	
	ctrl_proc : process(wrreq, data_msb, data_lsb)
	begin
		wrreq_o <= '0';
		if wrreq = '1' then
			if data_msb(15) = '1' or data_lsb(15) = '1' then
				wrreq_o <= '0';
			else
				wrreq_o <= '1';
			end if;
		end if;
	end process;
end arc;