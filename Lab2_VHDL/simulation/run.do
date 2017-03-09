quietly set ACTELLIBNAME IGLOO2
quietly set PROJECT_DIR "C:/Future/FPGA/Microsemi/CreativeBoard/IGLOO2/Lab2_VHDL"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap IGLOO2 "C:/tools/Microsemi/Libero_SoC_v11.7///Designer//lib//modelsim//precompiled/vhdl/smartfusion2"

vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/synthesis/LedBlinkingDSpeed.vhd"
vcom -2008 -explicit  -work postsynth "${PROJECT_DIR}/stimulus/LedBlinkingDSpeed_tb.vhd"

vsim -L IGLOO2 -L postsynth  -t 1fs postsynth.LedBlinkingDSpeed_tb
add wave /LedBlinkingDSpeed_tb/*
add log -r /*
run 650us
