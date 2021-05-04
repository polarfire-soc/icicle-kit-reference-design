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
