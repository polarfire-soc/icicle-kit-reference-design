# Exporting Component Description of PF_XCVR_REF_CLK_C0 to TCL
# Family: PolarFireSoC
# Part Number: MPFS250T_ES-FCVG484E
# Create and Configure the core component PF_XCVR_REF_CLK_C0
create_and_configure_core -core_vlnv {Actel:SgCore:PF_XCVR_REF_CLK:1.0.103} -component_name {PF_XCVR_REF_CLK_C0} -params {\
"ENABLE_FAB_CLK_0:false"  \
"ENABLE_FAB_CLK_1:false"  \
"ENABLE_REF_CLK_0:true"  \
"ENABLE_REF_CLK_1:false"  \
"REF_CLK_MODE_0:DIFFERENTIAL"  \
"REF_CLK_MODE_1:LVCMOS"   }
# Exporting Component Description of PF_XCVR_REF_CLK_C0 to TCL done
