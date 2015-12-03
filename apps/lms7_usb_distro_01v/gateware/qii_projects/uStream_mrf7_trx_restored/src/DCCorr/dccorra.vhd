-- ----------------------------------------------------------------------------	
-- FILE: 	dccorra.vhd
-- DESCRIPTION:	Automatic DC correction, 18 input bits, 
--							one channel, behavioral implementation
-- DATE:	Aug 03, 2012
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dccorra is
	port 
	(
		clk		: in std_logic;
		nrst	: in std_logic;
		bypass : in std_logic;
		en		: in std_logic;
		x: in signed(17 downto 0);
		iqseli: in std_logic;
		avg: in signed(2 downto 0);		-- 2^(avg + 12)
		y: out signed(17 downto 0);
		iqselo: out std_logic
	);
	
end entity;

architecture rtl of dccorra is

	signal aregi, aregq : signed(36 downto 0);
	signal creg : unsigned(18 downto 0);
	signal dcregi, dcregq, oreg : signed(17 downto 0);
	signal ren: std_logic;
	signal enci, encq: std_logic;

begin

	-- Accumulator enable signals. I channel is when IQSEL = 0, Interleave is I, Q
  enci <= not iqseli;
  encq <= iqseli;

	-- ----------------------------------------------
	-- Counter
	-- ----------------------------------------------
	cnt: process(clk, nrst)
	begin
		if nrst = '0' then
			creg <= (others => '0');
		elsif (rising_edge(clk)) then
			if(en = '1') and (enci = '1') then
				creg <= creg + 1;
			end if;
		end if;
	end process cnt;
	
	ren <=	'1' when creg								= "1111111111111111111"	and avg = "111" else
					'1' when creg(17 downto 0)	= "111111111111111111"	and avg = "110" else
					'1' when creg(16 downto 0)	= "11111111111111111"		and avg = "101" else
					'1' when creg(15 downto 0)	= "1111111111111111"		and avg = "100" else
					'1' when creg(14 downto 0)	= "111111111111111"			and avg = "011" else
					'1' when creg(13 downto 0)	= "11111111111111"			and avg = "010" else
					'1' when creg(12 downto 0)	= "1111111111111"				and avg = "001" else
					'1' when creg(11 downto 0)	= "111111111111"				and avg = "000" else
					'0';

	
	-- ----------------------------------------------
	-- Accumulator I
	-- ----------------------------------------------
	acci: process(clk, nrst)
	begin
		if nrst = '0' then
			aregi <= (others => '0');
		elsif (rising_edge(clk)) then
			if(en = '1') and (enci = '1') then
				if(ren = '1') then
					aregi <= resize(x, aregi'length);
				else
					aregi <= aregi + resize(x, aregi'length);
				end if;
			end if;
		end if;
	end process acci;
	
	-- ----------------------------------------------
	-- Accumulator Q
	-- ----------------------------------------------
	accq: process(clk, nrst)
	begin
		if nrst = '0' then
			aregq <= (others => '0');
		elsif (rising_edge(clk)) then
			if(en = '1') and (encq = '1') then
				if(ren = '1') then
					aregq <= resize(x, aregq'length);
				else
					aregq <= aregq + resize(x, aregq'length);
				end if;
			end if;
		end if;
	end process accq;






	-- ----------------------------------------------
	-- DC Register I
	-- ----------------------------------------------
	dcri: process(clk, nrst)
	begin
		if nrst = '0' then
			dcregi <= (others => '0');
		elsif (rising_edge(clk)) then
			if(en = '1') then
				if(ren = '1') and (enci = '1') then
					if		avg = "111" then dcregi <=	aregi(36 downto 19);
					elsif	avg = "110" then dcregi <=	aregi(35 downto 18);
					elsif	avg = "101" then dcregi <=	aregi(34 downto 17);
					elsif	avg = "100" then dcregi <=	aregi(33 downto 16);
					elsif	avg = "011" then dcregi <=	aregi(32 downto 15);
					elsif	avg = "010" then dcregi <=	aregi(31 downto 14);
					elsif	avg = "001" then dcregi <=	aregi(30 downto 13);
					else									 dcregi <=	aregi(29 downto 12);
					end if;
				end if;
			end if;
		end if;
	end process dcri;
	
	-- ----------------------------------------------
	-- DC Register Q
	-- ----------------------------------------------
	dcrq: process(clk, nrst)
	begin
		if nrst = '0' then
			dcregq <= (others => '0');
		elsif (rising_edge(clk)) then
			if(en = '1') then
				if(ren = '1') and (encq = '1') then
					if		avg = "111" then dcregq <=	aregq(36 downto 19);
					elsif	avg = "110" then dcregq <=	aregq(35 downto 18);
					elsif	avg = "101" then dcregq <=	aregq(34 downto 17);
					elsif	avg = "100" then dcregq <=	aregq(33 downto 16);
					elsif	avg = "011" then dcregq <=	aregq(32 downto 15);
					elsif	avg = "010" then dcregq <=	aregq(31 downto 14);
					elsif	avg = "001" then dcregq <=	aregq(30 downto 13);
					else									 dcregq <=	aregq(29 downto 12);
					end if;
				end if;
			end if;
		end if;
	end process dcrq;


	-- ----------------------------------------------
	-- Output Register & bypass function
	-- ----------------------------------------------
	outr: process(clk, nrst)
	begin
		if nrst = '0' then
			oreg <= (others => '0');
			iqselo <= '0';
		elsif (rising_edge(clk)) then
			if(en = '1') then
				iqselo <= iqseli;
				if bypass = '1' then --bypass
					oreg <= x;
				else
					if(enci = '1') then
						oreg <= x - dcregi;
					else
						oreg <= x - dcregq;
					end if;
				end if;
			end if;
		end if;
	end process outr;
	
	--reg_next <= reg + resize(data, reg_next'length );
		
	-- Output
	y <= oreg;
	
end rtl; 