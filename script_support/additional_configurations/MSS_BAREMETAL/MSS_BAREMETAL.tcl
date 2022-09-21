sd_delete_instances -sd_name {FIC_1_PERIPHERALS} -instance_names {"AXI_ADDRESS_SHIM_0"} 
sd_connect_pins -sd_name {FIC_1_PERIPHERALS} -pin_names {"PCIE:AXI_1_MASTER" "PCIE_INITIATOR:AXI4mmaster0"} 
save_smartdesign -sd_name {FIC_1_PERIPHERALS}
generate_component -component_name {FIC_1_PERIPHERALS}
