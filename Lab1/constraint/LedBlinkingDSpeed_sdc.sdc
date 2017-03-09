
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {LedBlinkingDSpeed|clk} [get_ports {clk}] 

