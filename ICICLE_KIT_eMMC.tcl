#
# // Icicle Kit eMMC Libero design
#

#
# // Check Libero version and path lenth to verify project can be created
#

if {[string compare [string range [get_libero_version] 0 end-3] "2021.1.0"]==0} {
	puts "Libero v2021.1 detected."
} else {
	error "Incorrect Libero version. Please use Libero v2021.1 to run these scripts."
}

if { [lindex $tcl_platform(os) 0]  == "Windows" } {
	if {[string length [pwd]] < 90} {
		puts "Project path length ok."
	} else {
		error "Path to project is too long, please reduce the path and try again."
	}
}

#
# // Process arguments
#

if { $::argc > 0 } {
	set i 1
	foreach arg $::argv {
		if {[string match "*:*" $arg]} {
			set temp [split $arg ":"]
			puts "Setting parameter [lindex $temp 0] to [lindex $temp 1]"
			set [lindex $temp 0] "[lindex $temp 1]"
		} else {
			set $arg 1
			puts "set $arg to 1"
		}
		incr i
	}
} else {
	puts "no command line argument passed"
}

#
# // Set required variables and add functions
#

set install_loc [defvar_get -name ACTEL_SW_DIR]
set mss_config_loc "$install_loc/bin64/pfsoc_mss"
set local_dir [pwd]
set emmc_sd "emmc"
set constraint_path ./script_support/constraints

if {[info exists I2C_LOOPBACK]} {
	set project_name "MPFS_ICICLE_I2C_LOOPBACK_eMMC"
	set project_dir "$local_dir/MPFS_ICICLE_I2C_LOOPBACK_eMMC"
} elseif {[info exists VECTORBLOX]} {
	set project_name "MPFS_ICICLE_Vectorblox_eMMC"
	set project_dir "$local_dir/MPFS_ICICLE_Vectorblox_eMMC"
} else {
	set project_name "MPFS_ICICLE_eMMC"
	set project_dir "$local_dir/MPFS_ICICLE_eMMC"
}

source ./script_support/additional_configurations/functions.tcl

#
# // Create Libero project
#

new_project \
	-location $project_name \
	-name $project_name \
	-project_description {} \
	-block_mode 0 \
	-standalone_peripheral_initialization 0 \
	-instantiate_in_smartdesign 1 \
	-ondemand_build_dh 1 \
	-use_relative_path 0 \
	-linked_files_root_dir_env {} \
	-hdl {VERILOG} \
	-family {PolarFireSoC} \
	-die {MPFS250T_ES} \
	-package {FCVG484} \
	-speed {STD} \
	-die_voltage {1.0} \
	-part_range {EXT} \
	-adv_options {IO_DEFT_STD:LVCMOS 1.8V} \
	-adv_options {RESTRICTPROBEPINS:1} \
	-adv_options {RESTRICTSPIPINS:0} \
	-adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} \
	-adv_options {TEMPR:EXT} \
	-adv_options {VCCI_1.2_VOLTR:EXT} \
	-adv_options {VCCI_1.5_VOLTR:EXT} \
	-adv_options {VCCI_1.8_VOLTR:EXT} \
	-adv_options {VCCI_2.5_VOLTR:EXT} \
	-adv_options {VCCI_3.3_VOLTR:EXT} \
	-adv_options {VOLTR:EXT}

#
# // Download required cores
#

download_core -vlnv {Actel:SgCore:PF_OSC:1.0.102} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_CCC:2.2.100} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CORERESET_PF:2.3.100} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Microsemi:SgCore:PFSOC_INIT_MONITOR:1.0.205} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:COREAXI4INTERCONNECT:2.8.103} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:SgCore:PF_CLK_DIV:1.0.103} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_DRI:1.1.100} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_NGMUX:1.0.101} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_PCIE:2.0.104} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_TX_PLL:2.0.300} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_XCVR_REF_CLK:1.0.103} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CoreAPB3:4.2.100} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:DirectCore:COREAXI4DMACONTROLLER:2.1.102} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:SystemBuilder:PF_SRAM_AHBL_AXI:1.2.108} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:Simulation:CLK_GEN:1.0.1} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:Simulation:RESET_GEN:1.0.1} -location {www.microchip-ip.com/repositories/SgCore}

#
# // Generate base design
#

source ./script_support/MPFS_ICICLE_eMMC_recursive.tcl

#
# // Import I/O constraints
#

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
	-io_pdc "${constraint_path}/ICICLE_SDIO.pdc" \
	-io_pdc "${constraint_path}/ICICLE_RPi.pdc" \
	-io_pdc "${constraint_path}/ICICLE_I2C_LOOPBACK.pdc"

#
# // Import floor planning constraints
#

import_files -convert_EDN_to_HDL 0 -fp_pdc "${constraint_path}/CCC.pdc"

#
# // Associate imported constraints with the design flow
#

organize_tool_files \
	-tool {PLACEROUTE} \
	-file "${project_dir}/constraint/io/ICICLE_CAN0.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MIKROBUS.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_SDIO.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_USB.pdc" \
	-file "${project_dir}/constraint/io/ICICLE.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MAC.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_PCIE.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MMUART0.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MMUART1.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MMUART3.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_MMUART2.pdc" \
	-file "${project_dir}/constraint/io/ICICLE_RPi.pdc" \
	-file "${project_dir}/constraint/fp/CCC.pdc" \
	-module {MPFS_ICICLE_KIT_BASE_DESIGN::work} \
	-input_type {constraint}

#
# // Derive timing constraints
#

build_design_hierarchy
derive_constraints_sdc 

#
# // Apply additional design configurations
#

if {[info exists BFM_SIMULATION]} {
	source script_support/simulation/Test_bench.tcl
}

if {[info exists I2C_LOOPBACK]} {
	if {[file isdirectory $local_dir/script_support/components/MSS_I2C_LOOPBACK]} {
		file delete -force $local_dir/script_support/components/MSS_I2C_LOOPBACK
	}
	file mkdir $local_dir/script_support/components/MSS_I2C_LOOPBACK
	create_config $local_dir/script_support/components/MSS_eMMC/ICICLE_MSS.cfg $local_dir/script_support/additional_configurations/I2C_LOOPBACK/ICICLE_MSS_I2C_LOOPBACK.cfg
	update_param $local_dir/script_support/additional_configurations/I2C_LOOPBACK/ICICLE_MSS_I2C_LOOPBACK.cfg "I2C_1 " "FABRIC"
	exec $mss_config_loc -CONFIGURATION_FILE:$local_dir/script_support/additional_configurations/I2C_LOOPBACK/ICICLE_MSS_I2C_LOOPBACK.cfg -OUTPUT_DIR:$local_dir/script_support/components/MSS_I2C_LOOPBACK
	source ./script_support/additional_configurations/I2C_LOOPBACK/I2C_LOOPBACK.tcl
} elseif {[info exists VECTORBLOX]} {
	source ./script_support/additional_configurations/Vectorblox/Vectorblox.tcl
}

#
# // Run the design flow and add eNVM clients if required
#

if {[info exists SYNTHESIZE]} {
	run_tool -name {SYNTHESIZE}
} elseif {[info exists PLACEROUTE]} {
	run_tool -name {PLACEROUTE}
} elseif {[info exists VERIFY_TIMING]} {
	run_tool -name {VERIFYTIMING}
}

if {[info exists HSS_UPDATE]} {
	if !{[file exists "./script_support/hss-bm1-p0.hex"]} {
		if {[catch	{exec wget https://github.com/polarfire-soc/hart-software-services/releases/download/2021.04/hss-bm1-p0.hex -P ./script_support/} issue]} {
		}
	}
	create_eNVM_config "$local_dir/script_support/components/MSS_eMMC/ENVM.cfg" "$local_dir/script_support/hss-bm1-p0.hex"
	run_tool -name {GENERATEPROGRAMMINGDATA}
	configure_envm -cfg_file {script_support/components/MSS_eMMC/ENVM.cfg}
}

if {[info exists GENERATE_BITSTREAM]} {
	run_tool -name {GENERATEPROGRAMMINGDATA} 
}  elseif {[info exists PROGRAM]} {
	run_tool -name {PROGRAMDEVICE}
} elseif {[info exists EXPORT_FPE]} {
	if {[info exists HSS_UPDATE]} {
		if {$EXPORT_FPE == 1} {
			export_fpe_job $project_name $local_dir "ENVM FABRIC_SNVM"
		} else {
			export_fpe_job $project_name $EXPORT_FPE "ENVM FABRIC_SNVM"
		}
	} else {
		if {$EXPORT_FPE == 1} {
			export_fpe_job $project_name $local_dir "FABRIC_SNVM"
		} else {
			export_fpe_job $project_name $EXPORT_FPE "FABRIC_SNVM"
		}
	}
}

save_project 
