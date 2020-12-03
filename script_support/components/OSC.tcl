# Exporting core PF_OSC to TCL
# Create design TCL command for core PF_OSC
create_and_configure_core -core_vlnv {Actel:SgCore:PF_OSC:1.0.102} -component_name {PF_OSC_C0} -params $OSC_param
