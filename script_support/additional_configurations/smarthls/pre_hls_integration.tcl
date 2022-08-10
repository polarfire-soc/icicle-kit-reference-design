puts "TCL_BEGIN: [info script]"

set hlsScriptDir [file normalize [file dirname [info script]]]

source $hlsScriptDir/FIC0_INITIATOR.mod.tcl
sd_update_instance -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_name {FIC0_INITIATOR} 

source $hlsScriptDir/PCIE_INITIATOR.mod.tcl
sd_update_instance -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_name {PCIE_INITIATOR} 

# AXI2AXI Slave ID Width = log 2 [UPSTREAM_AXIXBAR_NUM_MASTERS]+ID_WIDTH
download_core -vlnv {Actel:DirectCore:COREAXITOAXICONNECT:2.0.101} -location {www.microchip-ip.com/repositories/DirectCore}
create_and_configure_core -core_vlnv {Actel:DirectCore:COREAXITOAXICONNECT:2.0.101} -component_name {AXI2AXI} -params {\
    SLAVE_ADDR_WIDTH:32 SLAVE_DATA_WIDTH:64 SLAVE_ID_WIDTH:1 SLAVE_TYPE:0 SLAVE_USER_WIDTH:1}
sd_instantiate_component -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -component_name {AXI2AXI} -instance_name {AXI2AXI_TO_HLS}
sd_instantiate_component -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -component_name {AXI2AXI} -instance_name {AXI2AXI_FROM_HLS}

# FIC0_INITIATOR --> AXI2AXI_TO_HLS
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {FIC0_INITIATOR:AXI4mslave3 AXI2AXI_TO_HLS:AXI4_SLAVE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {AXI2AXI_TO_HLS:AXI4_MASTER}

# PCIE_INITIATOR <-- AXI2AXI_FROM_HLS
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {AXI2AXI_FROM_HLS:AXI4_MASTER PCIE_INITIATOR:AXI4mmaster1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {AXI2AXI_FROM_HLS:AXI4_SLAVE}

save_smartdesign -sd_name MPFS_ICICLE_KIT_BASE_DESIGN 

#
# Tool settings for SmartHLS 
#

# Synthesis option could be added here. For example:
# configure_tool -name {SYNTHESIZE} \
#   -params {RETIMING:true}

configure_tool -name {PLACEROUTE} \
    -params {MULTI_PASS_CRITERIA:VIOLATIONS} \
    -params {MULTI_PASS_LAYOUT:true} \
    -params "NUM_MULTI_PASSES:25"  \
    -params {STOP_ON_FIRST_PASS:true}
    
# Options to verify timing can be added here:
# configure_tool -name {VERIFYTIMING} \
#     -params {CONSTRAINTS_COVERAGE:1}

puts "TCL_END: [info script]"
