new_project \
         -name {eSRAM_eNVM_access_top} \
         -location {C:\Users\Giovanna.Franco\Documents\9Oct2016\m2s_m2gl_ac429_liberov11p7_df\eSRAM_eNVM_RW_Fabric\Libero_project\IGL2\designer\eSRAM_eNVM_access_top\eSRAM_eNVM_access_top_fp} \
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
