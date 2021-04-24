# Creating SmartDesign MPFS_ICICLE_SD_CARD
set sd_name {MPFS_ICICLE_KIT_BASE_DESIGN}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

source script_support/components/MPFS_ICICLE_BASE_DESIGN.tcl

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CMD} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA0} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA1} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA2} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA3} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_POW} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_CMD_DIR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_1_3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_EN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_SEL} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_WP} -port_direction {IN}

# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_CLK" "ICICLE_MSS:SD_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_CMD" "ICICLE_MSS:SD_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_DATA0" "ICICLE_MSS:SD_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_DATA1" "ICICLE_MSS:SD_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_DATA2" "ICICLE_MSS:SD_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_DATA3" "ICICLE_MSS:SD_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_POW" "ICICLE_MSS:SD_POW" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_CMD_DIR" "ICICLE_MSS:SD_VOLT_CMD_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_DIR_1_3" "ICICLE_MSS:SD_VOLT_DIR_1_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_DIR_0" "ICICLE_MSS:SD_VOLT_DIR_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_EN" "ICICLE_MSS:SD_VOLT_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_SEL" "ICICLE_MSS:SD_VOLT_SEL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_CD" "ICICLE_MSS:SD_CD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_WP" "ICICLE_MSS:SD_WP" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign MPFS_ICICLE_SD_CARD
generate_component -component_name ${sd_name}
