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

proc create_eNVM_config {config client} {

	set envm_config [open $config w]	
	
	puts $envm_config "set_plain_text_client \\"
	puts $envm_config "-client_name {BOOT_MODE_1_ENVM_CLIENT}  \\"
	puts $envm_config "-number_of_bytes 117248 \\"
	puts $envm_config "-content_type {MEMORY_FILE}  \\"
	puts $envm_config "-content_file_format {Intel-Hex}  \\"
	puts $envm_config "-content_file {$client}  \\"
	puts $envm_config "-mem_file_base_address {0x20220000}  \\"
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
