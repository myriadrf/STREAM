-- ----------------------------------------------------------------------------	
-- FILE: 	slaveFIFO2b_streamOUT.vhd
-- DESCRIPTION:  streams out data from FX3
-- DATE:	Nov 16, 2014
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity slaveFIFO2b_streamOUT is
	port(
		reset_n 		: in std_logic;                                ---input reset active low
		clk_100		: in std_logic;
		
		slcs 	   	: out std_logic;                               ---output chip select
		fdata      	: in std_logic_vector(15 downto 0);         
		faddr      	: out std_logic_vector(1 downto 0);            ---output fifo address
		slrd	   	: out std_logic;                               ---output read select
		sloe	   	: out std_logic;                               ---output output enable select
		slwr	   	: out std_logic;                               ---output write select
		fifo_write 	: out std_logic;										  --delayed  slwr (2 cyclces)
                    
      flaga	   	: in std_logic;                                
      flagb	   	: in std_logic;
      flagc	   	: in std_logic;
      flagd	   	: in std_logic;

		pktend	   : out std_logic;                               ---output pkt end 
		PMODE	   	: out std_logic_vector(1 downto 0);
		data_stream	: out std_logic_vector(15 downto 0);
		RESET	   	: out std_logic;
		fifo_full	: in std_logic;
		clk_outfifo : out std_logic;
		state_ind	: out std_logic_vector(3 downto 0)

	    );

end entity slaveFIFO2b_streamOUT;

architecture slaveFIFO2b_streamOUT_arch of slaveFIFO2b_streamOUT is
 

--stream OUT fsm
type streamOUT_states is (stream_out_idle, stream_out_flagc_rcvd, stream_out_wait_flagd, stream_out_read, stream_out_read_rd_and_oe_delay, stream_out_read_oe_delay, fifofull_wait0, fifofull_wait1);
signal current_stream_out_state, next_stream_out_state : streamOUT_states;

signal rd_oe_delay_cnt     : std_logic_vector(1 downto 0);
signal oe_delay_cnt        : std_logic_vector(1 downto 0);
signal data_in_stream_out  : std_logic_vector(15 downto 0);
signal slrd_streamOUT_n    : std_logic;
signal sloe_streamOUT_n    : std_logic;
signal flaga_d             : std_logic;
signal flagb_d             : std_logic;
signal flagc_d             : std_logic;
signal flagd_d             : std_logic;
signal lock                : std_logic;
signal delay1_slrd			: std_logic;
signal delay2_slrd			: std_logic;

begin  -- architecture begin
fifo_write<=not slrd_streamOUT_n when slrd_streamOUT_n='1' else 
				not delay2_slrd;


state_ind<=x"0" when current_stream_out_state=stream_out_idle else 
			x"1"			when current_stream_out_state=stream_out_flagc_rcvd else 
			x"2"			when current_stream_out_state=stream_out_wait_flagd else 
			x"3"			when current_stream_out_state=stream_out_read else 
			x"4"			when current_stream_out_state=stream_out_read_rd_and_oe_delay else 
			x"5"			when current_stream_out_state=stream_out_read_oe_delay else
			x"6"			when current_stream_out_state=fifofull_wait0 else
			x"7"			when current_stream_out_state=fifofull_wait1 else
			x"F"; 

--output signal asignments
slrd   <= slrd_streamOUT_n;
slwr   <= '1';   
faddr  <= "11";
sloe   <= sloe_streamOUT_n;
pktend <= '1';
PMODE  <= "11";		
RESET  <= '1';	
slcs   <= '0';

data_in_stream_out <= fdata;
data_stream<=data_in_stream_out;

clk_outfifo<=clk_100;

     
--OUTPUT read control signals generation
process(current_stream_out_state)begin
	if((current_stream_out_state = stream_out_read) or (current_stream_out_state = stream_out_read_rd_and_oe_delay))then

			slrd_streamOUT_n <= '0'; 
	else
		slrd_streamOUT_n <= '1';
	end if;	
end process;	



--OUTPUT read oe control signals generation
process(current_stream_out_state)begin
	if((current_stream_out_state = stream_out_read) or (current_stream_out_state = stream_out_read_rd_and_oe_delay) or (current_stream_out_state = stream_out_read_oe_delay)) then
		sloe_streamOUT_n <= '0';
	else
	 	sloe_streamOUT_n <= '1';
	end if;
end process;

--flopping the INPUTs flags
process(clk_100, reset_n)begin
	if(reset_n = '0')then 
		flaga_d <= '0';
		flagb_d <= '0';
		flagc_d <= '0';
		flagd_d <= '0';
	elsif(clk_100'event and clk_100 = '1')then
		flaga_d <= flaga;
		flagb_d <= flagb;
		flagc_d <= flagc;
		flagd_d <= flagd;
	end if;	
end process;


--counter to delay the read and output enable signal
process(clk_100, reset_n)begin
	if(reset_n = '0')then 
		rd_oe_delay_cnt <= "00";
	elsif(clk_100'event and clk_100 = '1')then	
	 	if(current_stream_out_state = stream_out_read) then
			rd_oe_delay_cnt <= "01";
        	elsif((current_stream_out_state = stream_out_read_rd_and_oe_delay) and (rd_oe_delay_cnt > 0))then
			rd_oe_delay_cnt <= rd_oe_delay_cnt - 1;
		else
			rd_oe_delay_cnt <= rd_oe_delay_cnt;
		end if;
	end if;
end process;

--Counter to delay the OUTPUT Enable(oe) signal
process(clk_100, reset_n)begin
	if(reset_n = '0')then 
		oe_delay_cnt <= "00";
	elsif(clk_100'event and clk_100 = '1')then	
	 	if(current_stream_out_state = stream_out_read_rd_and_oe_delay) then
			oe_delay_cnt <= "10";
        	elsif((current_stream_out_state = stream_out_read_oe_delay) and (oe_delay_cnt > 0))then
			oe_delay_cnt <= oe_delay_cnt - 1;
		else
			oe_delay_cnt <= oe_delay_cnt;
		end if;
	end if;
end process;


--streamOUT mode state machine
stream_out_fsm_f : process(clk_100, reset_n)begin
	if(reset_n = '0')then
		current_stream_out_state <= stream_out_idle;
	elsif(clk_100'event and clk_100 = '1')then 
		current_stream_out_state <= next_stream_out_state;
	end if;	
end process;

--steamOUT mode state machine combo
stream_out_fsm : process(current_stream_out_state, flagc_d, flagd_d, rd_oe_delay_cnt, oe_delay_cnt, fifo_full) begin
	next_stream_out_state <= current_stream_out_state;
	case current_stream_out_state is
	when stream_out_idle =>
		if((flagc_d = '1'))then
			next_stream_out_state <= stream_out_flagc_rcvd;
		else 
			next_stream_out_state <= stream_out_idle;
		end if;
		
        when stream_out_flagc_rcvd =>
		next_stream_out_state <= stream_out_wait_flagd;
	
	when stream_out_wait_flagd =>
		if(flagd_d = '1' and fifo_full='0') then
			next_stream_out_state <= stream_out_read;
		else
			next_stream_out_state <= stream_out_wait_flagd;
		end if;
		
   when stream_out_read =>
		if(flagd_d = '0' and fifo_full='0')then
			next_stream_out_state <= stream_out_read_rd_and_oe_delay;
		elsif (flagd_d = '0' and fifo_full='1')then
			next_stream_out_state <= fifofull_wait1;
		else
			if fifo_full='0' then 
				next_stream_out_state <= stream_out_read;
			else 
				next_stream_out_state<=fifofull_wait0;
			end if;
		end if;
		
		when fifofull_wait0 => 
				if fifo_full='0' then 
					next_stream_out_state <= stream_out_read;
				else 
					next_stream_out_state <= fifofull_wait0;
				end if;
				
				
		when fifofull_wait1 => 
				if fifo_full='0' then 
					next_stream_out_state <= stream_out_read_rd_and_oe_delay;
				else 
					next_stream_out_state <= fifofull_wait1;
				end if;
				
				
	when stream_out_read_rd_and_oe_delay =>
	
	if fifo_full='0' then
		if(rd_oe_delay_cnt = "00")then
			next_stream_out_state <= stream_out_read_oe_delay;
		else
			next_stream_out_state <= stream_out_read_rd_and_oe_delay;
		end if;
	else
		next_stream_out_state<= fifofull_wait1;
	end if;
		
		
	
        when stream_out_read_oe_delay =>
		if(oe_delay_cnt = "00")then
			next_stream_out_state <= stream_out_idle;
		else
			next_stream_out_state <= stream_out_read_oe_delay;
		end if;
	when others =>
		next_stream_out_state <= stream_out_idle;
		
	end case;
end process;



--delay slrd signal because we want to meet timing with ram and ram_fifo. 
	process(clk_100, reset_n) begin
	if reset_n='0' then
			
			delay1_slrd<='0';
			delay2_slrd<='0';
	elsif rising_edge(clk_100) then 
			delay1_slrd<=slrd_streamOUT_n;
			delay2_slrd<=delay1_slrd;
	end if;
    end process;

end architecture;

