# Creating SmartDesign PCIE_BASE
set sd_name {PCIE_BASE}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PENABLE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PSLVERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD0_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD0_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD1_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD1_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD2_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD2_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD3_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD3_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD0_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD0_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD1_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD1_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD2_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD2_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD3_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD3_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_1_PERST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_ROOTPORT_INTERRUPT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI_CLK_125MHZ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_CLK_62_5MHZ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_PLL_LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}

sd_create_bus_port -sd_name ${sd_name} -port_name {PADDR} -port_direction {IN} -port_range {[28:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PRDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PWDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIE_1_INTERRUPT} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_AWID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_AWADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_AWSIZE} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_WDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_WSTRB} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_BID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_ARID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_ARADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_ARSIZE} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_RID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_RDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_M_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_AWID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_AWADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_AWSIZE} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_BID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_ARID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_ARADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_ARSIZE} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_RID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PCIESS_AXI_1_S_RRESP} -port_direction {OUT} -port_range {[1:0]}

sd_create_bif_port -sd_name ${sd_name} -port_name {APBS_SLAVE} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {slave} -port_bif_mapping {\
"PADDR:PADDR" \
"PSELx:PSEL" \
"PENABLE:PENABLE" \
"PWRITE:PWRITE" \
"PRDATA:PRDATA" \
"PWDATA:PWDATA" \
"PREADY:PREADY" \
"PSLVERR:PSLVERR" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {AXI_1_MASTER} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:PCIESS_AXI_1_M_AWID" \
"AWADDR:PCIESS_AXI_1_M_AWADDR" \
"AWLEN:PCIESS_AXI_1_M_AWLEN" \
"AWSIZE:PCIESS_AXI_1_M_AWSIZE" \
"AWBURST:PCIESS_AXI_1_M_AWBURST" \
"AWVALID:PCIESS_AXI_1_M_AWVALID" \
"AWREADY:PCIESS_AXI_1_M_AWREADY" \
"WDATA:PCIESS_AXI_1_M_WDATA" \
"WSTRB:PCIESS_AXI_1_M_WSTRB" \
"WLAST:PCIESS_AXI_1_M_WLAST" \
"WVALID:PCIESS_AXI_1_M_WVALID" \
"WREADY:PCIESS_AXI_1_M_WREADY" \
"BID:PCIESS_AXI_1_M_BID" \
"BRESP:PCIESS_AXI_1_M_BRESP" \
"BVALID:PCIESS_AXI_1_M_BVALID" \
"BREADY:PCIESS_AXI_1_M_BREADY" \
"ARID:PCIESS_AXI_1_M_ARID" \
"ARADDR:PCIESS_AXI_1_M_ARADDR" \
"ARLEN:PCIESS_AXI_1_M_ARLEN" \
"ARSIZE:PCIESS_AXI_1_M_ARSIZE" \
"ARBURST:PCIESS_AXI_1_M_ARBURST" \
"ARVALID:PCIESS_AXI_1_M_ARVALID" \
"ARREADY:PCIESS_AXI_1_M_ARREADY" \
"RID:PCIESS_AXI_1_M_RID" \
"RDATA:PCIESS_AXI_1_M_RDATA" \
"RRESP:PCIESS_AXI_1_M_RRESP" \
"RLAST:PCIESS_AXI_1_M_RLAST" \
"RVALID:PCIESS_AXI_1_M_RVALID" \
"RREADY:PCIESS_AXI_1_M_RREADY" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {AXI_1_SLAVE} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {slave} -port_bif_mapping {\
"AWID:PCIESS_AXI_1_S_AWID" \
"AWADDR:PCIESS_AXI_1_S_AWADDR" \
"AWLEN:PCIESS_AXI_1_S_AWLEN" \
"AWSIZE:PCIESS_AXI_1_S_AWSIZE" \
"AWBURST:PCIESS_AXI_1_S_AWBURST" \
"AWVALID:PCIESS_AXI_1_S_AWVALID" \
"AWREADY:PCIESS_AXI_1_S_AWREADY" \
"WDATA:PCIESS_AXI_1_S_WDATA" \
"WSTRB:PCIESS_AXI_1_S_WSTRB" \
"WLAST:PCIESS_AXI_1_S_WLAST" \
"WVALID:PCIESS_AXI_1_S_WVALID" \
"WREADY:PCIESS_AXI_1_S_WREADY" \
"BID:PCIESS_AXI_1_S_BID" \
"BRESP:PCIESS_AXI_1_S_BRESP" \
"BVALID:PCIESS_AXI_1_S_BVALID" \
"BREADY:PCIESS_AXI_1_S_BREADY" \
"ARID:PCIESS_AXI_1_S_ARID" \
"ARADDR:PCIESS_AXI_1_S_ARADDR" \
"ARLEN:PCIESS_AXI_1_S_ARLEN" \
"ARSIZE:PCIESS_AXI_1_S_ARSIZE" \
"ARBURST:PCIESS_AXI_1_S_ARBURST" \
"ARVALID:PCIESS_AXI_1_S_ARVALID" \
"ARREADY:PCIESS_AXI_1_S_ARREADY" \
"RID:PCIESS_AXI_1_S_RID" \
"RDATA:PCIESS_AXI_1_S_RDATA" \
"RRESP:PCIESS_AXI_1_S_RRESP" \
"RLAST:PCIESS_AXI_1_S_RLAST" \
"RVALID:PCIESS_AXI_1_S_RVALID" \
"RREADY:PCIESS_AXI_1_S_RREADY" } 

# Add INIT_DONE_AND_PLL_LOCK instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {INIT_DONE_AND_PLL_LOCK}



# Add CLK_160MHz_to_CLK_80MHz instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLK_DIV} -instance_name {CLK_160MHz_to_CLK_80MHz}



# Add CLK_125_MHz_to_CLK_62_5_MHz instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLK_DIV} -instance_name {CLK_125_MHz_to_CLK_62_5_MHz}



# Add PF_DRI_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {RECONFIGURATION_INTERFACE} -instance_name {RECONFIGURATION_INTERFACE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE:PINTERRUPT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE:PTIMEOUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE:BUSERROR}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE:PSTRB} -value {VCC}



# Add GLITCHLESS_MUX instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GLITCHLESS_MUX} -instance_name {GLITCHLESS_MUX}



# Add RC oscillator
sd_instantiate_component -sd_name ${sd_name} -component_name {OSCILLATOR_160MHz} -instance_name {OSCILLATOR_160MHz}



# Add PF_PCIE_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_PCIE_C0} -instance_name {PF_PCIE_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_M_RDERR} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_S_WDERR} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_M_WDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_S_RDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_L2_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_HOT_RST_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_DLUP_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_LTSSM}



# Add TRANSMIT_PLL instance
sd_instantiate_component -sd_name ${sd_name} -component_name {TRANSMIT_PLL} -instance_name {TRANSMIT_PLL}



# Add PCIE_REF_CLK instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_REF_CLK} -instance_name {PCIE_REF_CLK}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:SEL" "INIT_DONE_AND_PLL_LOCK:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_CLK_62_5MHZ" "CLK_125_MHz_to_CLK_62_5_MHz:CLK_OUT" "RECONFIGURATION_INTERFACE:PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:CLK1" "AXI_CLK_125MHZ" "PF_PCIE_C0_0:AXI_CLK" "TRANSMIT_PLL:CLK_125" "CLK_125_MHz_to_CLK_62_5_MHz:CLK_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_1_PERST_N" "PF_PCIE_C0_0:PCIE_1_PERST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_INIT_DONE" "INIT_DONE_AND_PLL_LOCK:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_PLL_LOCK" "PF_PCIE_C0_0:AXI_CLK_STABLE" "TRANSMIT_PLL:PLL_LOCK" "INIT_DONE_AND_PLL_LOCK:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_ROOTPORT_INTERRUPT" "PF_PCIE_C0_0:PCIE_1_INTERRUPT_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD0_N" "PF_PCIE_C0_0:PCIESS_LANE_RXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD0_P" "PF_PCIE_C0_0:PCIESS_LANE_RXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD1_N" "PF_PCIE_C0_0:PCIESS_LANE_RXD1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD1_P" "PF_PCIE_C0_0:PCIESS_LANE_RXD1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD2_N" "PF_PCIE_C0_0:PCIESS_LANE_RXD2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD2_P" "PF_PCIE_C0_0:PCIESS_LANE_RXD2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD3_N" "PF_PCIE_C0_0:PCIESS_LANE_RXD3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD3_P" "PF_PCIE_C0_0:PCIESS_LANE_RXD3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD0_N" "PF_PCIE_C0_0:PCIESS_LANE_TXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD0_P" "PF_PCIE_C0_0:PCIESS_LANE_TXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD1_N" "PF_PCIE_C0_0:PCIESS_LANE_TXD1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD1_P" "PF_PCIE_C0_0:PCIESS_LANE_TXD1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD2_N" "PF_PCIE_C0_0:PCIESS_LANE_TXD2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD2_P" "PF_PCIE_C0_0:PCIESS_LANE_TXD2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD3_N" "PF_PCIE_C0_0:PCIESS_LANE_TXD3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD3_P" "PF_PCIE_C0_0:PCIESS_LANE_TXD3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:CLK0" "CLK_160MHz_to_CLK_80MHz:CLK_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:CLK_OUT" "PF_PCIE_C0_0:PCIE_1_TL_CLK_125MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OSCILLATOR_160MHz:RCOSC_160MHZ_CLK_DIV" "CLK_160MHz_to_CLK_80MHz:CLK_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE0_CDR_REF_CLK_0" "PF_PCIE_C0_0:PCIESS_LANE2_CDR_REF_CLK_0" "PF_PCIE_C0_0:PCIESS_LANE3_CDR_REF_CLK_0" "PF_PCIE_C0_0:PCIESS_LANE1_CDR_REF_CLK_0" "TRANSMIT_PLL:REF_CLK" "PCIE_REF_CLK:REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PRESETN" "RECONFIGURATION_INTERFACE:PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_N" "PCIE_REF_CLK:REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_P" "PCIE_REF_CLK:REF_CLK_PAD_P" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_1_INTERRUPT" "PF_PCIE_C0_0:PCIE_1_INTERRUPT" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APBS_SLAVE" "RECONFIGURATION_INTERFACE:APBS_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_1_MASTER" "PF_PCIE_C0_0:AXI_1_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_1_SLAVE" "PF_PCIE_C0_0:AXI_1_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RECONFIGURATION_INTERFACE:Q0_LANE0_DRI" "PF_PCIE_C0_0:PCIESS_LANE0_DRI_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RECONFIGURATION_INTERFACE:Q0_LANE1_DRI" "PF_PCIE_C0_0:PCIESS_LANE1_DRI_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RECONFIGURATION_INTERFACE:Q0_LANE2_DRI" "PF_PCIE_C0_0:PCIESS_LANE2_DRI_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RECONFIGURATION_INTERFACE:Q0_LANE3_DRI" "PF_PCIE_C0_0:PCIESS_LANE3_DRI_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:CLKS_FROM_TXPLL_TO_PCIE_1" "TRANSMIT_PLL:CLKS_TO_XCVR" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign PCIE_BASE
generate_component -component_name ${sd_name}
