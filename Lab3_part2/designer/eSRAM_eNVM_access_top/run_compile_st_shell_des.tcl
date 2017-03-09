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
set_def USE_TCGEN 1
set_def NETLIST_TYPE EDIF
set_name eSRAM_eNVM_access_top
set_workdir {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab3_part2\designer\eSRAM_eNVM_access_top}
set_log     {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab3_part2\designer\eSRAM_eNVM_access_top\eSRAM_eNVM_access_top_sdc.log}
set_design_state pre_layout
