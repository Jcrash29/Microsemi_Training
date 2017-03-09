quietly set ACTELLIBNAME IGLOO2
quietly set PROJECT_DIR "C:/Users/Giovanna.Franco/Documents/9Oct2016/Lab3/IGL2"
source "${PROJECT_DIR}/simulation/bfmtovec_compile.tcl";

if {[file exists ../designer/eSRAM_eNVM_access_top/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/eSRAM_eNVM_access_top/simulation/postlayout already exists"
} else {
   file delete -force ../designer/eSRAM_eNVM_access_top/simulation/postlayout 
   vlib ../designer/eSRAM_eNVM_access_top/simulation/postlayout
}
vmap postlayout ../designer/eSRAM_eNVM_access_top/simulation/postlayout
vmap IGLOO2 "C:/Microsemi/Libero_SoC_v11.7///Designer//lib//modelsim//precompiled/vlog/smartfusion2"
vmap SmartFusion2 "C:/Microsemi/Libero_SoC_v11.7///Designer//lib//modelsim//precompiled/vlog/smartfusion2"
vmap COREAHBLITE_LIB "../component/Actel/DirectCore/CoreAHBLite/5.2.100/mti/user_vlog/COREAHBLITE_LIB"
vcom -work COREAHBLITE_LIB -force_refresh
vlog -work COREAHBLITE_LIB -force_refresh

vlog -vlog01compat -work postlayout "${PROJECT_DIR}/designer/eSRAM_eNVM_access_top/eSRAM_eNVM_access_top_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postlayout "${PROJECT_DIR}/stimulus/eSRAM_eNVM_access_top_tb.v"

vsim -L IGLOO2 -L postlayout -L COREAHBLITE_LIB  -t 1fs -sdfmax /eSRAM_eNVM_access_top_0=${PROJECT_DIR}/designer/eSRAM_eNVM_access_top/eSRAM_eNVM_access_top_ba.sdf postlayout.eSRAM_eNVM_access_top_tb
add wave /eSRAM_eNVM_access_top_tb/*
add log -r /*
run 100 ms
