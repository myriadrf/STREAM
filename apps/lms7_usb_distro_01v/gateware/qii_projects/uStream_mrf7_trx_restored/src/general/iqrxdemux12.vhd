-- ----------------------------------------------------------------------------	
-- FILE:	       iqrxdemux12.vhd
-- DESCRIPTION:	IQ DEMUX.
-- DATE:        June 01, 2009
-- AUTHOR(s):   Lime Microsystems
-- REVISIONS:	  Jun 23, 2009: IQ DEMUX changed to match LMS6002D defaults:
--                            - frame starts with IQ_SEL = 0
--                            - I,Q interleave mode (I goes first).
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity iqrxdemux12 is
	port
	(
		nrst: in std_logic;
		clk: in std_logic;
		clkd2: in std_logic;
		en: in std_logic;
		iq: in std_logic_vector(11 downto 0);
		iqsel: in std_logic;
		fstart: in std_logic;		-- Frame start
		yi: out std_logic_vector(11 downto 0);
		yq: out std_logic_vector(11 downto 0)
	);
end iqrxdemux12;

architecture rtl of iqrxdemux12 is
	signal lr1: std_logic_vector(11 downto 0);
	signal lr2: std_logic_vector(11 downto 0);
	signal lr3: std_logic_vector(11 downto 0);
	
	signal lrin: std_logic_vector(11 downto 0);
	signal lrqn: std_logic_vector(11 downto 0);
	signal lrip: std_logic_vector(11 downto 0);
	signal lrqp: std_logic_vector(11 downto 0);

begin

	L1: process(clk, nrst)
	begin
		if nrst = '0' then
			lr1 <= (others => '0');
		elsif clk'event and clk = '1' then
			if iqsel = fstart then   
				lr1 <= iq;
			end if;
		end if;
	end process L1;
	
	L2: process(clk, nrst)
	begin
		if nrst = '0' then
			lr2 <= (others => '0');
		elsif clk'event and clk = '1' then
			if iqsel = not fstart then   
				lr2 <= iq;
			end if;
		end if;
	end process L2;
	
	L3: process(clk, nrst)
	begin
		if nrst = '0' then
			lr3 <= (others => '0');
		elsif clk'event and clk = '1' then
			if iqsel = not fstart then   
				lr3 <= lr1;
			end if;
		end if;
	end process L3;


	Ln: process(clkd2, nrst)
	begin
		if nrst = '0' then
			lrin <= (others => '0');
			lrqn <= (others => '0');
		elsif clkd2'event and clkd2 = '0' then
				lrin <= lr3;
				lrqn <= lr2;
		end if;
	end process Ln;

	Lp: process(clkd2, nrst)
	begin
		if nrst = '0' then
			lrip <= (others => '0');
			lrqp <= (others => '0');
		elsif clkd2'event and clkd2 = '1' then
				lrip <= lrin;
				lrqp <= lrqn;
		end if;
	end process Lp;


	-- Output
	yi <= lrip;
	yq <= lrqp;

end rtl;


 