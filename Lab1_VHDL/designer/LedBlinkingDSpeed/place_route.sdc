# Microsemi Corp.
# Date: 2017-Mar-09 11:03:10
# This file was generated based on the following SDC source files:
#   C:/Users/ashj/Documents/LEARNING/Microsemi/Lab1/constraint/LedBlinkingDSpeed_sdc.sdc
#

# Clocks 
create_clock -name {LedBlinkingDSpeed|clk} -period 20 -waveform {0 10 } [ get_ports { clk } ]
