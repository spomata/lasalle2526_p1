create_clock -name clk -period 1.0 [get_ports clk]
set_input_delay 0.2 -clock clk [get_ports {a[*] b[*] op}]
set_output_delay 0.2 -clock clk [get_ports y[*]]
