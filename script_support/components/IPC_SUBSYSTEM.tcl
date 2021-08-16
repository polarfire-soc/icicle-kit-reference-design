# Creating SmartDesign IPC_SUBSYSTEM
set sd_name {IPC_SUBSYSTEM}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {presetn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {pclk} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSS_E51_TO_U54_1_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSS_U54_1_TO_E51_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSS_U54_2_TO_E51_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSS_E51_TO_U54_2_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSS_U54_3_TO_E51_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSS_E51_TO_U54_3_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSS_U54_4_TO_E51_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {HSS_E51_TO_U54_4_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CONTEXT_1_TO_CONTEXT_0_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CONTEXT_0_TO_CONTEXT_1_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PENABLE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PSLVERR} -port_direction {OUT}

sd_create_bus_port -sd_name ${sd_name} -port_name {PADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PRDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PWDATA} -port_direction {IN} -port_range {[31:0]}

sd_create_bif_port -sd_name ${sd_name} -port_name {APB3mmaster} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"PADDR:PADDR" \
"PSELx:PSEL" \
"PENABLE:PENABLE" \
"PWRITE:PWRITE" \
"PRDATA:PRDATA" \
"PWDATA:PWDATA" \
"PREADY:PREADY" \
"PSLVERR:PSLVERR" } 

# Add CONTEXT_0_TO_CONTEXT_1 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {AMP_MAILBOX} -instance_name {CONTEXT_0_TO_CONTEXT_1}
# Exporting Parameters of instance CONTEXT_0_TO_CONTEXT_1
sd_configure_core_instance -sd_name ${sd_name} -instance_name {CONTEXT_0_TO_CONTEXT_1} -params {\
"A_HART_ID:0" \
"B_HART_ID:1" \
"MESSAGE_DEPTH:2" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {CONTEXT_0_TO_CONTEXT_1}
sd_update_instance -sd_name ${sd_name} -instance_name {CONTEXT_0_TO_CONTEXT_1}



# Add IPC_APB_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {IPC_APB} -instance_name {IPC_APB_0}



# Add HSS_E51_TO_U54_1 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {AMP_MAILBOX} -instance_name {HSS_E51_TO_U54_1}
# Exporting Parameters of instance HSS_E51_TO_U54_1
sd_configure_core_instance -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_1} -params {\
"A_HART_ID:0" \
"B_HART_ID:1" \
"MESSAGE_DEPTH:4" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_1}
sd_update_instance -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_1}



# Add HSS_E51_TO_U54_2 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {AMP_MAILBOX} -instance_name {HSS_E51_TO_U54_2}
# Exporting Parameters of instance HSS_E51_TO_U54_2
sd_configure_core_instance -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_2} -params {\
"A_HART_ID:0" \
"B_HART_ID:2" \
"MESSAGE_DEPTH:4" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_2}
sd_update_instance -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_2}



# Add HSS_E51_TO_U54_3 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {AMP_MAILBOX} -instance_name {HSS_E51_TO_U54_3}
# Exporting Parameters of instance HSS_E51_TO_U54_3
sd_configure_core_instance -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_3} -params {\
"A_HART_ID:0" \
"B_HART_ID:3" \
"MESSAGE_DEPTH:4" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_3}
sd_update_instance -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_3}



# Add HSS_E51_TO_U54_4 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {AMP_MAILBOX} -instance_name {HSS_E51_TO_U54_4}
# Exporting Parameters of instance HSS_E51_TO_U54_4
sd_configure_core_instance -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_4} -params {\
"A_HART_ID:0" \
"B_HART_ID:4" \
"MESSAGE_DEPTH:4" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_4}
sd_update_instance -sd_name ${sd_name} -instance_name {HSS_E51_TO_U54_4}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CONTEXT_0_TO_CONTEXT_1_IRQ" "CONTEXT_0_TO_CONTEXT_1:b_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CONTEXT_1_TO_CONTEXT_0_IRQ" "CONTEXT_0_TO_CONTEXT_1:a_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_1_IRQ" "HSS_E51_TO_U54_1:b_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_2_IRQ" "HSS_E51_TO_U54_2:b_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_3_IRQ" "HSS_E51_TO_U54_3:b_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_4_IRQ" "HSS_E51_TO_U54_4:b_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_U54_1_TO_E51_IRQ" "HSS_E51_TO_U54_1:a_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_U54_2_TO_E51_IRQ" "HSS_E51_TO_U54_2:a_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_U54_3_TO_E51_IRQ" "HSS_E51_TO_U54_3:a_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_U54_4_TO_E51_IRQ" "HSS_E51_TO_U54_4:a_msg_present_irq" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"pclk" "HSS_E51_TO_U54_4:pclk" "HSS_E51_TO_U54_3:pclk" "HSS_E51_TO_U54_2:pclk" "CONTEXT_0_TO_CONTEXT_1:pclk" "HSS_E51_TO_U54_1:pclk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"presetn" "HSS_E51_TO_U54_4:presetn" "HSS_E51_TO_U54_3:presetn" "HSS_E51_TO_U54_2:presetn" "CONTEXT_0_TO_CONTEXT_1:presetn" "HSS_E51_TO_U54_1:presetn" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"IPC_APB_0:APB3mmaster" "APB3mmaster" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_1:A_SIDE" "IPC_APB_0:APBmslave0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_2:A_SIDE" "IPC_APB_0:APBmslave1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_3:A_SIDE" "IPC_APB_0:APBmslave2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IPC_APB_0:APBmslave3" "HSS_E51_TO_U54_4:A_SIDE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_1:B_SIDE" "IPC_APB_0:APBmslave4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_2:B_SIDE" "IPC_APB_0:APBmslave5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"HSS_E51_TO_U54_3:B_SIDE" "IPC_APB_0:APBmslave6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IPC_APB_0:APBmslave7" "HSS_E51_TO_U54_4:B_SIDE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CONTEXT_0_TO_CONTEXT_1:A_SIDE" "IPC_APB_0:APBmslave8" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CONTEXT_0_TO_CONTEXT_1:B_SIDE" "IPC_APB_0:APBmslave9" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign IPC_SUBSYSTEM
generate_component -component_name ${sd_name}
