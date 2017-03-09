open_project -project {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab3_part2\designer\eSRAM_eNVM_access_top\eSRAM_eNVM_access_top_fp\eSRAM_eNVM_access_top.pro}
set_programming_file -name {M2GL025} -file {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab3_part2\designer\eSRAM_eNVM_access_top\eSRAM_eNVM_access_top.ipd}
enable_device -name {M2GL025} -enable 1
set_programming_action -action {PROGRAM} -name {M2GL025} 
run_selected_actions
set_programming_file -name {M2GL025} -no_file
save_project
close_project
