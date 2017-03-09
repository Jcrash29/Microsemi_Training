set_device \
    -family  IGLOO2 \
    -die     PA4MGL1000 \
    -package fg484 \
    -speed   -1 \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def USE_CONSTRAINTS_FLOW 0
set_def USE_TCGEN 1
set_name eSRAM_eNVM_access_top
set_workdir {E:\Libero_11p7_updates\downloaded\eSRAM_eNVM_RW_Fabric\Libero_project\IGL2\designer\eSRAM_eNVM_access_top}
set_design_state post_layout
