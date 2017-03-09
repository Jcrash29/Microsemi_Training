# Microsemi Corp.
# Date: 2017-Mar-09 12:56:06
# This file was generated based on the following SDC source files:
#   C:/Users/ashj/Documents/LEARNING/Microsemi/Lab2_VHDL/constraint/LedBlinkingDSpeed_sdc.sdc
#

# Clocks 
create_clock -name {LedBlinkingDSpeed|clk} -period 20 -waveform {0 10 } [ get_ports { clk } ]
