create_clock -period 20 -name clk
create_clock -period 10 -name clk_100

set_output_delay -add_delay -rise -max -clock [get_clocks {clk_100}]  6.000 [get_ports {fdata*}]
set_output_delay -add_delay -rise -max -clock [get_clocks {clk_100}]  6.000 [get_ports {slwr}]
set_output_delay -add_delay -rise -max -clock [get_clocks {clk_100}]  6.000 [get_ports {pktend}]

