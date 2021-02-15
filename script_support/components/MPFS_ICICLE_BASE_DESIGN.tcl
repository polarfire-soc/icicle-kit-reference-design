
# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DIR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_NXT} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_STP} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA0} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA1} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA2} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA3} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA4} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA5} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA6} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA7} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_SS0} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_CLK} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DI} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDIO} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDC} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_RESETN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE4} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE5} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE6} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE7} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_SRESET} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_OSCEN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_PLLMODE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_CMODE3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_3_TXD_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_TXD_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_TXD_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_2_TXD_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_3_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_2_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ODT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW1} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW2} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW3} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW4} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_ULPI_RESET} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SCL} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SDA} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_N} -port_direction {IN}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_RXBUS_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_TX_EBL_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_TXBUS_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_RXBUS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_TX_EBL_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_TXBUS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_EN_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO5} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO6} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO13} -port_direction {OUT} 
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO19} -port_direction {OUT} 

sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]}

# Add MSS_PLL_LOCKS instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {MSS_PLL_LOCKS}

# Add MSS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {ICICLE_MSS} -instance_name {MSS}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[63:3]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:MSS_INT_F2M[63:3]} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MMUART_0_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MMUART_1_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_SOF_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_SYNC_FRAME_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_DELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_PDELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_PDELAY_RESP_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_SOF_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_SYNC_FRAME_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_DELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_PDELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_0_TSU_PDELAY_RESP_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_SOF_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_SYNC_FRAME_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_DELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_PDELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_PDELAY_RESP_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_SOF_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_SYNC_FRAME_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_DELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_PDELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MAC_1_TSU_PDELAY_RESP_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MSS_INT_M2F}
sd_mark_pins_unused -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {MSS:FIC_2_AXI4_SLAVE} 

# Add SW1_OR_GPIO_2_28 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {SW1_OR_GPIO_2_28}
sd_invert_pins -sd_name ${sd_name} -pin_names {SW1_OR_GPIO_2_28:A}

# Add SW2_OR_GPIO_2_26 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {SW2_OR_GPIO_2_26}
sd_invert_pins -sd_name ${sd_name} -pin_names {SW2_OR_GPIO_2_26:A}

# Add SW3_OR_GPIO_2_27 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {SW3_OR_GPIO_2_27}
sd_invert_pins -sd_name ${sd_name} -pin_names {SW3_OR_GPIO_2_27:A}

# Add PCIE_MASTER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_MASTER} -instance_name {PCIE_MASTER}

# Add FIC0_MASTER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC0_MASTER} -instance_name {FIC0_MASTER}

# Add MSS_LSRAM instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MSS_LSRAM} -instance_name {MSS_LSRAM}

# Add PCIE_LSRAM instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_LSRAM} -instance_name {PCIE_LSRAM}

# Add PCIE_BASE_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_BASE} -instance_name {PCIE_BASE_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE_BASE_0:PCIE_1_INTERRUPT} -value {GND}

# Add COREAXI4DMACONTROLLER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DMA_CONTROLLER} -instance_name {DMA_CONTROLLER}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DMA_CONTROLLER:STRTDMAOP} -value {GND}

# Add DMA_MASTER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DMA_MASTER} -instance_name {DMA_MASTER}

# Add FIC3_MASTER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC3_MASTER} -instance_name {FIC3_MASTER}

# Add SDIO_register instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {sdio_register} -instance_name {}

# Add COREGPIO instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GPIO} -instance_name {COREGPIO_C0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREGPIO_C0:GPIO_IN} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {"[0:0]"} 

# Add CLOCKS_AND_RESETS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLOCKS_AND_RESETS} -instance_name {CLOCKS_AND_RESETS}

# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:Y" "CLOCKS_AND_RESETS:MSS_PLL_LOCKS"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "MSS:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "MSS:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "MSS:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RESETN_CLK_125MHz" "PCIE_MASTER:ARESETN" "FIC0_MASTER:ARESETN" "USB_ULPI_RESET" "MSS_LSRAM:ARESETN" "PCIE_LSRAM:ARESETN" "DMA_CONTROLLER:RESETN" "DMA_MASTER:ARESETN"  "VSC_8662_RESETN" "PCIE_BASE_0:AXI_CLK_125MHz_RESETN"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:RESETN_CLK_62_5MHz" "sdio_register_0:presetn" "COREGPIO_C0:PRESETN" "PCIE_BASE_0:APB_CLK_62_5MHz_RESETN"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:PCIe_CLK_125MHz" "PCIE_BASE_0:PCIe_CLK_125MHz"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:PCIe_REFERENCE_CLK" "PCIE_BASE_0:PCIe_REFERENCE_CLK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "MSS:CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SCL" "MSS:I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SDA" "MSS:I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED0" "MSS:GPIO_2_M2F_16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED1" "MSS:GPIO_2_M2F_17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED2" "MSS:GPIO_2_M2F_18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED3" "MSS:GPIO_2_M2F_19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_1_MDC" "MSS:MAC_1_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_1_MDIO" "MSS:MAC_1_MDIO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_RXD_F2M" "MSS:MMUART_0_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_TXD_M2F" "MSS:MMUART_0_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_RXD_F2M" "MSS:MMUART_1_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_TXD_M2F" "MSS:MMUART_1_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_2_RXD_F2M" "MSS:MMUART_2_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_2_TXD_M2F" "MSS:MMUART_2_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_3_RXD_F2M" "MSS:MMUART_3_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_3_TXD_M2F" "MSS:MMUART_3_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW2_OR_GPIO_2_26:B" "MSS:GPIO_2_M2F_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW3_OR_GPIO_2_27:B" "MSS:GPIO_2_M2F_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW1_OR_GPIO_2_28:B" "MSS:GPIO_2_M2F_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:D" "MSS:FIC_1_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:C"  "MSS:FIC_2_DLL_LOCK_M2F"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:B" "MSS:FIC_3_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:A" "MSS:FIC_0_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT" "MSS:ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW1_OR_GPIO_2_28:Y" "MSS:MSS_INT_F2M[0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:PCIE_ROOTPORT_INTERRUPT" "MSS:MSS_INT_F2M[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW2_OR_GPIO_2_26:Y" "MSS:GPIO_2_F2M_30" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW3_OR_GPIO_2_27:Y" "MSS:GPIO_2_F2M_31" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW1" "SW1_OR_GPIO_2_28:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW2" "SW2_OR_GPIO_2_26:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW3" "SW3_OR_GPIO_2_27:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:PCIE_1_PERST_N" "PCIE_1_PERST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD0_N" "PCIE_BASE_0:PCIESS_LANE_RXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD0_P" "PCIE_BASE_0:PCIESS_LANE_RXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD1_N" "PCIE_BASE_0:PCIESS_LANE_RXD1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD1_P" "PCIE_BASE_0:PCIESS_LANE_RXD1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD2_N" "PCIE_BASE_0:PCIESS_LANE_RXD2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD2_P" "PCIE_BASE_0:PCIESS_LANE_RXD2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD3_N" "PCIE_BASE_0:PCIESS_LANE_RXD3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD3_P" "PCIE_BASE_0:PCIESS_LANE_RXD3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD0_N" "PCIE_BASE_0:PCIESS_LANE_TXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD0_P" "PCIE_BASE_0:PCIESS_LANE_TXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD1_N" "PCIE_BASE_0:PCIESS_LANE_TXD1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD1_P" "PCIE_BASE_0:PCIESS_LANE_TXD1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD2_N" "PCIE_BASE_0:PCIESS_LANE_TXD2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD2_P" "PCIE_BASE_0:PCIESS_LANE_TXD2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD3_N" "PCIE_BASE_0:PCIESS_LANE_TXD3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD3_P" "PCIE_BASE_0:PCIESS_LANE_TXD3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_125MHz" "MSS:FIC_0_ACLK" "MSS:FIC_1_ACLK" "PCIE_MASTER:ACLK" "FIC0_MASTER:ACLK" "MSS:FIC_2_ACLK" "MSS_LSRAM:ACLK" "PCIE_LSRAM:ACLK" "DMA_CONTROLLER:CLOCK" "DMA_MASTER:ACLK" "PCIE_BASE_0:AXI_CLK_125MHz"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_62_5MHz" "MSS:FIC_3_PCLK" "sdio_register_0:pclk" "COREGPIO_C0:PCLK" "PCIE_BASE_0:APB_CLK_62_5MHz"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_N" "CLOCKS_AND_RESETS:REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_P" "CLOCKS_AND_RESETS:REF_CLK_PAD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK" "MSS:REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK_N" "MSS:REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESET_N" "MSS:RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_N" "MSS:SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_P" "MSS:SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_N" "MSS:SGMII_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_P" "MSS:SGMII_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_N" "MSS:SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_P" "MSS:SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_N" "MSS:SGMII_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_P" "MSS:SGMII_TX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_1_CLK" "MSS:SPI_1_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_1_DI" "MSS:SPI_1_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_1_DO" "MSS:SPI_1_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_1_SS0" "MSS:SPI_1_SS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_CLK" "MSS:USB_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_DATA0" "MSS:USB_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_DATA1" "MSS:USB_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_DATA2" "MSS:USB_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_DATA3" "MSS:USB_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_DATA4" "MSS:USB_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_DATA5" "MSS:USB_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_DATA6" "MSS:USB_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_DATA7" "MSS:USB_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_DIR" "MSS:USB_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_NXT" "MSS:USB_NXT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_STP" "MSS:USB_STP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_0_RXBUS_F2M" "MSS:CAN_0_RXBUS_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_0_TX_EBL_M2F" "MSS:CAN_0_TX_EBL_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_0_TXBUS_M2F" "MSS:CAN_0_TXBUS_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_1_RXBUS" "MSS:CAN_1_RXBUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_1_TX_EBL_N" "MSS:CAN_1_TX_EBL_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_1_TXBUS" "MSS:CAN_1_TXBUS" }
sd_invert_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_0_TX_EBL_M2F"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"SDIO_SW_SEL0" "SDIO_SW_SEL1" "sdio_register_0:SDIO_control" }
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SDIO_SW_EN_N} -value {GND}

sd_connect_pins -sd_name ${sd_name} -pin_names {"DMA_CONTROLLER:INTERRUPT" "MSS:MSS_INT_F2M[2]" }
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE3} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE4} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE5} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE6} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE7} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_OSCEN} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_PLLMODE} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_SRESET} -value {VCC}

sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_RESET_N_F2M" "SW4"}

sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"COREGPIO_C0:GPIO_OUT[0]" "RPi_GPIO5"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"COREGPIO_C0:GPIO_OUT[1]" "RPi_GPIO6"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"COREGPIO_C0:GPIO_OUT[2]" "RPi_GPIO13"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"COREGPIO_C0:GPIO_OUT[3]" "RPi_GPIO19"} 


# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CA" "MSS:CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "MSS:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "MSS:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "MSS:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "MSS:DQS_N" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:FIC_0_AXI4_MASTER" "FIC0_MASTER:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_MASTER:AXI4mslave0" "MSS:FIC_0_AXI4_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_MASTER:AXI4mslave1" "PCIE_LSRAM:AXI4_Slave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:AXI_1_SLAVE" "FIC0_MASTER:AXI4mslave0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_MASTER:AXI4mmaster0" "PCIE_BASE_0:AXI_1_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_MASTER:AXI4mslave1" "MSS_LSRAM:AXI4_Slave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_MASTER:AXI4mslave2" "DMA_CONTROLLER:AXI4SlaveCtrl_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DMA_MASTER:AXI4mmaster0" "DMA_CONTROLLER:AXI4MasterDMA_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DMA_MASTER:AXI4mslave0" "MSS:FIC_1_AXI4_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLKS_TO_XCVR" "PCIE_BASE_0:CLKS_FROM_TXPLL_TO_PCIE_1" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:FIC_3_APB_MASTER" "FIC3_MASTER:APB3mmaster"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_MASTER:APBmslave3" "PCIE_BASE_0:APBS_SLAVE"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_MASTER:APBmslave2" "COREGPIO_C0:APB_bif"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_MASTER:APBmslave15" "sdio_register_0:APBslave"}

# Fabric reset
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_RESET_N_M2F" "CLOCKS_AND_RESETS:EXT_RST_N"}

#Invert pins
sd_invert_pins -sd_name ${sd_name} -pin_names {USB_ULPI_RESET}
