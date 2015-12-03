-- ----------------------------------------------------------------------------	
-- FILE: 	pll_ps_cntrl.vhd
-- DESCRIPTION:	describe
-- DATE:	Feb 13, 2014
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity pll_ps_cntrl is
	port (
		--input ports 
		clk             : in std_logic;
		reset_n         : in std_logic;
		phase           : in std_logic_vector(9 downto 0);
		ps_en           : in std_logic; 
		ps_done         : out std_logic;
		ph_done         : in std_logic;
		pll_locked      : in std_logic;
		pll_reconfig		: in std_logic;	

		--output ports 
		ph_countersel   : out std_logic_vector(2 downto 0);
		ph_updn         : out std_logic;
		ph_step         : out std_logic
	);
end pll_ps_cntrl;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of pll_ps_cntrl is
	--declare signals,  components here
	type state_type is (s0, s1, s2, s3, s4, s5);
	signal phase_inc : unsigned (9 downto 0); 
	signal state, next_state : state_type;
	signal ps_en_r    : std_logic;
	signal begin_ps   : std_logic;

begin

	process(reset_n, clk)
	begin
		if reset_n='0' then
			state<=s1;
			ph_step<='0';
			phase_inc<=(others=>'0');
			ps_en_r<='0';
			ps_done <= '0';
		elsif (clk'event and clk = '1') then
			ps_en_r<=ps_en;
			case (state) is 
				when s0 =>
					ph_step<='0';
					phase_inc<=(others=>'0'); 
					if begin_ps='1' then  
						state<=s1;
						ps_done <= '0';
					else
						state<=s0;
						ps_done <= '1';
					end if;
				when s1 =>
					if pll_locked='1' and pll_reconfig='0' then 
						phase_inc<=phase_inc+1;
						ph_step<='1'; 
						state<=s2;
					elsif pll_reconfig='1' then 
						phase_inc<=phase_inc;
						ph_step<='0'; 
						state<=s0;
					else
						phase_inc<=phase_inc;
						ph_step<='0'; 
						state<=s1;
					end if; 
				when s2 =>
					ph_step<='1'; 
					state<=s3;
				when s3 =>
					ph_step<='0';
					if phase_inc=unsigned(phase) then 
						state<=s0;
					else 
						state<=s1;
					end if;    
				when others =>
					ph_step<='0';
					phase_inc<=(others=>'0');
					state<=s0;
			end case;
		end if;
	end process;


	--begin phase shift pulse    
	process(reset_n, clk) 
	begin
		if reset_n='0' then 
			begin_ps<='0';
		elsif (clk'event and clk = '1') then
			if ps_en_r='0' and ps_en='1' then 
				begin_ps<='1';
			else 
				begin_ps<='0';
			end if;
		end if;
	end process;


	ph_countersel<="100"; --C2 
	ph_updn<='0';

end arch; 