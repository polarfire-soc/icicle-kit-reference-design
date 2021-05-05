# Creating SmartDesign Vectorblox_ss
set sd_name {Vectorblox_ss}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FPGA_POR_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {aclk} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {aclk_control} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_awvalid} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_awready} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_wvalid} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_wready} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_bvalid} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_bready} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_arvalid} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_arready} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_rvalid} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {s_axi_rready} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SLAVE0_RREADY} -port_direction {OUT}

sd_create_bus_port -sd_name ${sd_name} -port_name {s_axi_awaddr} -port_direction {IN} -port_range {[11:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {s_axi_wdata} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {s_axi_wstrb} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {s_axi_bresp} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {s_axi_araddr} -port_direction {IN} -port_range {[11:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {s_axi_rdata} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {s_axi_rresp} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWID} -port_direction {OUT} -port_range {[8:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWLOCK} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWREGION} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_WDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_WSTRB} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_BID} -port_direction {IN} -port_range {[8:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARID} -port_direction {OUT} -port_range {[8:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARLOCK} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARREGION} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_RID} -port_direction {IN} -port_range {[8:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_RDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_AWUSER} -port_direction {OUT} -port_range {[0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_WUSER} -port_direction {OUT} -port_range {[0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_BUSER} -port_direction {IN} -port_range {[0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_ARUSER} -port_direction {OUT} -port_range {[0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {SLAVE0_RUSER} -port_direction {IN} -port_range {[0]}

sd_create_bif_port -sd_name ${sd_name} -port_name {S_control} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {slave} -port_bif_mapping {\
"AWADDR:s_axi_awaddr" \
"AWVALID:s_axi_awvalid" \
"AWREADY:s_axi_awready" \
"WDATA:s_axi_wdata" \
"WSTRB:s_axi_wstrb" \
"WVALID:s_axi_wvalid" \
"WREADY:s_axi_wready" \
"BRESP:s_axi_bresp" \
"BVALID:s_axi_bvalid" \
"BREADY:s_axi_bready" \
"ARADDR:s_axi_araddr" \
"ARVALID:s_axi_arvalid" \
"ARREADY:s_axi_arready" \
"RDATA:s_axi_rdata" \
"RRESP:s_axi_rresp" \
"RVALID:s_axi_rvalid" \
"RREADY:s_axi_rready" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {AXIM} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredSlave} -port_bif_mapping {\
"AWID:SLAVE0_AWID" \
"AWADDR:SLAVE0_AWADDR" \
"AWLEN:SLAVE0_AWLEN" \
"AWSIZE:SLAVE0_AWSIZE" \
"AWBURST:SLAVE0_AWBURST" \
"AWLOCK:SLAVE0_AWLOCK" \
"AWCACHE:SLAVE0_AWCACHE" \
"AWPROT:SLAVE0_AWPROT" \
"AWQOS:SLAVE0_AWQOS" \
"AWREGION:SLAVE0_AWREGION" \
"AWVALID:SLAVE0_AWVALID" \
"AWREADY:SLAVE0_AWREADY" \
"WDATA:SLAVE0_WDATA" \
"WSTRB:SLAVE0_WSTRB" \
"WLAST:SLAVE0_WLAST" \
"WVALID:SLAVE0_WVALID" \
"WREADY:SLAVE0_WREADY" \
"BID:SLAVE0_BID" \
"BRESP:SLAVE0_BRESP" \
"BVALID:SLAVE0_BVALID" \
"BREADY:SLAVE0_BREADY" \
"ARID:SLAVE0_ARID" \
"ARADDR:SLAVE0_ARADDR" \
"ARLEN:SLAVE0_ARLEN" \
"ARSIZE:SLAVE0_ARSIZE" \
"ARBURST:SLAVE0_ARBURST" \
"ARLOCK:SLAVE0_ARLOCK" \
"ARCACHE:SLAVE0_ARCACHE" \
"ARPROT:SLAVE0_ARPROT" \
"ARQOS:SLAVE0_ARQOS" \
"ARREGION:SLAVE0_ARREGION" \
"ARVALID:SLAVE0_ARVALID" \
"ARREADY:SLAVE0_ARREADY" \
"RID:SLAVE0_RID" \
"RDATA:SLAVE0_RDATA" \
"RRESP:SLAVE0_RRESP" \
"RLAST:SLAVE0_RLAST" \
"RVALID:SLAVE0_RVALID" \
"RREADY:SLAVE0_RREADY" \
"AWUSER:SLAVE0_AWUSER" \
"WUSER:SLAVE0_WUSER" \
"BUSER:SLAVE0_BUSER" \
"ARUSER:SLAVE0_ARUSER" \
"RUSER:SLAVE0_RUSER" } 

# Add core_vectorblox_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {core_vectorblox_C0} -instance_name {core_vectorblox_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {core_vectorblox_C0_0:output_valid}



# Add fast_reset instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {fast_reset}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {fast_reset:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {fast_reset:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {fast_reset:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {fast_reset:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {fast_reset:PLL_POWERDOWN_B}



# Add memprot_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {memprot} -instance_name {memprot_0}
# Exporting Parameters of instance memprot_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {memprot_0} -params {\
"ADDR_WIDTH:38" \
"BASE_ADDR_HI24:138" \
"BASE_ADDR_LO24:0" \
"DATA_WIDTH:64" \
"END_ADDR_HI24:140" \
"END_ADDR_LO24:0" \
"ID_WIDTH:3" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {memprot_0}



# Add PF_CCC_C1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_C1} -instance_name {PF_CCC_C1_0}



# Add slow_reset instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_PF_C0} -instance_name {slow_reset}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {slow_reset:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {slow_reset:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {slow_reset:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {slow_reset:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {slow_reset:PLL_POWERDOWN_B}



# Add vectorblox_axi_resize_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {vectorblox_axi_resize} -instance_name {vectorblox_axi_resize_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"core_vectorblox_C0_0:clk_2x" "vectorblox_axi_resize_0:ACLK" "aclk" "fast_reset:CLK" "PF_CCC_C1_0:OUT1_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"aclk_control" "slow_reset:CLK" "core_vectorblox_C0_0:clk" "PF_CCC_C1_0:OUT0_FABCLK_0" "vectorblox_axi_resize_0:M_CLK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"slow_reset:EXT_RST_N" "EXT_RST_N" "fast_reset:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"vectorblox_axi_resize_0:ARESETN" "fast_reset:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"slow_reset:FPGA_POR_N" "FPGA_POR_N" "fast_reset:FPGA_POR_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"slow_reset:INIT_DONE" "INIT_DONE" "fast_reset:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"slow_reset:PLL_LOCK" "PF_CCC_C1_0:PLL_LOCK_0" "fast_reset:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_0" "PF_CCC_C1_0:REF_CLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"slow_reset:FABRIC_RESET_N" "core_vectorblox_C0_0:resetn" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"memprot_0:m_axi" "AXIM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"core_vectorblox_C0_0:M_AXI" "vectorblox_axi_resize_0:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"core_vectorblox_C0_0:S_control" "S_control" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"memprot_0:s_axi" "vectorblox_axi_resize_0:AXI4mslave0" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign Vectorblox_ss
generate_component -component_name ${sd_name}
