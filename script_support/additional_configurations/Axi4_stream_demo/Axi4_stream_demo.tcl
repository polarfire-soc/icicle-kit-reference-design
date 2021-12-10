#	imporitng the files 
import_files \
         -convert_EDN_to_HDL 0 \
         -library {work} \
         -hdl_source {../source/top.v} \
         -hdl_source {../source/data_gen.v} \
         -hdl_source {../source/axi4_stream.v} 
build_design_hierarchy 

		 
#	updating the dma controller to include the axi stream inputs
configure_core -component_name {DMA_CONTROLLER} -params {"AXI4_STREAM_IF:true" "AXI_DMA_DWIDTH:32" "DSCRPTR_0_INT_ASSOC:0" "DSCRPTR_0_PRI_LVL:0" "DSCRPTR_10_INT_ASSOC:0" "DSCRPTR_10_PRI_LVL:0" "DSCRPTR_11_INT_ASSOC:0" "DSCRPTR_11_PRI_LVL:0" "DSCRPTR_12_INT_ASSOC:0" "DSCRPTR_12_PRI_LVL:0" "DSCRPTR_13_INT_ASSOC:0" "DSCRPTR_13_PRI_LVL:0" "DSCRPTR_14_INT_ASSOC:0" "DSCRPTR_14_PRI_LVL:0" "DSCRPTR_15_INT_ASSOC:0" "DSCRPTR_15_PRI_LVL:0" "DSCRPTR_16_INT_ASSOC:0" "DSCRPTR_16_PRI_LVL:0" "DSCRPTR_17_INT_ASSOC:0" "DSCRPTR_17_PRI_LVL:0" "DSCRPTR_18_INT_ASSOC:0" "DSCRPTR_18_PRI_LVL:0" "DSCRPTR_19_INT_ASSOC:0" "DSCRPTR_19_PRI_LVL:0" "DSCRPTR_1_INT_ASSOC:0" "DSCRPTR_1_PRI_LVL:0" "DSCRPTR_20_INT_ASSOC:0" "DSCRPTR_20_PRI_LVL:0" "DSCRPTR_21_INT_ASSOC:0" "DSCRPTR_21_PRI_LVL:0" "DSCRPTR_22_INT_ASSOC:0" "DSCRPTR_22_PRI_LVL:0" "DSCRPTR_23_INT_ASSOC:0" "DSCRPTR_23_PRI_LVL:0" "DSCRPTR_24_INT_ASSOC:0" "DSCRPTR_24_PRI_LVL:0" "DSCRPTR_25_INT_ASSOC:0" "DSCRPTR_25_PRI_LVL:0" "DSCRPTR_26_INT_ASSOC:0" "DSCRPTR_26_PRI_LVL:0" "DSCRPTR_27_INT_ASSOC:0" "DSCRPTR_27_PRI_LVL:0" "DSCRPTR_28_INT_ASSOC:0" "DSCRPTR_28_PRI_LVL:0" "DSCRPTR_29_INT_ASSOC:0" "DSCRPTR_29_PRI_LVL:0" "DSCRPTR_2_INT_ASSOC:0" "DSCRPTR_2_PRI_LVL:0" "DSCRPTR_30_INT_ASSOC:0" "DSCRPTR_30_PRI_LVL:0" "DSCRPTR_31_INT_ASSOC:0" "DSCRPTR_31_PRI_LVL:0" "DSCRPTR_3_INT_ASSOC:0" "DSCRPTR_3_PRI_LVL:0" "DSCRPTR_4_INT_ASSOC:0" "DSCRPTR_4_PRI_LVL:0" "DSCRPTR_5_INT_ASSOC:0" "DSCRPTR_5_PRI_LVL:0" "DSCRPTR_6_INT_ASSOC:0" "DSCRPTR_6_PRI_LVL:0" "DSCRPTR_7_INT_ASSOC:0" "DSCRPTR_7_PRI_LVL:0" "DSCRPTR_8_INT_ASSOC:0" "DSCRPTR_8_PRI_LVL:0" "DSCRPTR_9_INT_ASSOC:0" "DSCRPTR_9_PRI_LVL:0" "ID_WIDTH:8" "INT_0_QUEUE_DEPTH:1" "INT_1_QUEUE_DEPTH:1" "INT_2_QUEUE_DEPTH:1" "INT_3_QUEUE_DEPTH:1" "NUM_INT_BDS:4" "NUM_OF_INTS:1" "NUM_PRI_LVLS:1" "PRI_0_NUM_OF_BEATS:256" "PRI_1_NUM_OF_BEATS:128" "PRI_2_NUM_OF_BEATS:64" "PRI_3_NUM_OF_BEATS:32" "PRI_4_NUM_OF_BEATS:16" "PRI_5_NUM_OF_BEATS:8" "PRI_6_NUM_OF_BEATS:4" "PRI_7_NUM_OF_BEATS:1"} 

sd_update_instance -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_name {DMA_CONTROLLER} 
		 
#	updating the FIC3_INITATOR to add in a new ABP slave slot
configure_core -component_name {FIC3_INITIATOR} -params {"APBSLOT0ENABLE:false" "APBSLOT10ENABLE:true" "APBSLOT11ENABLE:false" "APBSLOT12ENABLE:false" "APBSLOT13ENABLE:false" "APBSLOT14ENABLE:false" "APBSLOT15ENABLE:true" "APBSLOT1ENABLE:true" "APBSLOT2ENABLE:true" "APBSLOT3ENABLE:false" "APBSLOT4ENABLE:false" "APBSLOT5ENABLE:false" "APBSLOT6ENABLE:false" "APBSLOT7ENABLE:false" "APBSLOT8ENABLE:false" "APBSLOT9ENABLE:false" "APB_DWIDTH:32" "IADDR_OPTION:0" "MADDR_BITS:28" "SC_0:false" "SC_10:false" "SC_11:false" "SC_12:false" "SC_13:false" "SC_14:false" "SC_15:false" "SC_1:false" "SC_2:false" "SC_3:true" "SC_4:false" "SC_5:false" "SC_6:false" "SC_7:false" "SC_8:true" "SC_9:false" "UPR_NIBBLE_POSN:6"} 

sd_update_instance -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_name {FIC3_INITIATOR} 


build_design_hierarchy 

create_hdl_core -file {./MPFS_ICICLE/hdl/top.v} -module {top} -library {work} -package {} 


#	adding the signal to the BIF	
hdl_core_add_bif -hdl_core_name {top} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {BIF_1} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {top} -bif_name {BIF_1} -bif_signal_name {PADDR} -core_signal_name {paddr} 
hdl_core_assign_bif_signal -hdl_core_name {top} -bif_name {BIF_1} -bif_signal_name {PENABLE} -core_signal_name {penable} 
hdl_core_assign_bif_signal -hdl_core_name {top} -bif_name {BIF_1} -bif_signal_name {PWRITE} -core_signal_name {pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {top} -bif_name {BIF_1} -bif_signal_name {PRDATA} -core_signal_name {prdata} 
hdl_core_assign_bif_signal -hdl_core_name {top} -bif_name {BIF_1} -bif_signal_name {PWDATA} -core_signal_name {pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {top} -bif_name {BIF_1} -bif_signal_name {PREADY} -core_signal_name {pready} 
hdl_core_assign_bif_signal -hdl_core_name {top} -bif_name {BIF_1} -bif_signal_name {PSLVERR} -core_signal_name {pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {top} -bif_name {BIF_1} -bif_signal_name {PSELx} -core_signal_name {psel} 


#	instanciate the module in the smart design
sd_instantiate_hdl_core -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -hdl_core_name {top} -instance_name {} 

# connect the module ot the fic
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"FIC3_INITIATOR:APBmslave10" "top_0:BIF_1"} 




#	connecting the module to the dma controller
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"DMA_CONTROLLER:TID" "top_0:TID"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"DMA_CONTROLLER:TKEEP" "top_0:TKEEP"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"DMA_CONTROLLER:TLAST" "top_0:TLAST"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"DMA_CONTROLLER:TVALID" "top_0:TVALID"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"DMA_CONTROLLER:TSTRB" "top_0:TSTRB"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"DMA_CONTROLLER:TDATA" "top_0:TDATA"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"DMA_CONTROLLER:TREADY" "top_0:TREADY"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"DMA_CONTROLLER:TDEST" "top_0:TDEST"} 
save_smartdesign -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:CLK_125MHz" "top_0:ACLK"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:RESETN_CLK_125MHz" "top_0:RSTN"} 


#	connecting the start input to the MSS
sd_delete_nets -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -net_names {ICICLE_MSS_GPIO_2_M2F_28} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"ICICLE_MSS:GPIO_2_M2F_28" "top_0:start"} 
sd_connect_pins_to_constant -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {SW1_OR_GPIO_2_28:B} -value {GND} 

#	connecting the PCLK and PRESET_n
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:CLK_62_5MHz" "top_0:pclk"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:RESETN_CLK_62_5MHz" "top_0:presetn"} 
export_script -file {./exported.tcl} -relative_path 1 


build_design_hierarchy