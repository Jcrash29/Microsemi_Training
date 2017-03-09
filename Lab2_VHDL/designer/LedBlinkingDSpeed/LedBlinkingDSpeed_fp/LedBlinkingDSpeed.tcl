open_project -project {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\designer\LedBlinkingDSpeed\LedBlinkingDSpeed_fp\LedBlinkingDSpeed.pro}
set_programming_file -name {M2GL025} -file {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab2_VHDL\designer\LedBlinkingDSpeed\LedBlinkingDSpeed.ipd}
enable_device -name {M2GL025} -enable 1
set_programming_action -action {PROGRAM} -name {M2GL025} 
run_selected_actions
set_programming_file -name {M2GL025} -no_file
save_project
close_project
