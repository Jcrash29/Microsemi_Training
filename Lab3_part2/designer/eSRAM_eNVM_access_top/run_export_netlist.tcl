set_device -fam IGLOO2
read_edif  \
    -file {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab3_part2\synthesis\eSRAM_eNVM_access_top.edn}
write_verilog -file {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab3_part2\synthesis\eSRAM_eNVM_access_top.v}
