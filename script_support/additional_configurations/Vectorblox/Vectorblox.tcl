download_core -vlnv {Microchip:SolutionCore:core_vectorblox:1.1.12} -location {www.microchip-ip.com/repositories/DirectCore} 
cd $local_dir/script_support/additional_configurations/Vectorblox/
source Vectorblox_ss_recursive.tcl
sd_instantiate_component -sd_name {FIC_0_PERIPHERALS} -component_name {Vectorblox_ss} -instance_name {Vectorblox_ss_0} 

delete_component -component_name {FIC0_INITIATOR} 
source FIC0_INITIATOR_VBX.tcl

sd_update_instance -sd_name {FIC_0_PERIPHERALS} -instance_name {FIC0_INITIATOR} 

# Update clock configuration
sd_connect_pin_to_port -sd_name {CLOCKS_AND_RESETS} -pin_name {CLKINT_REF_CLK_50MHz:Y} -port_name {CLKINT_REF_CLK_50MHz_Y} 
sd_connect_pin_to_port -sd_name {CLOCKS_AND_RESETS} -pin_name {INIT_MONITOR_0:DEVICE_INIT_DONE} -port_name {} 
generate_component -component_name {CLOCKS_AND_RESETS} -recursive 0 
sd_update_instance -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_name {CLOCKS_AND_RESETS} 

#connect pins 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"Vectorblox_ss_0:S_control" "FIC0_INITIATOR:AXI4mslave2" } 
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"Vectorblox_ss_0:aclk_control" "FIC0_INITIATOR:S_CLK2"} 
sd_create_scalar_port -sd_name {FIC_0_PERIPHERALS} -port_name {VBX_ACLK} -port_direction {OUT}
sd_connect_pins -sd_name {FIC_0_PERIPHERALS} -pin_names {"VBX_ACLK" "Vectorblox_ss_0:aclk"} 
#sd_connect_pin_to_port -sd_name {FIC_0_PERIPHERALS} -pin_name {Vectorblox_ss_0:aclk} -port_name {VBX_ACLK} 
#sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"Vectorblox_ss_0:aclk" "ICICLE_MSS:FIC_2_ACLK"} 
sd_connect_pin_to_port -sd_name {FIC_0_PERIPHERALS} -pin_name {Vectorblox_ss_0:EXT_RST_N} -port_name {VBX_EXT_RST_N} 
#sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"Vectorblox_ss_0:EXT_RST_N" "ICICLE_MSS:MSS_RESET_N_M2F"} 
sd_connect_pin_to_port -sd_name {FIC_0_PERIPHERALS} -pin_name {Vectorblox_ss_0:AXIM} -port_name {VBX_AXIM} 
#sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"Vectorblox_ss_0:AXIM"     "ICICLE_MSS:FIC_2_AXI4_TARGET"} 
sd_connect_pin_to_port -sd_name {FIC_0_PERIPHERALS} -pin_name {Vectorblox_ss_0:INIT_DONE} -port_name {VBX_INIT_DONE} 
#sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:DEVICE_INIT_DONE" "Vectorblox_ss_0:INIT_DONE"} 
sd_connect_pin_to_port -sd_name {FIC_0_PERIPHERALS} -pin_name {Vectorblox_ss_0:REF_CLK_0} -port_name {VBX_REF_CLK} 
# -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:CLKINT_REF_CLK_50MHz_Y" "Vectorblox_ss_0:REF_CLK_0"} 
generate_component -component_name {FIC_0_PERIPHERALS} -recursive 0 
sd_update_instance -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -instance_name {FIC_0_PERIPHERALS_1} 

sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:CLKINT_REF_CLK_50MHz_Y" "FIC_0_PERIPHERALS_1:VBX_REF_CLK"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CLOCKS_AND_RESETS:DEVICE_INIT_DONE" "FIC_0_PERIPHERALS_1:VBX_INIT_DONE"}
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"MSS_WRAPPER_1:MSS_RESET_N_M2F" "FIC_0_PERIPHERALS_1:VBX_EXT_RST_N"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"FIC_0_PERIPHERALS_1:VBX_ACLK" "MSS_WRAPPER_1:FIC_2_ACLK"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"FIC_0_PERIPHERALS_1:VBX_AXIM" "MSS_WRAPPER_1:FIC_2_AXI4_TARGET"} 

#get ready for building
generate_component -component_name {MPFS_ICICLE_KIT_BASE_DESIGN} -recursive 0 
build_design_hierarchy 
derive_constraints_sdc

 
configure_tool -name {SYNTHESIZE} \
-params {AUTO_COMPILE_POINT:false} \
-params {BLOCK_MODE:false} \
-params {BLOCK_PLACEMENT_CONFLICTS:ERROR} \
-params {BLOCK_ROUTING_CONFLICTS:LOCK} \
-params {CLOCK_ASYNC:800} \
-params {CLOCK_DATA:5000} \
-params {CLOCK_GATE_ENABLE:false} \
-params {CLOCK_GATE_ENABLE_THRESHOLD_GLOBAL:1000} \
-params {CLOCK_GATE_ENABLE_THRESHOLD_ROW:100} \
-params {CLOCK_GLOBAL:2} \
-params {PA4_GB_COUNT:36} \
-params {PA4_GB_MAX_RCLKINT_INSERTION:16} \
-params {PA4_GB_MIN_GB_FANOUT_TO_USE_RCLKINT:1000} \
-params {RAM_OPTIMIZED_FOR_POWER:0} \
-params {RETIMING:true} \
-params {ROM_TO_LOGIC:true} \
-params {SEQSHIFT_TO_URAM:1} \
-params {SYNPLIFY_OPTIONS:} \
-params {SYNPLIFY_TCL_FILE:} 

configure_tool -name {PLACEROUTE} \
-params {DELAY_ANALYSIS:MAX} \
-params {EFFORT_LEVEL:true} \
-params {GB_DEMOTION:true} \
-params {INCRPLACEANDROUTE:false} \
-params {IOREG_COMBINING:false} \
-params {MULTI_PASS_CRITERIA:VIOLATIONS} \
-params {MULTI_PASS_LAYOUT:true} \
-params {NUM_MULTI_PASSES:20} \
-params {PDPR:false} \
-params {RANDOM_SEED:0} \
-params {REPAIR_MIN_DELAY:true} \
-params {REPLICATION:true} \
-params {SLACK_CRITERIA:WORST_SLACK} \
-params {SPECIFIC_CLOCK:} \
-params {START_SEED_INDEX:1} \
-params {STOP_ON_FIRST_PASS:true} \
-params {TDPR:true} 


configure_tool -name {VERIFYTIMING} \
-params {CONSTRAINTS_COVERAGE:1} \
-params {FORMAT:XML} \
-params {MAX_EXPANDED_PATHS_TIMING:1} \
-params {MAX_EXPANDED_PATHS_VIOLATION:0} \
-params {MAX_PARALLEL_PATHS_TIMING:1} \
-params {MAX_PARALLEL_PATHS_VIOLATION:1} \
-params {MAX_PATHS_INTERACTIVE_REPORT:1000} \
-params {MAX_PATHS_TIMING:5} \
-params {MAX_PATHS_VIOLATION:20} \
-params {MAX_TIMING_FAST_HV_LT:1} \
-params {MAX_TIMING_MULTI_CORNER:1} \
-params {MAX_TIMING_SLOW_LV_HT:1} \
-params {MAX_TIMING_SLOW_LV_LT:1} \
-params {MAX_TIMING_VIOLATIONS_FAST_HV_LT:1} \
-params {MAX_TIMING_VIOLATIONS_MULTI_CORNER:1} \
-params {MAX_TIMING_VIOLATIONS_SLOW_LV_HT:1} \
-params {MAX_TIMING_VIOLATIONS_SLOW_LV_LT:1} \
-params {MIN_TIMING_FAST_HV_LT:1} \
-params {MIN_TIMING_MULTI_CORNER:1} \
-params {MIN_TIMING_SLOW_LV_HT:1} \
-params {MIN_TIMING_SLOW_LV_LT:1} \
-params {MIN_TIMING_VIOLATIONS_FAST_HV_LT:1} \
-params {MIN_TIMING_VIOLATIONS_MULTI_CORNER:1} \
-params {MIN_TIMING_VIOLATIONS_SLOW_LV_HT:1} \
-params {MIN_TIMING_VIOLATIONS_SLOW_LV_LT:1} \
-params {SLACK_THRESHOLD_VIOLATION:0.0} \
-params {SMART_INTERACTIVE:1} 


cd $local_dir
