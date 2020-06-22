#This Tcl file sources other Tcl files to build the design(on which recursive export is run) in a bottom-up fashion

#Sourcing the Tcl file in which all the HDL source files used in the design are imported or linked

build_design_hierarchy

#Sourcing the Tcl files for creating individual components under the top level
source script_support/components/CORERESET_PF_C0.tcl 
source script_support/components/PFSOC_INIT_MONITOR_C0.tcl 
source script_support/components/ICICLE_MSS.tcl 
source script_support/components/PF_CCC_C0.tcl 
source script_support/components/PF_OSC_C0.tcl 
source script_support/components/MPFS_ICICLE_eMMC.tcl 
build_design_hierarchy
