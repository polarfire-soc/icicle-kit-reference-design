# Creating SmartDesign MPFS_ICICLE_eMMC
set sd_name {MPFS_ICICLE_KIT_BASE_DESIGN}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

source script_support/components/MPFS_ICICLE_BASE_DESIGN.tcl

# Create top level Ports

sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_CMD} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA0} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA1} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA2} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA3} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA4} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA5} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA6} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA7} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_STRB} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_RSTN} -port_direction {OUT}

sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_CLK" "MSS:EMMC_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_CMD" "MSS:EMMC_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA0" "MSS:EMMC_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA1" "MSS:EMMC_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA2" "MSS:EMMC_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA3" "MSS:EMMC_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA4" "MSS:EMMC_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA5" "MSS:EMMC_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA6" "MSS:EMMC_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA7" "MSS:EMMC_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_RSTN" "MSS:EMMC_RSTN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_STRB" "MSS:EMMC_STRB" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign MPFS_ICICLE_eMMC
generate_component -component_name ${sd_name}
