-- ----------------------------------------------------------------------------	
-- FILE: 	ram_control.vhd
-- DESCRIPTION:	control logic for altera DDR2 controler with ALTMEMPHY
-- DATE:	Nov 9, 2014
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity ram_control is
  port ( 
        --general
        clk       : in std_logic;
        phy_clk   : in std_logic;
        reset_n   : in std_logic;
        
        
        --testing and control
        test_IQ           : out std_logic_vector(12 downto 0);
        test_ram          : in std_logic;
		  stream_load		  : in std_logic;
        stream_en         : in std_logic;
        test_infifo_wreq  : out std_logic;
        
        --incoming data fifo signals
        infifo_rusedw   : in std_logic_vector(14 downto 0);
        infifo_rreq     : out std_logic;
        infifo_rempty   : in std_logic;
        infifo_q        : in std_logic_vector(15 downto 0);
        
        --outgoing data fifo signals
        outfifo_wusedw  : in std_logic_vector(9 downto 0);
        outfifo_wreq    : out std_logic;
        outfifo_data    : out std_logic_vector(15 downto 0);
        
        --ram signals
        local_ready   : in std_logic;
        local_addr    : out std_logic_vector(23 downto 0);
        local_write   : out std_logic;
        local_read    : out std_logic;
        local_burst   : out std_logic  
        );
        
end ram_control;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of ram_control is
  
-- ----------------------------------------------------------------------------
-- Test pattern generator
-- ----------------------------------------------------------------------------

type state_type is (s0, s1, s2, s3, s4, s5);
signal fifo_state   : state_type;
signal burst_state  : state_type;
signal addr_state  : state_type;
signal wfifo_state  : state_type;
  
--Test pattern generator signals
signal pause : std_logic;
signal dis_test_cnt : std_logic;
signal test_cnt : unsigned (7 downto 0);
signal test_infifo_wreq_s : std_logic;

--for reading fifo
signal infifo_rreq_sig  : std_logic;
--for writting fifo
signal fifo_en_flg    : std_logic;
signal limit          : unsigned(9 downto 0);   
signal upper_limit    : unsigned(9 downto 0);
signal lower_limit    : unsigned(9 downto 0);
signal used_fifo      : unsigned(9 downto 0);

--local ram signals
signal local_write_sig : std_logic;
signal wrbrst_begin    : std_logic;
signal local_read_sig  : std_logic;
signal ram_readsig2    : std_logic;

--address signals
signal adress_cnt 	: unsigned(23 downto 0);
signal rst_addr   	: std_logic;
signal addr_enable 	: std_logic;
signal maxadress_cnt : unsigned(23 downto 0);

--stream_en register
signal stream_en_reg 		: std_logic;
signal stream_load_reg		: std_logic;
signal stream_start   		: std_logic;
signal wait_data_start		: std_logic;
signal stream_en_sinch		: std_logic;
signal stream_load_sinch 	: std_logic;
   



	component data_gen is
		port (
        --input ports 
        clk       : in std_logic;
        reset_n   : in std_logic;
        pause     : in std_logic;

        --output ports
        IQ_data   : out std_logic_vector(12 downto 0) 
        
        );
	end component;
 
begin
    
	outfifo_wreq <= '0';
	outfifo_data <= (others=>'0');
    
	used_fifo   <= unsigned(outfifo_wusedw);  
  
	upper_limit <= "1000000000";    --limit ranges for fifo 
	lower_limit <= "0111000000";
	
	
-- ----------------------------------------------------------------------------
-- Testing part
-- ----------------------------------------------------------------------------

 dis_test_cnt<='1' when test_cnt=x"FF" else '0';
  
	process (clk, reset_n)
	begin
	  if reset_n='0' then
	     test_cnt<=(others=>'0');
	  elsif (clk'event and clk = '1') then
	     if dis_test_cnt='0' then 
	       test_cnt<=test_cnt+1;
	     end if;
       
	  end if;
	end process; 
	
	process (clk, reset_n)
	begin
	  if reset_n='0' then
        test_infifo_wreq_s<='0';
	  elsif (clk'event and clk = '1') then
        if test_cnt<"00010000" then 
           test_infifo_wreq_s<='1';
        else 
          test_infifo_wreq_s<='0';
        end if;
	  end if;
	end process;
	
-- ----------------------------------------------------------------------------
-- Reading from incoming data fifo (phy_clk domain)
-- ----------------------------------------------------------------------------

      process(reset_n, phy_clk)
    begin
      if reset_n='0' then
        fifo_state<=s0;
        infifo_rreq_sig<='0';
 	    elsif (phy_clk'event and phy_clk = '1') then	
 	     	if stream_load_sinch='0' then       
 	        case fifo_state is	          
 	          when s0=> --idling and waiting for incoming data fifo to be not empty
 	            if local_ready='1' and (unsigned(infifo_rusedw))>="0000000000000010" then
 	                  infifo_rreq_sig<='1';
 	                  fifo_state<=s1;
 	            else 
 	                 	infifo_rreq_sig<='0';
 	                  fifo_state<=s0;
 	            end if;
 	          when s1=>
 	            if local_ready='1' then
 	                 infifo_rreq_sig<='1';
 	                 fifo_state<=s2;
 	            else 
 	               	 infifo_rreq_sig<='0';
 	                 fifo_state<=s0;--s1
 	            end if; 
 	          when s2=>
 	                	infifo_rreq_sig<='0';
 	                 fifo_state<=s3;   
 	                                 
				 when s3 =>
							infifo_rreq_sig<='0';
							fifo_state<=s0;
 	          when others=>
 	               	 infifo_rreq_sig<='0';
							     fifo_state<=s0;  
 	        end case;
 	       else 
 	          fifo_state<=s0;
 	          infifo_rreq_sig<='0';
 	       end if;
 	    end if;
    end process;
    
-- ----------------------------------------------------------------------------
-- Writting to ram (phy_clk domain)
-- ----------------------------------------------------------------------------
      process(reset_n, phy_clk)
    begin
      if reset_n='0' then
        local_write_sig<='0';
 	    elsif (phy_clk'event and phy_clk = '1') then
 	      if stream_load_sinch='0' then
 	          if (infifo_rreq_sig and local_ready)='1' and infifo_rempty='0' then 
 	            local_write_sig<='1';
 	          else
 	             local_write_sig<='0';
 	          end if;
 	      else 
 	        local_write_sig<='0';
 	      end if;
 	    end if;
 	    end process;
 	    
-- ----------------------------------------------------------------------------
-- Reading from ram (phy_clk domain)
-- ----------------------------------------------------------------------------
       process(reset_n, phy_clk)
    begin      
     if reset_n='0' then
        local_read_sig<='0';
      elsif (phy_clk'event and phy_clk = '1') then
        if stream_load_sinch='1' and stream_en_sinch='1' then 
          if (fifo_en_flg and local_ready)='1' then
              local_read_sig<='1';
          else
              local_read_sig<='0';
          end if;
        else 
          local_read_sig<='0';
      end if;   
    end if;
  end process; 
 	    
-- ----------------------------------------------------------------------------
-- Generate ram burst begin signal (writting) (phy_clk domain)
-- ----------------------------------------------------------------------------
       process(reset_n, phy_clk)
    begin      
     if reset_n='0' then
       burst_state<=s0;
       wrbrst_begin<='0';

     elsif (phy_clk'event and phy_clk = '1') then
       case burst_state is 
        when s0=>
            if (infifo_rreq_sig and local_ready)='1' then
              wrbrst_begin<='1';
              burst_state<=s1;
            else
              wrbrst_begin<='0';
              burst_state<=s0;
            end if;
        when s1=>
              wrbrst_begin<='0';
              if (infifo_rreq_sig and local_ready)='1' then 
                burst_state<=s0;
              else   
              burst_state<=s1;
          end if;
      when others=>
              burst_state<=s0;
              wrbrst_begin<='0';
     end case;       
     end if;
    end process;
    
-------------------------------------------------------------------------------
-- state machine for controling used fifo space
-------------------------------------------------------------------------------
process (phy_clk, reset_n, upper_limit)
	begin
	  if reset_n='0' then
	     wfifo_state<=s0;
	     limit<=upper_limit;
	     fifo_en_flg<='0';
	  elsif (phy_clk'event and phy_clk = '1') then
	     case (wfifo_state) is 
	       when s0 =>
	         if used_fifo>limit then 
	           fifo_en_flg<='0';
	           limit<=lower_limit;
	           wfifo_state<=s1;
	         else 
	           fifo_en_flg<='1';
	           limit<=upper_limit;
	           wfifo_state<=s0;
	         end if;
	       when s1 =>
	            if used_fifo>limit then
	              fifo_en_flg<='0';
	              limit<=lower_limit;
	              wfifo_state<=s1;
	            else 
	              fifo_en_flg<='1';
	              limit<=upper_limit;
	              wfifo_state<=s0;
	            end if; 
	       when others =>
	      end case;
	  end if;
	  end process;
    
-- ----------------------------------------------------------------------------
--Address generator state machine (phy_clk domain)
-- ----------------------------------------------------------------------------    
    
  process(reset_n, phy_clk)
    begin      
     if reset_n='0' then
        adress_cnt<=x"FFFFFE";
        addr_state<=s0;
     elsif (phy_clk'event and phy_clk = '1') then
        if rst_addr='1' then 
          adress_cnt<=(others=>'0');
          addr_state<=s0;
		  
		  elsif wait_data_start='1' then
			 adress_cnt<=x"FFFFFE";
          addr_state<=s0;
        else
          case addr_state is 
            when s0=> --increment address
              if addr_enable='1' then
                if stream_load_sinch='0' then 
                    addr_state<=s1;
                else 
                    addr_state<=s0;
                end if;
                 
                if adress_cnt<maxadress_cnt then 
                	 adress_cnt<=adress_cnt+2; --by 2 because we use burst mode (lenght=2)
                else
                  adress_cnt<=(others=>'0');
                end if;
              else 
                  adress_cnt<=adress_cnt;
                  addr_state<=s0; 
              end if;
            when s1=> -- wait one write cycle because we want one address for two write cycles
              if addr_enable='1' or stream_load_sinch='1' then
                addr_state<=s0;
              else 
                addr_state<=s1;  
              end if; 
            when others=> 
          end case;
        end if;
    end if; 
    end process; 
    
    
    
-------------------------------------------------------------------------------
-- Capture rising edge of stream_en signal,(phy_clk domain)
-------------------------------------------------------------------------------	  
	process (phy_clk, reset_n)
	begin
	  if reset_n='0' then
	     stream_load_reg<='0'; 
		  stream_load_sinch<='0';
		  stream_en_sinch<='0';
	  elsif (phy_clk'event and phy_clk = '1') then
		  stream_en_sinch<=stream_en;
		  stream_load_sinch<=stream_load;
	     stream_load_reg<=stream_load_sinch;
	  end if;
	  end process;
-------------------------------------------------------------------------------
-- Store max addr when done writting to ram (phy_clk domain)
-------------------------------------------------------------------------------	  
	process (phy_clk, reset_n)
	begin
	  if reset_n='0' then
	     maxadress_cnt<=(others=>'1');
	  elsif (phy_clk'event and phy_clk = '1') then
	     if stream_start='1' then 
	         maxadress_cnt<=adress_cnt;
			elsif wait_data_start='1' then 
				maxadress_cnt<=(others=>'1');
	     end if;
	  end if;
	  end process;  
	  
	  
stream_start	<='1' when (stream_load_reg='0' and stream_load_sinch='1') else '0';	--stream start pulse
wait_data_start<='1' when (stream_load_reg='1' and stream_load_sinch='0') else '0';	--stream start pulse (added 11 24)

addr_enable<= (infifo_rreq_sig and local_ready) when stream_load_sinch='0' else
                  ram_readsig2 when (stream_load_sinch='1' and stream_en_sinch='1') else '0';  --to be done (when reading)  	          
rst_addr<=stream_start;


	 	  
-- ----------------------------------------------------------------------------
-- Component mapping
-- ----------------------------------------------------------------------------

test_data : data_gen
port map(
  clk     => clk,
  reset_n => reset_n,
  pause   => pause,   -- CONNECT
  IQ_data => test_IQ
  );
  
ram_readsig2		<= local_read_sig and local_ready;
test_infifo_wreq	<= test_infifo_wreq_s; 
pause					<= not test_infifo_wreq_s;
infifo_rreq			<= infifo_rreq_sig and local_ready;--and local_ready;
local_write			<= local_write_sig;
local_burst			<= wrbrst_begin when stream_load_sinch='0' else 
							ram_readsig2 when (stream_load_sinch='1' and stream_en_sinch='1') else '0';
local_addr			<= std_logic_vector(adress_cnt);
local_read			<= ram_readsig2;

  
end arch;
        
        