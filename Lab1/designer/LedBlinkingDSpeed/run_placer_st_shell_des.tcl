set_device \
    -family  IGLOO2 \
    -die     PA4MGL2500_N \
    -package vf256 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name LedBlinkingDSpeed
set_workdir {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\designer\LedBlinkingDSpeed}
set_log     {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\designer\LedBlinkingDSpeed\LedBlinkingDSpeed_sdc.log}
set_design_state pre_layout
