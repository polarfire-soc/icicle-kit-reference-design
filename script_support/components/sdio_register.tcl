# Exporting core sdio_register to TCL
# Exporting Create HDL core command for module sdio_register
create_hdl_core -file {hdl/SDIO_register.v} -module {sdio_register} -library {work} -package {}
# Exporting BIF information of  HDL core command for module sdio_register
hdl_core_add_bif -hdl_core_name {sdio_register} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {APBslave} -signal_map {\
"PADDR:paddr" \
"PENABLE:penable" \
"PWRITE:pwrite" \
"PRDATA:prdata" \
"PWDATA:pwdata" \
"PREADY:pready" \
"PSLVERR:pslverr" \
"PSELx:psel" }
