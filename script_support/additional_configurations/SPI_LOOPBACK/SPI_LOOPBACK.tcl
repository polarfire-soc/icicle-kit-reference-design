set sd_name {MPFS_ICICLE_KIT_BASE_DESIGN}
open_smartdesign -sd_name ${sd_name}
delete_component -component_name {ICICLE_MSS} 
import_mss_component -file "$local_dir/script_support/components/MSS_SPI_LOOPBACK/ICICLE_MSS.cxz"
sd_update_instance -sd_name ${sd_name} -instance_name {ICICLE_MSS} 

sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"BIBUF_0"} 
sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"BIBUF_1"} 
sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"BIBUF_2"} 
sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"BIBUF_3"} 
sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"BIBUF_4"} 
sd_delete_instances -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_names {"BIBUF_5"} 

sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {SPI_0_CLK} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"SPI_0_CLK:E" "ICICLE_MSS:SPI_0_CLK_OE_M2F"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"SPI_0_CLK:D" "ICICLE_MSS:SPI_0_CLK_M2F"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"SPI_0_CLK:Y" "ICICLE_MSS:SPI_0_CLK_F2M"} 
sd_rename_port -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -current_port_name {PAD} -new_port_name {SPI_0_CLK_PAD} 
sd_connect_pin_to_port -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {ICICLE_MSS:SPI_0_DO_M2F} -port_name {SPI_0_DO} 
sd_connect_pin_to_port -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {ICICLE_MSS:SPI_0_DI_F2M} -port_name {SPI_0_DI} 
sd_connect_pin_to_port -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {ICICLE_MSS:SPI_0_SS_F2M} -port_name {SPI_0_SS} 

generate_component -component_name {MPFS_ICICLE_KIT_BASE_DESIGN} -recursive 0 

generate_component -component_name ${sd_name} -recursive 0 
build_design_hierarchy

organize_tool_files \
	-tool {PLACEROUTE} \
	-file "${project_dir}/constraint/io/ICICLE_CAN0.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_SDIO.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_USB.pdc" \
	-file "${project_dir}/constraint/io/ICICLE.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MAC.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_PCIE.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MMUART0.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MMUART1.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MMUART2.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MMUART3.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_SPI_LOOPBACK.pdc" \
	-file "${project_dir}/constraint/io/NW_PLL.pdc" \
	-module {MPFS_ICICLE_KIT_BASE_DESIGN::work} \
	-input_type {constraint} 
