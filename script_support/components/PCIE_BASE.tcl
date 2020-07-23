# Creating SmartDesign PCIE_BASE
set sd_name {PCIE_BASE}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_INIT_DONE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {clk_125mhz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {clk_50mhz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DEVICE_INIT_DONE} -port_direction {IN}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {clk_160mhz} -port_direction {IN}
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

sd_create_bif_port -sd_name ${sd_name} -port_name {APBS} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
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

# Add PF_CLK_DIV_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CLK_DIV_C0} -instance_name {PF_CLK_DIV_C0_0}



# Add PF_DRI_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_DRI_C0} -instance_name {PF_DRI_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_DRI_C0_0:PSTRB} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_DRI_C0_0:PINTERRUPT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_DRI_C0_0:PTIMEOUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_DRI_C0_0:BUSERROR}



# Add PF_NGMUX_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_NGMUX_C0} -instance_name {PF_NGMUX_C0_0}



# Add PF_PCIE_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_PCIE_C0} -instance_name {PF_PCIE_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_M_RDERR} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_S_WDERR} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_LTSSM}
# sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_INTERRUPT_OUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_M_WDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_S_RDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_L2_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_HOT_RST_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_DLUP_EXIT}



# Add PF_TX_PLL_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_TX_PLL_C0} -instance_name {PF_TX_PLL_C0_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_TX_PLL_C0_0:PLL_LOCK}



# Add PF_XCVR_REF_CLK_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_XCVR_REF_CLK_C0} -instance_name {PF_XCVR_REF_CLK_C0_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DRI_C0_0:PCLK" "clk_50mhz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:AXI_CLK" "clk_125mhz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CLK_DIV_C0_0:CLK_IN" "clk_160mhz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DRI_C0_0:PRESETN" "PF_PCIE_C0_0:AXI_CLK_STABLE" "DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_1_PERST_N" "PF_PCIE_C0_0:PCIE_1_PERST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_NGMUX_C0_0:SEL" "PCIE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_RXD0_N" "PCIESS_LANE_RXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_RXD0_P" "PCIESS_LANE_RXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_RXD1_N" "PCIESS_LANE_RXD1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_RXD1_P" "PCIESS_LANE_RXD1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_RXD2_N" "PCIESS_LANE_RXD2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_RXD2_P" "PCIESS_LANE_RXD2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_RXD3_N" "PCIESS_LANE_RXD3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_RXD3_P" "PCIESS_LANE_RXD3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_TXD0_N" "PCIESS_LANE_TXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_TXD0_P" "PCIESS_LANE_TXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_TXD1_N" "PCIESS_LANE_TXD1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_TXD1_P" "PCIESS_LANE_TXD1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_TXD2_N" "PCIESS_LANE_TXD2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_TXD2_P" "PCIESS_LANE_TXD2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_TXD3_N" "PCIESS_LANE_TXD3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE_TXD3_P" "PCIESS_LANE_TXD3_P" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIE_1_INTERRUPT_OUT" "PCIE_ROOTPORT_INTERRUPT" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CLK_DIV_C0_0:CLK_OUT" "PF_NGMUX_C0_0:CLK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_NGMUX_C0_0:CLK_OUT" "PF_PCIE_C0_0:PCIE_1_TL_CLK_125MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_NGMUX_C0_0:CLK1" "PF_TX_PLL_C0_0:CLK_125" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE0_CDR_REF_CLK_0" "PF_PCIE_C0_0:PCIESS_LANE2_CDR_REF_CLK_0" "PF_PCIE_C0_0:PCIESS_LANE3_CDR_REF_CLK_0" "PF_PCIE_C0_0:PCIESS_LANE1_CDR_REF_CLK_0" "PF_XCVR_REF_CLK_C0_0:REF_CLK" "PF_TX_PLL_C0_0:REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_N" "PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_P" "PF_XCVR_REF_CLK_C0_0:REF_CLK_PAD_P" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_1_INTERRUPT" "PF_PCIE_C0_0:PCIE_1_INTERRUPT" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APBS" "PF_DRI_C0_0:APBS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_1_MASTER" "PF_PCIE_C0_0:AXI_1_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_1_SLAVE" "PF_PCIE_C0_0:AXI_1_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DRI_C0_0:Q0_LANE0_DRI" "PF_PCIE_C0_0:PCIESS_LANE0_DRI_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DRI_C0_0:Q0_LANE1_DRI" "PF_PCIE_C0_0:PCIESS_LANE1_DRI_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DRI_C0_0:Q0_LANE2_DRI" "PF_PCIE_C0_0:PCIESS_LANE2_DRI_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_DRI_C0_0:Q0_LANE3_DRI" "PF_PCIE_C0_0:PCIESS_LANE3_DRI_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_TX_PLL_C0_0:CLKS_TO_XCVR" "PF_PCIE_C0_0:CLKS_FROM_TXPLL_TO_PCIE_1" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign PCIE_BASE
generate_component -component_name ${sd_name}
