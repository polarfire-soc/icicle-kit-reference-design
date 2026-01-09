# Exporting core mss_reset_counter to TCL
# Exporting Create HDL core command for module mss_reset_counter
create_hdl_core -file {hdl/MSS_reset_counter.v} -module {MSS_reset_counter} -library {work} -package {}
# Exporting BIF information of  HDL core command for module mss_reset_counter
hdl_core_add_bif -hdl_core_name {MSS_reset_counter} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {APBslave} -signal_map {\
"PADDR:paddr" \
"PENABLE:penable" \
"PWRITE:pwrite" \
"PRDATA:prdata" \
"PWDATA:pwdata" \
"PREADY:pready" \
"PSLVERR:pslverr" \
"PSELx:psel" }