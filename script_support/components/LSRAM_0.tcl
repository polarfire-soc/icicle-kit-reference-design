# Exporting core PF_SRAM_AHBL_AXI_C0 to TCL
# Create design TCL command for core PF_SRAM_AHBL_AXI_C0
create_and_configure_core -core_vlnv {Actel:SystemBuilder:PF_SRAM_AHBL_AXI:1.2.108} -component_name {LSRAM} -params $LSRAM_param