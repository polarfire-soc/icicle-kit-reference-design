#Importing and Linking all the HDL source files used in the design
create_links \
         -convert_EDN_to_HDL 0 \
         -library {work} \
         -hdl_source {script_support/HDL/SDIO_register.v} 
build_design_hierarchy 
create_hdl_core -file "$local_dir/script_support/HDL/SDIO_register.v" -module {sdio_register} -library {work} -package {} 
hdl_core_add_bif -hdl_core_name {sdio_register} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {APBslave} -signal_map {} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PADDR} -core_signal_name {paddr} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PENABLE} -core_signal_name {penable} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PWRITE} -core_signal_name {pwrite} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PRDATA} -core_signal_name {prdata} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PWDATA} -core_signal_name {pwdata} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PREADY} -core_signal_name {pready} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PSLVERR} -core_signal_name {pslverr} 
hdl_core_assign_bif_signal -hdl_core_name {sdio_register} -bif_name {APBslave} -bif_signal_name {PSELx} -core_signal_name {psel} 