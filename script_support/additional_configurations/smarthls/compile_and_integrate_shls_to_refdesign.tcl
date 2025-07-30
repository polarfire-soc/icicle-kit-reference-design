puts "TCL_BEGIN: [info script]"

set OS [lindex $tcl_platform(os) 0]
set liberoRelease [string trim [string range [get_libero_release] 0 end] "*v" ]

# 
# Save the current working because we're moving to the HLS module directory.
#
set cwd [pwd]
set hlsModuleDir [file normalize $SMARTHLS]
cd $hlsModuleDir

# 
# Detect where SmartHLS and bash interpreter are located
#
set pathList [getHlsPaths]
set bash_path [lindex $pathList 0]
set shls_path [lindex $pathList 1]

set ::env(SHLS_ROOT_DIR) [file dirname $shls_path]/..

#
# Call SmartHLS.
#
# - The "soc_sw_compile_accel" target will generate and compile not just 
#   the software driver, but also the hardware (Verilog + TCL) as the hardware 
#   is an explicit dependency in SmartHLS makefile
# - The file open is just to pipe stdout as SmartHLS compilation advances
set command "$shls_path -a soc_sw_compile_accel"
set fid [open "| $command" "r"]
# Print the result during execution
while {[gets $fid line] != -1} {
    puts $line
}
close $fid

#
# Integrate SmartHLS hardware modules into SmartDesign
#
source $hlsModuleDir/hls_output/scripts/shls_integrate_accels.tcl

#
# Restore the working directory
#
cd $cwd

puts "TCL_END: [info script]"