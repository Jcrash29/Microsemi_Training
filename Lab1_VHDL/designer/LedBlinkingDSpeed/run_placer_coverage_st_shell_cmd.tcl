read_sdc -scenario "place_and_route" -netlist "user" -pin_separator "/" -ignore_errors {C:/Users/ashj/Documents/LEARNING/Microsemi/Lab1/designer/LedBlinkingDSpeed/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\designer\LedBlinkingDSpeed\LedBlinkingDSpeed_place_and_route_constraint_coverage.xml}]
set reportfile {C:\Users\ashj\Documents\LEARNING\Microsemi\Lab1\designer\LedBlinkingDSpeed\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp
