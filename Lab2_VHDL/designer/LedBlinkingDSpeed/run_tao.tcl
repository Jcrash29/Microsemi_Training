set_family {IGLOO2}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\hdl\ClkGen.vhd}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\hdl\ClkGenNoSwitch.vhd}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\hdl\Display.vhd}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\hdl\LedBlinkingDSpeed.vhd}
read_vhdl -mode vhdl_2008 {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\hdl\Reset_out.vhd}
set_top_level {LedBlinkingDSpeed}
map_netlist
read_sdc {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\constraint\LedBlinkingDSpeed_sdc.sdc}
check_constraints {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\designer\LedBlinkingDSpeed\synthesis.fdc}
