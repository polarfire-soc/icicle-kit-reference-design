source $env(LEGUP_ROOT_DIR)/examples/legup.tcl
set_project PolarFireSoC MPFS250T Icicle_SoC
set_parameter POINTSTO_ANALYZE_HW_ONLY 1

# Use this option with main.cpu_usage.cpp 
set_parameter SOC_POLL_DELAY 0

set_parameter SOC_PROFILER_COUNTER 1

#
# Parameters used for SoC integration
#
set_parameter SOC_BD_NAME                 MPFS_ICICLE_KIT_BASE_DESIGN
set_parameter SOC_AXI_INITIATOR           AXI2AXI_TO_HLS:AXI4_MASTER
set_parameter SOC_AXI_TARGET              AXI2AXI_FROM_HLS:AXI4_SLAVE
set_parameter SOC_RESET                   CLOCKS_AND_RESETS:RESETN_CLK_125MHz
set_parameter SOC_CLOCK                   CLOCKS_AND_RESETS:CLK_125MHz
# Using FIC-0 Address range: 0x6010_0000 - 0x603F_FFFF (3MB)
set_parameter SOC_FABRIC_BASE_ADDRESS     0x60100000
set_parameter SOC_FABRIC_SIZE             0x300000
# Starting from Cached memory base address all the way up to just before FIC-1
# Address range: 0xDFFF_FFFF - 0x8000_0000 (~1GB)
set_parameter SOC_CPU_MEM_BASE_ADDRESS    0x80000000
set_parameter SOC_CPU_MEM_SIZE            0x60000000


