set_device \
    -fam IGLOO2 \
    -die PA4MGL2500_N \
    -pkg vf256
set_input_cfg \
	-path {C:/Future/FPGA/Microsemi/CreativeBoard/IGLOO2/Lab3_part2/component/work/eSRAM_eNVM_access_HPMS/ENVM.cfg}
set_output_efc \
    -path {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab3_part2\designer\eSRAM_eNVM_access_top\eSRAM_eNVM_access_top.efc}
set_proj_dir \
    -path {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab3_part2}
gen_prg -use_init true
