#	imporitng files 
import_files \
         -convert_EDN_to_HDL 0 \
         -library {work} \
         -hdl_source {./script_support/hdl/AXI4_STREAM_DATA_GENERATOR/AXI4_STREAM_DATA_GENERATOR.v} \
         -hdl_source {./script_support/hdl/AXI4_STREAM_DATA_GENERATOR/AXI4_STREAM_DATA_GENERATOR_gen.v} \
         -hdl_source {./script_support/hdl/AXI4_STREAM_DATA_GENERATOR/AXI4_STREAM_DATA_GENERATOR_FSM.v} \
         -hdl_source {./script_support/hdl/AXI4_STREAM_DATA_GENERATOR/AXI4_STREAM_DATA_GENERATOR_ABP_Reg.v} \
         -hdl_source {./script_support/hdl/AXI4_STREAM_DATA_GENERATOR/AXI4_STREAM_DATA_GENERATOR_DFF.v} 
build_design_hierarchy 

#	updating the dma controller to include the axi stream inputs
configure_core -component_name {DMA_CONTROLLER} -params {"AXI4_STREAM_IF:true" "AXI_DMA_DWIDTH:32" "DSCRPTR_0_INT_ASSOC:0" "DSCRPTR_0_PRI_LVL:0" "DSCRPTR_10_INT_ASSOC:0" "DSCRPTR_10_PRI_LVL:0" "DSCRPTR_11_INT_ASSOC:0" "DSCRPTR_11_PRI_LVL:0" "DSCRPTR_12_INT_ASSOC:0" "DSCRPTR_12_PRI_LVL:0" "DSCRPTR_13_INT_ASSOC:0" "DSCRPTR_13_PRI_LVL:0" "DSCRPTR_14_INT_ASSOC:0" "DSCRPTR_14_PRI_LVL:0" "DSCRPTR_15_INT_ASSOC:0" "DSCRPTR_15_PRI_LVL:0" "DSCRPTR_16_INT_ASSOC:0" "DSCRPTR_16_PRI_LVL:0" "DSCRPTR_17_INT_ASSOC:0" "DSCRPTR_17_PRI_LVL:0" "DSCRPTR_18_INT_ASSOC:0" "DSCRPTR_18_PRI_LVL:0" "DSCRPTR_19_INT_ASSOC:0" "DSCRPTR_19_PRI_LVL:0" "DSCRPTR_1_INT_ASSOC:0" "DSCRPTR_1_PRI_LVL:0" "DSCRPTR_20_INT_ASSOC:0" "DSCRPTR_20_PRI_LVL:0" "DSCRPTR_21_INT_ASSOC:0" "DSCRPTR_21_PRI_LVL:0" "DSCRPTR_22_INT_ASSOC:0" "DSCRPTR_22_PRI_LVL:0" "DSCRPTR_23_INT_ASSOC:0" "DSCRPTR_23_PRI_LVL:0" "DSCRPTR_24_INT_ASSOC:0" "DSCRPTR_24_PRI_LVL:0" "DSCRPTR_25_INT_ASSOC:0" "DSCRPTR_25_PRI_LVL:0" "DSCRPTR_26_INT_ASSOC:0" "DSCRPTR_26_PRI_LVL:0" "DSCRPTR_27_INT_ASSOC:0" "DSCRPTR_27_PRI_LVL:0" "DSCRPTR_28_INT_ASSOC:0" "DSCRPTR_28_PRI_LVL:0" "DSCRPTR_29_INT_ASSOC:0" "DSCRPTR_29_PRI_LVL:0" "DSCRPTR_2_INT_ASSOC:0" "DSCRPTR_2_PRI_LVL:0" "DSCRPTR_30_INT_ASSOC:0" "DSCRPTR_30_PRI_LVL:0" "DSCRPTR_31_INT_ASSOC:0" "DSCRPTR_31_PRI_LVL:0" "DSCRPTR_3_INT_ASSOC:0" "DSCRPTR_3_PRI_LVL:0" "DSCRPTR_4_INT_ASSOC:0" "DSCRPTR_4_PRI_LVL:0" "DSCRPTR_5_INT_ASSOC:0" "DSCRPTR_5_PRI_LVL:0" "DSCRPTR_6_INT_ASSOC:0" "DSCRPTR_6_PRI_LVL:0" "DSCRPTR_7_INT_ASSOC:0" "DSCRPTR_7_PRI_LVL:0" "DSCRPTR_8_INT_ASSOC:0" "DSCRPTR_8_PRI_LVL:0" "DSCRPTR_9_INT_ASSOC:0" "DSCRPTR_9_PRI_LVL:0" "ID_WIDTH:8" "INT_0_QUEUE_DEPTH:1" "INT_1_QUEUE_DEPTH:1" "INT_2_QUEUE_DEPTH:1" "INT_3_QUEUE_DEPTH:1" "NUM_INT_BDS:4" "NUM_OF_INTS:1" "NUM_PRI_LVLS:1" "PRI_0_NUM_OF_BEATS:256" "PRI_1_NUM_OF_BEATS:128" "PRI_2_NUM_OF_BEATS:64" "PRI_3_NUM_OF_BEATS:32" "PRI_4_NUM_OF_BEATS:16" "PRI_5_NUM_OF_BEATS:8" "PRI_6_NUM_OF_BEATS:4" "PRI_7_NUM_OF_BEATS:1"} 
sd_update_instance -sd_name {FIC_0_PERIPHERALS} -instance_name {DMA_CONTROLLER} 
		 
#	updating the FIC3_INITATOR to add in a new ABP slave slot
delete_component -component_name {FIC_3_0x4000_0xxx} 
source {./script_support/additional_configurations/AXI4_STREAM_DATA_GENERATOR/FIC_3_0x4000_0xxx_AXI_STREAM.tcl}
sd_update_instance -sd_name {FIC_3_ADDRESS_GENERATION} -instance_name {FIC_3_0x4000_0xxx_0} 
sd_connect_pin_to_port -sd_name {FIC_3_ADDRESS_GENERATION} -pin_name {FIC_3_0x4000_0xxx_0:APBmslave15} -port_name {} 
sd_rename_port -sd_name {FIC_3_ADDRESS_GENERATION} -current_port_name {APBmslave15} -new_port_name {FIC_3_0x4000_0Fxx} 
generate_component -component_name {FIC_3_ADDRESS_GENERATION} -recursive 0 
sd_update_instance -sd_name {FIC_3_PERIPHERALS} -instance_name {FIC_3_ADDRESS_GENERATION_1} 
sd_connect_pin_to_port -sd_name {FIC_3_PERIPHERALS} -pin_name {FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_0Fxx} -port_name {} 
generate_component -component_name {FIC_3_PERIPHERALS} -recursive 0 
sd_update_instance -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_name {FIC_3_PERIPHERALS_1} 
build_design_hierarchy 

create_hdl_core -file "${project_dir}/hdl/AXI4_STREAM_DATA_GENERATOR.v" -module {AXI4_STREAM_DATA_GENERATOR} -library {work} -package {} 

#	adding the signal to the BIF	
hdl_core_add_bif -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {APB_TARGET} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -bif_name {APB_TARGET} -bif_signal_name {PADDR} -core_signal_name {PADDR} 
hdl_core_assign_bif_signal -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -bif_name {APB_TARGET} -bif_signal_name {PENABLE} -core_signal_name {PENABLE} 
hdl_core_assign_bif_signal -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -bif_name {APB_TARGET} -bif_signal_name {PWRITE} -core_signal_name {PWRITE} 
hdl_core_assign_bif_signal -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -bif_name {APB_TARGET} -bif_signal_name {PRDATA} -core_signal_name {PRDATA} 
hdl_core_assign_bif_signal -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -bif_name {APB_TARGET} -bif_signal_name {PWDATA} -core_signal_name {PWDATA} 
hdl_core_assign_bif_signal -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -bif_name {APB_TARGET} -bif_signal_name {PREADY} -core_signal_name {PREADY} 
hdl_core_assign_bif_signal -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -bif_name {APB_TARGET} -bif_signal_name {PSLVERR} -core_signal_name {PSLVERR} 
hdl_core_assign_bif_signal -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -bif_name {APB_TARGET} -bif_signal_name {PSELx} -core_signal_name {PSEL} 

#	instanciate the module in the smart design
sd_instantiate_hdl_core -sd_name {FIC_0_PERIPHERALS} -hdl_core_name {AXI4_STREAM_DATA_GENERATOR} -instance_name {} 

#	connecting the module to the dma controller
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:TID" "AXI4_STREAM_DATA_GENERATOR_0:TID"} 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:TKEEP" "AXI4_STREAM_DATA_GENERATOR_0:TKEEP"} 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:TLAST" "AXI4_STREAM_DATA_GENERATOR_0:TLAST"} 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:TVALID" "AXI4_STREAM_DATA_GENERATOR_0:TVALID"} 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:TSTRB" "AXI4_STREAM_DATA_GENERATOR_0:TSTRB"} 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:TDATA" "AXI4_STREAM_DATA_GENERATOR_0:TDATA"} 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:TREADY" "AXI4_STREAM_DATA_GENERATOR_0:TREADY"} 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:TDEST" "AXI4_STREAM_DATA_GENERATOR_0:TDEST"} 

#   connecting ACLK and reset
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:CLOCK" "AXI4_STREAM_DATA_GENERATOR_0:ACLK"} 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"DMA_CONTROLLER:RESETN" "AXI4_STREAM_DATA_GENERATOR_0:RSTN"} 

#	connecting the PCLK and PRESET_n and FIC 3
sd_connect_pin_to_port -sd_name {FIC_0_PERIPHERALS} -pin_name {AXI4_STREAM_DATA_GENERATOR_0:APB_TARGET} -port_name {} 
sd_connect_pin_to_port -sd_name {FIC_0_PERIPHERALS} -pin_name {AXI4_STREAM_DATA_GENERATOR_0:PRESETN} -port_name {} 
sd_connect_pin_to_port -sd_name {FIC_0_PERIPHERALS} -pin_name {AXI4_STREAM_DATA_GENERATOR_0:PCLK} -port_name {} 
generate_component -component_name {FIC_0_PERIPHERALS} -recursive 0 
sd_update_instance -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_name {FIC_0_PERIPHERALS_1} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"FIC_0_PERIPHERALS_1:APB_TARGET" "FIC_3_PERIPHERALS_1:FIC_3_0x4000_0Fxx"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:RESETN_FIC_3_CLK" "FIC_0_PERIPHERALS_1:PRESETN"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:FIC_3_CLK" "FIC_0_PERIPHERALS_1:PCLK"} 
generate_component -component_name {MPFS_ICICLE_KIT_BASE_DESIGN} -recursive 0 
save_smartdesign -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} 
generate_component -component_name {MPFS_ICICLE_KIT_BASE_DESIGN} -recursive 0 
build_design_hierarchy
