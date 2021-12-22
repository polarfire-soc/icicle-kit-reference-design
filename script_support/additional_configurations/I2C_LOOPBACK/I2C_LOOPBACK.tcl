set sd_name {MPFS_ICICLE_KIT_BASE_DESIGN}
open_smartdesign -sd_name ${sd_name} 
import_mss_component -file "$local_dir/script_support/components/MSS_I2C_LOOPBACK/ICICLE_MSS.cxz"
sd_update_instance -sd_name ${sd_name} -instance_name {ICICLE_MSS} 

# Add I2C1_SCL_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C1_SCL_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C1_SCL_BIBUF:D} -value {GND}

# Add I2C1_SDA_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C1_SDA_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C1_SDA_BIBUF:D} -value {GND}

sd_rename_port -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -current_port_name {PAD} -new_port_name {I2C1_SCL} 
sd_rename_port -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -current_port_name {PAD_0} -new_port_name {I2C1_SDA} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_1_SCL_F2M" "I2C1_SCL_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_1_SDA_F2M" "I2C1_SDA_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_1_SCL_OE_M2F" "I2C1_SCL_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_1_SDA_OE_M2F" "I2C1_SDA_BIBUF:E" }

generate_component -component_name ${sd_name} -recursive 0 
build_design_hierarchy

organize_tool_files -tool {PLACEROUTE} -file "${project_dir}/constraint/io/ICICLE_CAN0.pdc" -file "${project_dir}/constraint/io/ICICLE_SDIO.pdc" -file "${project_dir}/constraint/io/ICICLE_USB.pdc" -file "${project_dir}/constraint/io/ICICLE.pdc" -file "${project_dir}/constraint/io/ICICLE_MAC.pdc" -file "${project_dir}/constraint/io/ICICLE_PCIE.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART0.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART1.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART3.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART2.pdc" -file "${project_dir}/constraint/io/ICICLE_I2C_LOOPBACK.pdc" -module {MPFS_ICICLE_KIT_BASE_DESIGN::work} -input_type {constraint} 
