# Icicle Kit eMMC Libero design

if { $::argc > 0 } {
    set i 1
    foreach arg $::argv {
		set temp [split $arg ":"]
		puts "Setting parameter [lindex $temp 0] to [lindex $temp 1]"
		set [lindex $temp 0] "[lindex $temp 0]:[lindex $temp 1]"
        incr i
    }
} else {
    puts "no command line argument passed"
}

set install_loc [defvar_get -name ACTEL_SW_DIR]
set mss_config_loc "$install_loc/bin64/pfsoc_mss"
set local_dir [pwd]
set project_dir "$local_dir/MPFS_ICICLE_eMMC"

set emmc_sd "emmc"

set constraint_path ./constraints

new_project -location {./MPFS_ICICLE_eMMC} -name {MPFS_ICICLE_eMMC} -project_description {} -block_mode 0 -standalone_peripheral_initialization 0 -instantiate_in_smartdesign 1 -ondemand_build_dh 1 -use_relative_path 0 -linked_files_root_dir_env {} -hdl {VERILOG} -family {PolarFireSoC} -die {MPFS250T_ES} -package {FCG1152} -speed {STD} -die_voltage {1.0} -part_range {EXT} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} -adv_options {TEMPR:EXT} -adv_options {VCCI_1.2_VOLTR:EXT} -adv_options {VCCI_1.5_VOLTR:EXT} -adv_options {VCCI_1.8_VOLTR:EXT} -adv_options {VCCI_2.5_VOLTR:EXT} -adv_options {VCCI_3.3_VOLTR:EXT} -adv_options {VOLTR:EXT} 
set_device -family {PolarFireSoC} -die {MPFS250T_ES} -package {FCVG484} -speed {STD} -die_voltage {1.0} -part_range {EXT} -adv_options {IO_DEFT_STD:LVCMOS 1.8V} -adv_options {RESTRICTPROBEPINS:1} -adv_options {RESTRICTSPIPINS:0} -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} -adv_options {TEMPR:EXT} -adv_options {VCCI_1.2_VOLTR:EXT} -adv_options {VCCI_1.5_VOLTR:EXT} -adv_options {VCCI_1.8_VOLTR:EXT} -adv_options {VCCI_2.5_VOLTR:EXT} -adv_options {VCCI_3.3_VOLTR:EXT} -adv_options {VOLTR:EXT} 

download_core -vlnv {Actel:SgCore:PF_OSC:1.0.102} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_CCC:2.2.100} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CORERESET_PF:2.2.107} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Microsemi:SgCore:PFSOC_INIT_MONITOR:1.0.204} -location {www.microchip-ip.com/repositories/SgCore} 
download_core -vlnv {Actel:DirectCore:COREAXI4INTERCONNECT:2.8.103} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:SgCore:PF_CLK_DIV:1.0.103} -location {www.microchip-ip.com/repositories/SgCore} 
download_core -vlnv {Actel:SgCore:PF_DRI:1.1.100} -location {www.microchip-ip.com/repositories/SgCore} 
download_core -vlnv {Actel:SgCore:PF_NGMUX:1.0.101} -location {www.microchip-ip.com/repositories/SgCore} 
download_core -vlnv {Actel:SgCore:PF_PCIE:2.0.104} -location {www.microchip-ip.com/repositories/SgCore} 
download_core -vlnv {Actel:SgCore:PF_TX_PLL:2.0.300} -location {www.microchip-ip.com/repositories/SgCore} 
download_core -vlnv {Actel:SgCore:PF_XCVR_REF_CLK:1.0.103} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CoreAPB3:4.1.100} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:DirectCore:COREAXI4DMACONTROLLER:2.0.100} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:SystemBuilder:PF_SRAM_AHBL_AXI:1.2.108} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:Simulation:CLK_GEN:1.0.1} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:Simulation:RESET_GEN:1.0.1} -location {www.microchip-ip.com/repositories/SgCore}

source ./script_support/MPFS_ICICLE_eMMC_recursive.tcl

run_tool -name {CONSTRAINT_MANAGEMENT} 
import_files \
         -convert_EDN_to_HDL 0 \
         -io_pdc "${constraint_path}/ICICLE.pdc" \
         -io_pdc "${constraint_path}/ICICLE_CAN0.pdc" \
         -io_pdc "${constraint_path}/ICICLE_MAC.pdc" \
         -io_pdc "${constraint_path}/ICICLE_MIKROBUS.pdc" \
         -io_pdc "${constraint_path}/ICICLE_MMUART0.pdc" \
         -io_pdc "${constraint_path}/ICICLE_MMUART1.pdc" \
         -io_pdc "${constraint_path}/ICICLE_MMUART2.pdc" \
         -io_pdc "${constraint_path}/ICICLE_MMUART3.pdc" \
		 -io_pdc "${constraint_path}/ICICLE_PCIE.pdc" \
		 -io_pdc "${constraint_path}/ICICLE_USB.pdc" \
		 -io_pdc "${constraint_path}/ICICLE_SDIO.pdc"

organize_tool_files -tool {PLACEROUTE} -file "${project_dir}/constraint/io/ICICLE_CAN0.pdc" -file "${project_dir}/constraint/io/ICICLE_MIKROBUS.pdc" -file "${project_dir}/constraint/io/ICICLE_SDIO.pdc" -file "${project_dir}/constraint/io/ICICLE_USB.pdc" -file "${project_dir}/constraint/io/ICICLE.pdc" -file "${project_dir}/constraint/io/ICICLE_MAC.pdc" -file "${project_dir}/constraint/io/ICICLE_PCIE.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART0.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART1.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART3.pdc" -file "${project_dir}/constraint/io/ICICLE_MMUART2.pdc" -file "${project_dir}/constraint/io/ICICLE_RPi.pdc" -module {MPFS_ICICLE_KIT_BASE_DESIGN::work} -input_type {constraint} 
derive_constraints_sdc 
save_project 
