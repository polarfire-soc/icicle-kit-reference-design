# NOTES:
# - The "soc_sw_compile_accel" target will generate and compile not just 
#   the software driver, but also the hardware (Verilog + TCL) as the hardware 
#   is an explicit dependency in SmartHLS makefile
# - The file open is just to pipe stdout as SmartHLS compilation advances
puts "TCL_BEGIN: [info script]"
# 
# Save the current working because we're moving to the HLS module directory.
#
set cwd [pwd]
set hlsModuleDir [file normalize $SMARTHLS]
cd $hlsModuleDir

#
# Check that SmartHLS is in the path, otherwise assume a default
#
set OS [lindex $tcl_platform(os) 0]
catch {set shls_path [exec which shls]}
set bash_path bash
if { ![info exists shls_path] } {
    if { $OS == "Linux" } {
        set base_path [string cat {/usr/local/Microchip/Libero_SoC_v2022.2/SmartHLS-} [string range [get_libero_release] 1 end] {/}]
        set ::env(PATH) [string cat ";" $base_path {SmartHLS/bin}]
    } else {
        set base_path [string cat {C:/Microchip/Libero_SoC_v2022.2/SmartHLS-} [string range [get_libero_release] 1 end] {/}]
        set bash_path [string cat $base_path {Cygwin64/bin/bash}]
        set ::env(PATH) [string cat ";" $base_path {Cygwin64/bin/}]
    }
    set shls_path [string cat $base_path {SmartHLS/bin/shls}]        
}

if { [file exists "$shls_path"] == 0 } {
    puts stderr "Error: Cannot find SmartHLS (shls). "
    puts stderr "Default path ($shls_path) also did not work."
    puts stderr "Please update script: [info script]."
    exit 1
}

puts "shls_path: $shls_path"
puts "bash_path: $bash_path"
set ::env(LEGUP_ROOT_DIR) [file dirname $shls_path]/..
puts "LEGUP_ROOT_DIR: $::env(LEGUP_ROOT_DIR)"

#
# Call SmartHLS.
#
set fid [open "| $bash_path $shls_path -a soc_sw_compile_accel" r]
while {[gets $fid line] != -1} { puts $line }
close $fid
#
# Integrate into SmartDesign.
#
source $hlsModuleDir/hls_output/scripts/shls_integrate_accels.tcl

#
# Restore the working directory
#
cd $cwd

puts "TCL_END: [info script]"