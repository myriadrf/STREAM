-- ----------------------------------------------------------------------------	
-- FILE: 	dc_level.vhd
-- DESCRIPTION:	Generates DC levels and IQ_SEL signal
--
-- DATE:	May 13, 2011
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	

library ieee;
use ieee.std_logic_1164.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity iqmux12 is
  port
  (
    clk: in std_logic;
    nrst: in std_logic;
    en: in std_logic;
    i_src : in std_logic_vector (11 downto 0);
    q_src : in std_logic_vector (11 downto 0);

    iq : out std_logic_vector (11 downto 0);
    iq_sel : out std_logic
  );
end iqmux12;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture iqmux_arch of iqmux12 is

	-- IQ Data register
	signal i_reg, q_reg: std_logic_vector(11 downto 0);
	
begin

  -- Data input latch
	l01: process(clk, nrst)
	begin
		if nrst = '0' then
			i_reg <= (others => '0');
			q_reg <= (others => '0');
		elsif clk'event and clk = '1' then
		  if en = '1' then
				i_reg <= i_src;
				q_reg <= q_src;
		  end if;
		end if;
	end process l01;

	iq     <= i_reg when clk = '1' else q_reg;
	iq_sel <= not clk and en;	--Frame: IQ, frame start, when iq_sel = 0
	--iq_sel <= clk and en;	--Frame: IQ, frame start, when iq_sel = 1

end iqmux_arch;

