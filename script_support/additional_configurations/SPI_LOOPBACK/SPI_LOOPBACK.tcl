set sd_name {MPFS_ICICLE_KIT_BASE_DESIGN}
open_smartdesign -sd_name ${sd_name}
delete_component -component_name {ICICLE_MSS} 
import_mss_component -file "$local_dir/script_support/components/MSS_SPI_LOOPBACK/ICICLE_MSS.cxz"
sd_update_instance -sd_name ${sd_name} -instance_name {ICICLE_MSS} 

sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"QSPI_DATA2_BIBUF"} 
sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"QSPI_DATA3_OR_PWM_BIBUF"} 
sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"QSPI_DATA3_OR_PWM_D_OR"} 
sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"QSPI_DATA3_OR_PWM_EN_OR"} 

generate_component -component_name {MPFS_ICICLE_KIT_BASE_DESIGN} -recursive 0 

generate_component -component_name ${sd_name} -recursive 0 
build_design_hierarchy

organize_tool_files -tool {PLACEROUTE} -file "${project_dir}/constraint/io/ICICLE_CAN0.pdc" -file "${project_dir}/constraint/io/ICICLE_SDIO.pdc" -file "${project_dir}/constraint/io/ICICLE_USB.pdc" -file "${project_dir}/constraint/io/ICICLE.pdc" -file "${project_dir}/constraint/io/ICICLE_MAC.pdc" -file "${project_dir}/constraint/io/ICICLE_PCIE.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART0.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART1.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART3.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART2.pdc" -file "${project_dir}/constraint/io/ICICLE_SPI_LOOPBACK.pdc" -module {MPFS_ICICLE_KIT_BASE_DESIGN::work} -input_type {constraint} 
