set_component eSRAM_eNVM_access_sb_CCC_0_FCCC
# Microsemi Corp.
# Date: 2017-Mar-09 14:15:10
#

create_clock -period 20 [ get_pins { CCC_INST/RCOSC_25_50MHZ } ]
create_generated_clock -multiply_by 2 -divide_by 2 -source [ get_pins { CCC_INST/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
