-- ----------------------------------------------------------------------------	
-- FILE: 	gcorr.vhd
-- DESCRIPTION:	Gain correction implementation, 18 input bits
-- DATE:	Aug 03, 2012
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity gcorr18 is
  port
  (
    clk: in std_logic;
    nrst: in std_logic;
    en: in std_logic;
    DIQ : in std_logic_vector (17 downto 0);
    iq_sel: in std_logic;
    fsinc_polarity: in std_logic;     -- 1: frame start, when 1; 0: frame start, when 0.
    interleave_mode: in std_logic;    -- 0: IQ; 1: QI.
    clk_pol: in std_logic;            -- 0: positive; 1: negative.
    aci: in std_logic_vector (7 downto 0);
    acq: in std_logic_vector (7 downto 0);
		bypass: in std_logic;
    DIQ_corr: out std_logic_vector (17 downto 0);
    iq_sel_corr: out std_logic
  );
end gcorr18;

-- ----------------------------------------------------------------------------
-- Architecture of gain corrector
-- ----------------------------------------------------------------------------
architecture gcorr_arch of gcorr18 is

  -- Delay line by 3 clocks
--  signal D1, D2, D3, Dd: std_logic_vector(17 downto 0); -- 
--  signal cos_out: std_logic_vector(17 downto 0); -- Cos block output
--  signal tan_c: std_logic_vector (29 downto 0);
--  signal tan_s: std_logic_vector (29 downto 0);
--  signal tan_c_div, tan_s_div: std_logic_vector(17 downto 0);
--
--  signal DIQ_bal_i: std_logic_vector (19 downto 0);
--  
  signal iq_sel_D:  std_logic;
--  
--  signal iq_out_d0, iq_out_d1: std_logic_vector (19 downto 0);
	
	--Amplitude correction
	signal a_out: std_logic_vector (26 downto 0);	--Multiplication result
	signal a_reg: std_logic_vector (17 downto 0);
	signal acm: std_logic_vector (7 downto 0);

	
begin

	
	-- Mux and multiplier
	acm <= aci when iq_sel = '0' else acq;
	a_out <= std_logic_vector(signed('0' & acm) * signed(DIQ)) when bypass = '0' else "0" & DIQ & "00000000";

	-- Latch
	ar: process(clk, nrst)
	begin
		if nrst = '0' then
			a_reg <= (others => '0');
		elsif clk'event and clk = '1' then
			if en = '1' then
				a_reg <= a_out(25 downto 8);
			end if;
		end if;
	end process ar;

  -- iq_sel delay register
	iqD: process(clk, nrst)
	begin
		if nrst = '0' then
			iq_sel_D <= '0';
		elsif clk'event and clk = '1' then
			if en = '1' then
				iq_sel_D <= iq_sel;
			end if;
		end if;
	end process iqD;
	
	DIQ_corr <= a_reg;
	iq_sel_corr <= iq_sel_D;

end gcorr_arch;
