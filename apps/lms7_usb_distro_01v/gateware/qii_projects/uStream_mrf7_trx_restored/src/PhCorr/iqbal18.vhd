-- ----------------------------------------------------------------------------	
-- FILE: 	IQBal18.vhd
-- DESCRIPTION:	IQ Balance implementation
-- DATE:	Apr 06, 2011
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity iqbal18 is
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
    tan_aby2: in std_logic_vector (11 downto 0);
		bypass: in std_logic;
    DIQ_bal: out std_logic_vector (19 downto 0);
    iq_sel_bal: out std_logic
  );
end iqbal18;

-- ----------------------------------------------------------------------------
-- Architecture of IQBal_DP
-- ----------------------------------------------------------------------------
architecture iqbal_arch of iqbal18 is

  -- Delay line by 3 clocks
  signal D1, D2, D3, Dd: std_logic_vector(17 downto 0); -- 
  signal cos_out: std_logic_vector(17 downto 0); -- Cos block output
	signal DIQ_bal_o: std_logic_vector(19 downto 0); -- 
  signal tan_g: std_logic_vector (29 downto 0);
  signal tan_g_d1, tan_g_d2: std_logic_vector(18 downto 0);

  signal DIQ_bal_i: std_logic_vector (19 downto 0);
  signal DIQ_bal_id1, DIQ_bal_id2: std_logic_vector (19 downto 0);
  
  signal iq_sel_D:  std_logic;
  
  signal iq_out_d0, iq_out_d1: std_logic_vector (19 downto 0);
	
	--Bypass registers
	signal diq_in   : std_logic_vector (17 downto 0);

	
begin

	bypd: process(clk, nrst)
	begin
		if nrst = '0' then
			diq_in <= (others => '0');
		elsif clk'event and clk = '1' then
		  if en = '1' and bypass = '1' then
        diq_in <= DIQ;
		  end if;
		end if;
	end process bypd;


  -- Delay registers. There are saved samples of I and Q data (after cos gain).
  -- This is necessary for data allign, when I and Q data (after cos gain) samples
  -- are multiplied by tan(alpha/2).
	Stage1: process(clk, nrst)
	begin
		if nrst = '0' then
			D1 <= (others => '0');
			D2 <= (others => '0');
			D3 <= (others => '0');
		elsif clk'event and clk = '1' then
		  if en = '1' then
        D3 <= D2;
        D2 <= D1;
        D1 <= cos_out;
		  end if;
		end if;
	end process Stage1;

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

	-- Mux
	Dd <= D3 when iq_sel_D = fsinc_polarity else D1; --D3 first, while iq_sel_D is delayed by one clock version of iq_sel


  -- Cos multipier (backoff by ~0.17dB)
  cos_out <= std_logic_vector(signed(DIQ) - resize(signed(DIQ(17 downto 6)), DIQ'length));


	-- Mul
  tan_g <= std_logic_vector(signed(cos_out) * signed(tan_aby2));

    -- *******************
  	tg_delay: process(clk, nrst)
	begin
		if nrst = '0' then
			tan_g_d1 <= (others => '0');
			tan_g_d2 <= (others => '0');
		elsif clk'event and clk = '1' then
		  if en = '1' then
        tan_g_d1 <= tan_g(28 downto 10);
        tan_g_d2 <= tan_g_d1;
		  end if;
		end if;
	end process tg_delay;
  


  
  -- Adder
  DIQ_bal_id2 <= std_logic_vector( resize(signed(Dd), DIQ_bal_i'length) + resize(signed(tan_g_d2), DIQ_bal_i'length) );


  -- *******************
  	comp_delay: process(clk, nrst)
	begin
		if nrst = '0' then
			DIQ_bal_id1 <= (others => '0');
			DIQ_bal_i <= (others => '0');
		elsif clk'event and clk = '1' then
		  if en = '1' then
        DIQ_bal_id1 <= DIQ_bal_id2;
        DIQ_bal_i <= DIQ_bal_id1;
		  end if;
		end if;
	end process comp_delay;
  
  
  
  -- Q sample is calculated first. To output data in the same manner as they are comming in, 
  -- we need to interchange corrected I and Q data samples at the output.
	out_delay: process(clk, nrst)
	begin
		if nrst = '0' then
			iq_out_d0 <= (others => '0');
			iq_out_d1 <= (others => '0');
		elsif clk'event and clk = '1' then
		  if en = '1' then
        iq_out_d1 <= iq_out_d0;
        iq_out_d0 <= DIQ_bal_i;
		  end if;
		end if;
	end process out_delay;
  


  -- Output
	--DIQ_bal <= DIQ_bal_i;
	--DIQ_bal <= iq_out_d1 when iq_sel_D = fsinc_polarity else DIQ_bal_i;
	DIQ_bal_o <= DIQ_bal_i when iq_sel_D = fsinc_polarity else iq_out_d1;
	DIQ_bal <= DIQ_bal_o when bypass = '0' else "00" & diq_in;
  iq_sel_bal <= iq_sel_D;

end iqbal_arch;
