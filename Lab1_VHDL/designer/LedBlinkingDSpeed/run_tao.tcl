set_family {IGLOO2}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\hdl\ClkGen.vhd}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\hdl\ClkGenNoSwitch.vhd}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\hdl\Display.vhd}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\hdl\LedBlinkingDSpeed.vhd}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\hdl\Reset_out.vhd}
set_top_level {LedBlinkingDSpeed}
map_netlist
read_sdc {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\constraint\LedBlinkingDSpeed_sdc.sdc}
check_constraints {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\designer\LedBlinkingDSpeed\synthesis.fdc}
