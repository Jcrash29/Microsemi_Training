set_family {IGLOO2}
read_adl {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\designer\LedBlinkingDSpeed\LedBlinkingDSpeed.adl}
map_netlist
read_sdc {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\constraint\LedBlinkingDSpeed_sdc.sdc}
check_constraints {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\designer\LedBlinkingDSpeed\placer_coverage.log}
write_sdc -strict {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\designer\LedBlinkingDSpeed\place_route.sdc}
