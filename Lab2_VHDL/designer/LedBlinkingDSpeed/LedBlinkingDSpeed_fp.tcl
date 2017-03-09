new_project \
         -name {LedBlinkingDSpeed} \
         -location {C:\Future\FPGA\Microsemi\CreativeBoard\IGLOO2\Lab2_VHDL\designer\LedBlinkingDSpeed\LedBlinkingDSpeed_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2GL025} \
         -name {M2GL025}
enable_device \
         -name {M2GL025} \
         -enable {TRUE}
save_project
close_project
