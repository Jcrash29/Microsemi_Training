onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/start_esram
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/start_envm
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HCLK
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HRESETn
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HSIZE_IN
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HADDR
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HTRANS
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HWRITE
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HSIZE
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HWDATA
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HREADY
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HRDATA
add wave -noupdate /eSRAM_eNVM_access_top_testbench/eSRAM_eNVM_access_top_0/AHB_IF_0/HRESP
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5847926267 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 249
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 fs} {31500 ns}
