#This Tcl file sources other Tcl files to build the design(on which recursive export is run) in a bottom-up fashion

#Sourcing the Tcl file in which all the HDL source files used in the design are imported or linked
build_design_hierarchy

#Sourcing the Tcl files for creating individual components under the top level
source script_support/components/CORERESET.tcl 
source script_support/components/FAB_CCC.tcl 
source script_support/components/FAB_OSC.tcl 
source script_support/components/ICICLE_MSS.tcl 
source script_support/components/INIT_MONITOR.tcl 
source script_support/components/PCIE_AXI_0.tcl 
source script_support/components/PCIE_AXI_1.tcl 
source script_support/components/PF_CLK_DIV_C0.tcl 
source script_support/components/PF_DRI_C0.tcl 
source script_support/components/PF_NGMUX_C0.tcl 
source script_support/components/PF_PCIE_C0.tcl 
source script_support/components/PF_TX_PLL_C0.tcl 
source script_support/components/PF_XCVR_REF_CLK_C0.tcl 
source script_support/components/PCIE_BASE.tcl 
source script_support/components/MPFS_ICICLE_eMMC.tcl 
build_design_hierarchy
