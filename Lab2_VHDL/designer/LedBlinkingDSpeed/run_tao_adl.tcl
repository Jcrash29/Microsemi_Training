set_family {IGLOO2}
read_adl {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab2_VHDL\designer\LedBlinkingDSpeed\LedBlinkingDSpeed.adl}
map_netlist
read_sdc {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab2_VHDL\constraint\LedBlinkingDSpeed_sdc.sdc}
check_constraints {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab2_VHDL\constraint\placer_sdc_errors.log}
write_sdc -strict {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab2_VHDL\designer\LedBlinkingDSpeed\place_route.sdc}
