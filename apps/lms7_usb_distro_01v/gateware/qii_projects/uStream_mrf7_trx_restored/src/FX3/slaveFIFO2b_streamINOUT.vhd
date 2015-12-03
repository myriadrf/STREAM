-- FILE: 	slaveFIFO2b_streamINOUT.vhd
-- DESCRIPTION:  streams out data to and from FX3
-- DATE:	Nov 28, 2014
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------

entity slaveFIFO2b_streamINOUT is
	port(
		--General fx3 signals
		reset_n 		: in std_logic;                                ---input reset active low
		clk	   	: in std_logic;                                ---input clp 50 Mhz  
		clk_out	   : out std_logic;                               ---output clk 100 Mhz 
		slcs 	   	: out std_logic;                               ---output chip select
		fdata      	: inout std_logic_vector(15 downto 0);         
		faddr      	: out std_logic_vector(1 downto 0);            ---output fifo address
		slrd	   	: out std_logic;                               ---output read select
		sloe	   	: out std_logic;                               ---output output enable select
		slwr	   	: out std_logic;                               ---output write select

		flaga	   	: in std_logic;                                
		flagb	   	: in std_logic;
		flagc	   	: in std_logic;
		flagd	   	: in std_logic;
		
		pktend	   : out std_logic;                               ---output pkt end 
		PMODE	   	: out std_logic_vector(1 downto 0);
		RESET	   	: out std_logic;
		
		--dir select
		dir_sel	: std_logic;										-- fx3 bus direction: 1 - fpga to fx3, 0 - fx3 to fpga;
		
		--stream IN signals
		rxd			: in std_logic_vector(11 downto 0);   	--data to be streamed to fx3
		rxiqsel		: in std_logic;
		fifowe	 	: out std_logic;
		clk_ps		: out std_logic;	-- phase shifted clock
		
		--Stream OUT signals 
		fx3_dataOUT	: out std_logic_vector(15 downto 0);
		fifo_full	: in std_logic;
		clk_outfifo : out std_logic;
		wr_outfifo	: out std_logic;
		rxclk			: in std_logic;
		rxpll_locked: in std_logic
		);
		
end entity slaveFIFO2b_streamINOUT;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------

architecture slaveFIFO2b_streamINOUT_arch of slaveFIFO2b_streamINOUT is


--stream OUT signals 
signal streamOUT_clk_out	: std_logic; 
signal streamOUT_slcs		: std_logic;
signal streamOUT_faddr 		: std_logic_vector(1 downto 0);
signal streamOUT_slrd		: std_logic;
signal streamOUT_sloe		: std_logic;
signal streamOUT_slwr 		: std_logic;
signal streamOUT_pktend 	: std_logic;
signal streamOUT_PMODE 		: std_logic_vector(1 downto 0);
signal streamOUT_RESET 		: std_logic;
signal streamOUT_fdata 		: std_logic_vector(15 downto 0);

--stream IN signals
signal streamIN_clk_out	: std_logic;
signal streamIN_slcs		: std_logic;
signal streamIN_faddr 	: std_logic_vector(1 downto 0);
signal streamIN_slrd		: std_logic;
signal streamIN_sloe		: std_logic;
signal streamIN_slwr 	: std_logic;
signal streamIN_pktend 	: std_logic;
signal streamIN_PMODE 	: std_logic_vector(1 downto 0);
signal streamIN_RESET 	: std_logic;
signal streamIN_fdata 	: std_logic_vector(15 downto 0);
signal streamIN_fdata_reg : std_logic_vector(15 downto 0);

--fx3 pll signals
signal fx3pll_clk100		: std_logic;

signal reg_rst_n			: std_logic;

	
-- ----------------------------------------------------------------------------
-- ddr
-- ----------------------------------------------------------------------------
	
	component ddrox1
		port(
				datain_h    : in std_logic;
				datain_l    : in std_logic;
				outclock    : in std_logic;
				dataout	   : out std_logic);
	end component; 

-- ----------------------------------------------------------------------------
-- fx3 stream in
-- ----------------------------------------------------------------------------
component slaveFIFO2b_streamIN is
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
		fifowe	 		: out std_logic;
		fifowrclk		: in std_logic;
		clk_ps			: out std_logic;	-- phase shifted clock
		rxclk				: in std_logic;
		rxpll_locked 	: in std_logic
	);

end component;

-- ----------------------------------------------------------------------------
-- fx3 stream out
-- ----------------------------------------------------------------------------

component slaveFIFO2b_streamOUT is
	port(
		reset_n 		: in std_logic;                                ---input reset active low
		clk_100		: in std_logic;
		
		slcs 	   	: out std_logic;                               ---output chip select
		fdata      	: in std_logic_vector(15 downto 0);         
		faddr      	: out std_logic_vector(1 downto 0);            ---output fifo address
		slrd	   	: out std_logic;                               ---output read select
		sloe	   	: out std_logic;                               ---output output enable select
		slwr	   	: out std_logic;                               ---output write select
		fifo_write 	: out std_logic;									     ---delayed  slwr (2 cyclces)
                    
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

end component;

begin
	
--ddr instantiation
ddr_inst : ddrox1 
port map(
			datain_h => '0', 
			datain_l => '1', 
			outclock => clk, 
			dataout	=> clk_out
			);

stream_out_inst : slaveFIFO2b_streamOUT 
port map (

		reset_n 		=> reset_n,                   	---input reset active low
		clk_100		=> clk,
		
		slcs 	   	=> streamOUT_slcs,               ---output chip select
		fdata      	=> streamOUT_fdata,       
		faddr      	=> streamOUT_faddr,           	---output fifo address
		slrd	   	=> streamOUT_slrd,               ---output read select
		sloe	   	=> streamOUT_sloe,               ---output output enable select
		slwr	   	=> streamOUT_slwr,               ---output write select
		fifo_write 	=>	wr_outfifo,							---delayed  slwr (2 cyclces)
                    
      flaga	   	=> flaga,                                 
      flagb	   	=> flagb,
      flagc	   	=> flagc,
      flagd	  		=> flagd,

		pktend	   => streamOUT_pktend,             ---output pkt end 
		PMODE	   	=> streamOUT_PMODE,
		data_stream	=> fx3_dataOUT,
		RESET	   	=> streamOUT_RESET,
		fifo_full	=> fifo_full,
		clk_outfifo => clk_outfifo, 
		state_ind	=> open


);

stream_in_inst : slaveFIFO2b_streamIN 
	port map(
		reset_n 		=> reset_n,                                		---input reset active low
		clk_100		=> clk,
		
		slcs 	   	=> streamIN_slcs,                               ---output chip select
		fdata      	=> streamIN_fdata,      
		faddr      	=> streamIN_faddr,            						---output fifo address
		slrd	   	=> streamIN_slrd,                               ---output read select
		sloe	   	=> streamIN_sloe,                               ---output output enable select
		slwr	   	=> streamIN_slwr,                               ---output write select

      flaga	   	=> flaga,                                 
      flagb	   	=> flagb,
      flagc	   	=> flagc,
      flagd	  		=> flagd,
		
		rxd			=> rxd, 
		rxiqsel		=> rxiqsel,

		pktend	   => streamIN_pktend,                               ---output pkt end 
		PMODE	   	=> streamIN_PMODE,
		RESET	   	=> streamIN_RESET,
		fifowe	 	=> fifowe,
		fifowrclk 	=> '1', 
		clk_ps		=> clk_ps,	-- phase shifted clock
		rxclk			=> rxclk,
		rxpll_locked=> rxpll_locked
	);


--muxing fx3 signals 


slcs		<= streamOUT_slcs 	when dir_sel='0' else streamIN_slcs;
fdata		<= (others=>'Z')		when dir_sel='0' else streamIN_fdata;
faddr		<= streamOUT_faddr 	when dir_sel='0' else streamIN_faddr;
slrd 		<= streamOUT_slrd 	when dir_sel='0' else '1';
sloe 		<= streamOUT_sloe 	when dir_sel='0' else streamIN_sloe;
slwr  	<= '1' 					when dir_sel='0' else streamIN_slwr;
pktend 	<= streamOUT_pktend 	when dir_sel='0' else streamIN_pktend;
PMODE 	<= streamOUT_PMODE 	when dir_sel='0' else streamIN_PMODE;
RESET 	<= streamOUT_RESET 	when dir_sel='0' else streamIN_RESET;

streamOUT_fdata<=fdata;



end architecture slaveFIFO2b_streamINOUT_arch;
		