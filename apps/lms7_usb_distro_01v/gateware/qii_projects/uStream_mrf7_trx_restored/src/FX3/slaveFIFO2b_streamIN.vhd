-- ----------------------------------------------------------------------------	
-- FILE: 	slaveFIFO2b_streamIN.vhd
-- DESCRIPTION:  streams out data to FX3
-- DATE:	Nov 16, 2014
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity slaveFIFO2b_streamIN is
	port(
		reset_n 			: in std_logic;                                ---input reset active low
		clk_100			: in std_logic;
		slcs 	   		: out std_logic;                               ---output chip select
		fdata      		: out std_logic_vector(15 downto 0);         
		faddr      		: out std_logic_vector(1 downto 0);            ---output fifo address
		slrd	   		: out std_logic;                               ---output read select
		sloe	   		: out std_logic;                               ---output output enable select
		slwr	   		: out std_logic;                               ---output write select

		flaga	   		: in std_logic;                                
		flagb	   		: in std_logic;
		flagc	   		: in std_logic;
		flagd	   		: in std_logic;
		
		rxd				: in std_logic_vector(11 downto 0);
		rxiqsel			: in std_logic;

		pktend	   	: out std_logic;                               ---output pkt end 
		PMODE	   		: out std_logic_vector(1 downto 0);
		RESET	   		: out std_logic;
		fifowe		 	: out std_logic;
		fifowrclk		: in std_logic;
		clk_ps			: out std_logic;	-- phase shifted clock
		rxclk				: in std_logic;
		rxpll_locked 	: in std_logic
	);

end entity slaveFIFO2b_streamIN;

architecture slaveFIFO2b_streamIN_arch of slaveFIFO2b_streamIN is
	
	component trxdfifo 
	port
	(
		aclr		: in std_logic  := '0';
		data		: in std_logic_vector (15 downto 0);
		rdclk		: in std_logic ;
		rdreq		: in std_logic ;
		wrclk		: in std_logic ;
		wrreq		: in std_logic ;
		q			: out std_logic_vector (15 downto 0);
		rdempty	: out std_logic ;
		rdusedw	: out std_logic_vector (12 downto 0);
		wrfull	: out std_logic );
	end component;
	
	--stream IN fsm
	type streamIN_states is (stream_in_idle, stream_in_wait_flagb, stream_in_write, stream_in_write_wr_delay, stream_in_write_wr_delay1, 
														stream_in_write_wr_delay2, stream_in_write_wr_delay3, stream_in_write_wr_delay4, stream_in_wait_fifo);
	signal current_stream_in_state, next_stream_in_state : streamIN_states;
	
	signal data_gen_stream_in   	: std_logic_vector(15 downto 0);
	signal slwr_streamIN_n      	: std_logic;
	signal slwr_streamIN_n_d    	: std_logic;
	signal flaga_d             	: std_logic;
	signal flagb_d             	: std_logic;
	signal flagc_d             	: std_logic;
	signal flagd_d             	: std_logic;
	signal reset_p    				: std_logic;
	
	signal fifowrreq, fifowrfull 	: std_logic;
	signal FIFOd, FIFOq 				: std_logic_vector(15 downto 0);
	signal fifordreq, fifordempty : std_logic;
	--signal fifowrclk : std_logic;
	signal fifordusedw 				: std_logic_vector(12 downto 0);

begin --architecture begining


	clk_ps <= fifowrclk;
	
	-- FIFO instantiation
	trxdfifo_inst : trxdfifo port map (
		aclr	 	=> reset_p,
		data	 	=> FIFOd,
		rdclk	 	=> clk_100,
		rdreq	 	=> fifordreq,
		wrclk	 	=> rxclk, --fifowrclk, --clk,
		wrreq	 	=> fifowrreq,
		q	 		=> FIFOq,
		rdempty	=> fifordempty,
		rdusedw	=> fifordusedw,
		wrfull	=> fifowrfull
	);

	
	reset_p <= not reset_n;
	--output signal asignments
	slrd   <= '1';
	slwr   <= slwr_streamIN_n_d;   
	faddr  <= "00";
	sloe   <= '1';
	pktend <= '1';
	PMODE  <= "11";		
	--RESET  <= '1';
	RESET <= fifowrfull;
	slcs   <= '0';

	--process(current_stream_in_state)
	--begin
	--	if((current_stream_in_state = stream_in_write)) then
	--		slwr_streamIN_n <= '0';
	--	else
	--		slwr_streamIN_n <= '1';
	--	end if;
	--end process;

	--slwr_streamIN_n <= '0' when (current_stream_in_state = stream_in_write) else '1';
	--slwr_streamIN_n <= '0' when (current_stream_in_state = stream_in_write) and (fifordempty = '0') else '1';
	--slwr_streamIN_n <= '0' when (current_stream_in_state = stream_in_write) else '1';
	--fifordreq <= (not slwr_streamIN_n) and (not fifordempty);

	process(clk_100, reset_n)
	begin
		if(reset_n = '0') then
			slwr_streamIN_n_d <= '1';
		elsif(clk_100'event and clk_100 = '1') then
			slwr_streamIN_n_d <= slwr_streamIN_n;
		end if;	 
	end process;
	
	--flopping the INPUTs flags
	process(clk_100, reset_n)
	begin
		if(reset_n = '0') then 
			flaga_d <= '0';
			flagb_d <= '0';
			flagc_d <= '0';
			flagd_d <= '0';
		elsif(clk_100'event and clk_100 = '1') then
			flaga_d <= flaga;
			flagb_d <= flagb;
			flagc_d <= flagc;
			flagd_d <= flagd;
		end if;	
	end process;
	
	--streamIN mode state machine
	stream_in_fsm_f : process(clk_100, reset_n)
	begin
		if (reset_n = '0') then 
			current_stream_in_state <= stream_in_idle;
		elsif (clk_100'event and clk_100 = '1') then 
			current_stream_in_state <= next_stream_in_state;
		end if;	
	end process;
	
	--StreamIN mode state machine combo
	stream_in_fsm : process(current_stream_in_state, flaga_d, flagb_d, fifordempty, fifordusedw)
	begin
		
		next_stream_in_state <= current_stream_in_state;
		slwr_streamIN_n <= '1';
		fifordreq <= '0';
		--RESET  <= '0';
		
		case current_stream_in_state is
		
			--
			when stream_in_idle =>
				if (flaga_d = '1') then
					next_stream_in_state <= stream_in_wait_flagb; 
				else 
					next_stream_in_state <= stream_in_idle;
				end if;	
				
			--
			when stream_in_wait_flagb =>
				if (flagb_d = '1') then
					next_stream_in_state <= stream_in_wait_fifo; --stream_in_write; 
				else 
					next_stream_in_state <= stream_in_wait_flagb; 
				end if;
				
			--
			when stream_in_wait_fifo =>
				--RESET  <= '1';
				--if (fifordusedw(14 downto 10) >= "00010") then
				--if (fifordusedw(13 downto 10) >= "0010") then
				if (fifordusedw(12 downto 10) >= "001") then
					next_stream_in_state <= stream_in_write;
				else
					next_stream_in_state <= stream_in_wait_fifo;
				end if;
				
			--
			when stream_in_write =>
				slwr_streamIN_n <= '0';
				fifordreq <= '1';
				if(flagb_d = '0')then
					next_stream_in_state <= stream_in_write_wr_delay;
				else
					next_stream_in_state <= stream_in_write;
				end if;
			
			--
--			when stream_in_write =>
--				--next_stream_in_state <= stream_in_write;
--				if (fifordempty = '0') then
--					next_stream_in_state <= stream_in_write;
--					fifordreq <= '1';
--					slwr_streamIN_n <= '0';
--					if(flagb_d = '0') then
--						next_stream_in_state <= stream_in_write_wr_delay;
--					else
--						next_stream_in_state <= stream_in_write;
--					end if;
--				else
--					--slwr_streamIN_n <= '0';
--					next_stream_in_state <= stream_in_write_wr_delay1;
--				end if;
			
			
				
--				if(flagb_d = '0')then
--					next_stream_in_state <= stream_in_write_wr_delay;
--					slwr_streamIN_n <= '0';
--				else
--					next_stream_in_state <= stream_in_write;
--					if (fifordempty = '0') then
--						fifordreq <= '1';
--						slwr_streamIN_n <= '0';
--					end if;
--				end if;
				
				
				
				
--				if (flagb_d = '0') then
--					if (fifordempty = '1') then
--						slwr_streamIN_n <= '1';
--						next_stream_in_state <= stream_in_write;
--					else
--						slwr_streamIN_n <= '0';
--						fifordreq <= '1';
--						next_stream_in_state <= stream_in_write_wr_delay;
--					end if;
--				else
--					next_stream_in_state <= stream_in_write;
--					if (fifordempty = '0') then
--						fifordreq <= '1';
--						slwr_streamIN_n <= '0';
--					end if;
--				end if;

			--
			when stream_in_write_wr_delay =>
				next_stream_in_state <= stream_in_idle;

			--
			when stream_in_write_wr_delay1 =>
				next_stream_in_state <= stream_in_write_wr_delay2;
	
			--
			when stream_in_write_wr_delay2 =>
				next_stream_in_state <= stream_in_write_wr_delay3;

			--
			when stream_in_write_wr_delay3 =>
				next_stream_in_state <= stream_in_write_wr_delay4;
	
			--
			when stream_in_write_wr_delay4 =>
				next_stream_in_state <= stream_in_write;
	
			--
			when others =>
				next_stream_in_state <= stream_in_idle;
			
		end case;
	end process;
	
	--data generator counter for Partial mode
	process(clk_100, reset_n)
	begin
		if (reset_n = '0') then
			data_gen_stream_in <= (others => '0');
		elsif(clk_100'event and clk_100 = '1') then
			if (slwr_streamIN_n_d = '0') then
				data_gen_stream_in <= data_gen_stream_in + '1';
			end if;	
		end if;	
	end process;
	
	
	
	
	--data generator counter for data FIFO
	fifowrreq <= not fifowrfull and rxpll_locked;
	fifowe <= fifowrreq;
--	process(clk, reset_n)
--	begin
--		if (reset_n = '0') then
--			FIFOd <= (others => '0');
--		elsif(clk'event and clk = '1') then
--			if (fifowrreq = '1') then
--				FIFOd <= FIFOd + '1';
--			end if;	
--		end if;	
--	end process;
	
	FIFOd <= "000" & rxiqsel & rxd;
	--FIFOd <= rxd(7 downto 0) & "000" & rxiqsel & rxd(11 downto 8);
	
	
	--process(slwr_streamIN_n_d, data_gen_stream_in)
	--begin
	--	if(slwr_streamIN_n_d = '0') then
	--		fdata <= data_gen_stream_in;
	--	else
	--		fdata <= (others => 'Z');	
	--	end if;
	--end process;

	--fdata <= data_gen_stream_in when slwr_streamIN_n_d = '0' else (others => 'Z');
	fdata <= FIFOq;-- when slwr_streamIN_n_d = '0' else (others => 'Z');
	

end architecture;

