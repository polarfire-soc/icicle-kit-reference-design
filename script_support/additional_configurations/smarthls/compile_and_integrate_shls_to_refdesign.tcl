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
# Find out where SmartHLS is installed in the system, considering the OS as well. 
# In decreasing order of priority, the options are:
#   1) Custom (user-defined) path. Users can specify the path to SmartHLS as an 
#       argument to the script. For example, on Windows:
#       script_args:shls_path:C:/fpga_tools/SmartHLS-2022.2.1/SmartHLS/bin/shls
#       This is typical for SmartHLS incremental releases.
#   2) Otherwise, see if the `shls` command is in the PATH environment variable.
#   3) If not, then check under the Libero installation path
#
if {![info exists shls_path]} {catch {set shls_path [exec which shls]}}

if {[info exists shls_path]} {
    set base_path [string trimright $shls_path SmartHLS/bin/shls]
} else {
    if { $OS == "Linux" } {
        set base_path [string cat [string trimright $install_loc Libero]/SmartHLS-$liberoRelease {/}]
        set ::env(PATH) [string cat $::env(PATH) ":" $base_path {SmartHLS/bin}]
        set shls_path [string cat $base_path {SmartHLS/bin/shls}]
    } else {
        set base_path [string cat [string trimright $install_loc Designer]SmartHLS-$liberoRelease {/}]
        set base_path [file normalize $base_path]
        set drive [string range $install_loc 0 0]
        set shls_path "$base_path/SmartHLS/bin/shls"
        set ::env(PATH) [string cat $::env(PATH) ";" $base_path {SmartHLS/bin}]
    }
}
puts "base_path: $base_path"
puts "shls_path: $shls_path"

if {![file exists "$shls_path"]} {
    puts stderr "Error: Cannot find SmartHLS (shls)."
    puts stderr "Please specify a full path to SmartHLS (shls file) using \"shls_path\" parameter in the \"script_args\"."
    puts stderr "For example: script_args:shls_path:C:/Microchip/SmartHLS-2022.2.1/SmartHLS/bin/shls"
    exit 1
}

# By default on Linux bash_path is just "bash", but on Windows bash_path points to
# the cygwin version
catch {set bash_path [exec which bash]}
if { $OS != "Linux" } { set bash_path [string cat $base_path {/Cygwin64/bin/bash.exe} ]}
puts "bash_path: $bash_path"
if { ![file exists "$bash_path"] } {
    puts "bash NOT found!"
    exit 1
} 

set ::env(LEGUP_ROOT_DIR) [file dirname $shls_path]/..

#
# Call SmartHLS.
#
# - The "soc_sw_compile_accel" target will generate and compile not just 
#   the software driver, but also the hardware (Verilog + TCL) as the hardware 
#   is an explicit dependency in SmartHLS makefile
# - The file open is just to pipe stdout as SmartHLS compilation advances
set fid [open "| $bash_path --login -c \"cd $hlsModuleDir ; $shls_path -a soc_sw_compile_accel\"" r]
while {[gets $fid line] != -1} { puts $line }
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