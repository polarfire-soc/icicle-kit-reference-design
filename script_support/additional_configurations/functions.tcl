proc getHlsPaths { } {
    set install_loc [defvar_get -name ACTEL_SW_DIR]
    set OS [lindex $::tcl_platform(os) 0]

    # Resolve SmartHLS executable across different layouts (including mounted layouts)
    set found_shls ""

    # 1) Accept shls_path argument when provided.
    if {[info exists shls_path] && [string length [string trim $shls_path]] > 0} {
        set candidate [file normalize [string trim $shls_path]]
        if {[file exists $candidate]} {
            set found_shls $candidate
        }
    }

    # 2) Try shls in PATH if no shls_path provided
    if {$found_shls eq ""} {
        if {![catch {set which_shls [exec which shls]}]} {
            set candidate [file normalize [string trim $which_shls]]
            if {[file exists $candidate]} {
                set found_shls $candidate
            }
        }
    }

    # 3) Probe install-relative candidates for Linux and Windows layouts.
    if {$found_shls eq ""} {
        set roots [list [file normalize $install_loc]]
        set current [file normalize $install_loc]
        for {set i 0} {$i < 4} {incr i} {
            set current [file dirname $current]
            lappend roots $current
        }

        set candidates [list]
        foreach root $roots {
            if {$OS == "Linux"} {
                lappend candidates [file join $root SmartHLS SmartHLS bin shls]
                lappend candidates [file join $root SmartHLS bin shls]
            } else {
                lappend candidates [file join $root SmartHLS SmartHLS bin shls.bat]
                lappend candidates [file join $root SmartHLS bin shls.bat]
            }
        }

        foreach c $candidates {
            set normalized [file normalize $c]
            if {[file exists $normalized]} {
                set found_shls $normalized
                break
            }
        }
    }

    if {$found_shls eq ""} {
        puts stderr "Error: Cannot find SmartHLS (shls)."
        puts stderr "install_loc: $install_loc"
        puts stderr "Please specify a full path to SmartHLS (shls file) using \"shls_path\" parameter in the \"script_args\"."
        puts stderr "For example: script_args:"shls_path:C:/Microchip/SmartHLS-20XX.Y.Z/SmartHLS/bin/shls""
        exit 1
    }

    set shls_path $found_shls
    set base_path [file normalize [file join [file dirname $shls_path] ..]]

    if {$OS == "Linux"} {
        set ::env(PATH) [string cat $::env(PATH) ":" [file join $base_path bin]]
    } else {
        set ::env(PATH) [string cat $::env(PATH) ";" [file join $base_path bin]]
    }

    puts "base_path: $base_path"
    puts "shls_path: $shls_path"

    #return the list of paths
    set pathList [list $base_path $shls_path]
}

proc create_config {current_config updated_config} {
    set def_config [open $current_config]
    set def_config_data [read $def_config]
    set data [split $def_config_data "\n"]
    close $def_config
    
    set new_config [open $updated_config w]
    foreach line $data {
        puts $new_config "$line"
    }
    puts $new_config ""
    close $new_config
}

proc update_param {config param_to_update value_to_set} {
    set config_file [open $config]
    set config_file_data [read $config_file]
    set config_file_lines [split $config_file_data "\n"]
    close $config_file
    set config_file [open $config w]
    foreach line $config_file_lines {
        if { [regexp $param_to_update $line] } {
            puts $config_file "$param_to_update$value_to_set"
            puts $line
        } else {
            puts $config_file "$line"
        }
    }
    close $config_file
}

proc update_snvm_to_spi_ram_cfg { ramcfg } {
    set fd [open $ramcfg r]
    set newFilename "[file rootname $ramcfg].new.cfg"
    puts "update_snvm_to_spi_ram_cfg: Creating $newFilename"
    set newfd [open $newFilename w]
    set use_spi 0
    while {[gets $fd line] >= 0} {
        if {[string first "-storage_type" $line] != -1} {
            set prev_line $line
            set prev_line_spi [string map {"SNVM" "SPI"} $line]
        } elseif {[string first "-content_type" $line] != -1} {
            if {[string first "NO_CONTENT" $line] != -1} {
                puts $newfd $prev_line
                puts $newfd $line
            } else {
                puts $newfd $prev_line_spi
                puts $newfd $line
                set use_spi 1
            }
        } else {
            puts $newfd $line
        }
    }
    close $fd
    close $newfd
    configure_ram -cfg_file $newFilename
    if {$use_spi} {
        puts "NOTE: Using SPI instead of SNVM for RAM"
    }
    return $use_spi
}

proc create_eNVM_config {config client} {
    set envm_config [open $config w]
    
    puts $envm_config "set_plain_text_client \\"
    puts $envm_config "-client_name {BOOT_MODE_1_ENVM_CLIENT} \\"
    puts $envm_config "-number_of_bytes 117248 \\"
    puts $envm_config "-content_type {MEMORY_FILE} \\"
    puts $envm_config "-content_file_format {Intel-Hex} \\"
    puts $envm_config "-content_file {$client} \\"
    puts $envm_config "-mem_file_base_address {0x20220000} \\"
    puts $envm_config "-start_page 0 \\"
    puts $envm_config "-use_for_simulation 0 \\"
    puts $envm_config "-reprogram 1 \\"
    puts $envm_config "-use_as_rom 0 \\"
    puts $envm_config "-fabric_access_read 1 \\"
    puts $envm_config "-fabric_access_write 0 \\"
    puts $envm_config "-mss_access_read 1 \\"
    puts $envm_config "-mss_access_write 0"

    close $envm_config
}

proc export_fpe_job {name directory components use_design use_spi} {
    export_prog_job \
        -job_file_name $name \
        -export_dir $directory \
        -bitstream_file_type {TRUSTED_FACILITY} \
        -bitstream_file_components $components \
        -zeroization_likenew_action 0 \
        -zeroization_unrecoverable_action 0 \
        -program_design $use_design \
        -program_spi_flash $use_spi \
        -include_plaintext_passkey 0 \
        -design_bitstream_format {PPD} \
        -prog_optional_procedures {} \
        -skip_recommended_procedures {} \
        -sanitize_snvm 0 \
        -sanitize_envm 0
}

# Export a SPI or other format bitstream file
proc proc_export_bitstream_file {name directory format} {
    if {$format eq "SPI"} {
        set tf_components {FABRIC SNVM}
    } else {
        set tf_components {FABRIC SNVM ENVM}
    }
    export_bitstream_file \
        -file_name $name \
        -export_dir $directory \
        -format $format \
        -for_ihp 0 \
        -limit_SVF_file_size 0 \
        -limit_SVF_file_by_max_filesize_or_vectors {} \
        -svf_max_filesize {} \
        -svf_max_vectors {} \
        -master_file 0 \
        -master_file_components {} \
        -encrypted_uek1_file 0 \
        -encrypted_uek1_file_components {} \
        -encrypted_uek2_file 0 \
        -encrypted_uek2_file_components {} \
        -trusted_facility_file 1 \
        -trusted_facility_file_components $tf_components \
        -zeroization_likenew_action 0 \
        -zeroization_unrecoverable_action 0 \
        -master_backlevel_bypass 0 \
        -uek1_backlevel_bypass 0 \
        -uek2_backlevel_bypass 0 \
        -master_include_plaintext_passkey 0 \
        -uek1_include_plaintext_passkey 0 \
        -uek2_include_plaintext_passkey 0 \
        -sanitize_snvm 0 \
        -sanitize_envm 0 \
        -trusted_facility_keep_fabric_operational 0 \
        -trusted_facility_skip_startup_seq 0 \
        -trusted_facility_mss_keep_alive 0 \
        -uek1_keep_fabric_operational 0 \
        -uek1_skip_startup_seq 0 \
        -uek1_mss_keep_alive 0 \
        -uek1_high_water_mark {} \
        -uek2_keep_fabric_operational 0 \
        -uek2_skip_startup_seq 0 \
        -uek2_mss_keep_alive 0 \
        -uek2_high_water_mark {}
}

# Generate a SPI flash config pointing at a previously exported .spi file
proc create_spi_cfg {config_path spi_file start_address client_size name type} {
    set fh [open $config_path w]
    puts $fh "set_auto_update_mode {1}"
    puts $fh "set_spi_flash_memory_size {134217728}"
    puts $fh "set_client \\"
    puts $fh "    -client_name    {$name} \\"
    puts $fh "    -client_type    {$type} \\"
    puts $fh "    -content_type   {MEMORY_FILE} \\"
    puts $fh "    -content_file   {$spi_file} \\"
    puts $fh "    -start_address  {$start_address} \\"
    puts $fh "    -client_size    {$client_size} \\"
    puts $fh "    -program        {1}"
    close $fh
    puts "Created $type SPI flash config: $config_path"
}

proc safe_source {script} {
    if {![file exists $script]} {
        error "Script file does not exist: $script"
    }
    try {
        uplevel #0 [list source $script]
    } on error {errMsg errOpts} {
        set errorInfo [dict get $errOpts -errorinfo]
        set errorCode [dict get $errOpts -errorcode]

        set fileInfo "File and line number not available"
        set callerFileInfo "Caller file and line number not available"
        set foundPrimaryInfo 0
        set foundCallerInfo 0
        set depth 0

        foreach line [split $errorInfo "\n"] {
            if {[regexp {^\s*\(file "(.*)" line (\d+)\)} $line -> fileName lineNumber]} {
                incr depth
                if {!$foundPrimaryInfo} {
                    set fileInfo "File: $fileName\nLine: $lineNumber\nDepth: $depth"
                    set foundPrimaryInfo 1
                } elseif {!$foundCallerInfo} {
                    set callerFileInfo "Caller File: $fileName\nCaller Line: $lineNumber\nDepth: $depth"
                    set foundCallerInfo 1
                }
            }
        }
        set errorLog [list \
            "                                                  " \
            "                                                  " \
            "============= SCRIPT EXECUTION ERROR =============" \
            "Script:        $script" \
            "Error Message: $errMsg" \
            $fileInfo \
            $callerFileInfo \
            "Stack Trace:" \
            $errorInfo \
            "================================================="]

        puts stderr [join $errorLog "\n"]
        return -options $errOpts -code error $errMsg
    }
}

proc generate_temp_file {keep} {
    set chan [file tempfile filename]
    if {!$keep} {
        file delete $filename
        close $chan
        return $filename
    } else {
        return $chan
    }
}