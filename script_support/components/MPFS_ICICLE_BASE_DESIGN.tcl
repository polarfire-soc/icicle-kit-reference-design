
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {PB0} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PB1} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PB2} -port_direction {IN}
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

sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]}

# Add AND4_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND4_0}

# Add CORERESET_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {CORERESET_0} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_0:PLL_POWERDOWN_B}

# Add CORERESET_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {CORERESET_1} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_1:PLL_POWERDOWN_B}

# Add INIT_MONITOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {INIT_MONITOR} -instance_name {INIT_MONITOR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:USRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:SRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:BANK_9_CALIB_STATUS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:XCVR_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:USRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:USRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:USRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:SRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:SRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:SRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR:AUTOCALIB_DONE}

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
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:MSS_RESET_N_F2M} -value {VCC}

# Add OR2_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_0}
sd_invert_pins -sd_name ${sd_name} -pin_names {OR2_0:A}

# Add OR2_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_1}
sd_invert_pins -sd_name ${sd_name} -pin_names {OR2_1:A}

# Add OR2_2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_2}
sd_invert_pins -sd_name ${sd_name} -pin_names {OR2_2:A}

# Add PCIE_AXI_0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_AXI_0} -instance_name {PCIE_AXI_0_0}

# Add PCIE_AXI_1_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_AXI_1} -instance_name {PCIE_AXI_1_0}

# Add LSRAM_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {LSRAM} -instance_name {LSRAM_0}

# Add LSRAM_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {LSRAM} -instance_name {LSRAM_1}

# Add PCIE_BASE_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_BASE} -instance_name {PCIE_BASE_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE_BASE_0:PCIE_1_INTERRUPT} -value {GND}

# Add COREAXI4DMACONTROLLER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DMACONTROLLER} -instance_name {COREAXI4DMACONTROLLER_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREAXI4DMACONTROLLER_0:STRTDMAOP} -value {GND}

# Add AXI4INTERCONNECT instance
sd_instantiate_component -sd_name ${sd_name} -component_name {AXI4INTERCONNECT} -instance_name {COREAXI4INTERCONNECT_0}

# Add COREAPB3 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {APB3} -instance_name {COREABP3_C0}

# Add COREGPIO instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GPIO} -instance_name {COREGPIO_C0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREGPIO_C0:GPIO_IN} -value {GND}

# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:Y" "CORERESET_0:PLL_LOCK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:FIC_3_DLL_LOCK_M2F" "CORERESET_1:PLL_LOCK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "MSS:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "MSS:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "MSS:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_0:FABRIC_RESET_N" "PCIE_AXI_0_0:ARESETN" "PCIE_AXI_1_0:ARESETN" "PCIE_BASE_0:PRESETN" "USB_ULPI_RESET" "LSRAM_0:ARESETN" "LSRAM_1:ARESETN" "COREAXI4DMACONTROLLER_0:RESETN" "COREAXI4INTERCONNECT_0:ARESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_1:FABRIC_RESET_N" "COREGPIO_C0:PRESETN"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "MSS:CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SCL" "MSS:I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SDA" "MSS:I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR:PCIE_INIT_DONE" "PCIE_BASE_0:PCIE_INIT_DONE" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_1:B" "MSS:GPIO_2_M2F_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_2:B" "MSS:GPIO_2_M2F_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_0:B" "MSS:GPIO_2_M2F_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:D" "MSS:FIC_1_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:C" "PCIE_BASE_0:PCIE_PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:B" "MSS:FIC_3_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_0:A" "MSS:FIC_0_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT" "MSS:ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_0:Y" "MSS:MSS_INT_F2M[0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:PCIE_ROOTPORT_INTERRUPT" "MSS:MSS_INT_F2M[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_1:Y" "MSS:GPIO_2_F2M_30" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_2:Y" "MSS:GPIO_2_F2M_31" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PB0" "OR2_0:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PB1" "OR2_1:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PB2" "OR2_2:A" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:AXI_CLK_125MHZ" "MSS:FIC_0_ACLK" "MSS:FIC_1_ACLK" "PCIE_AXI_0_0:ACLK" "PCIE_AXI_1_0:ACLK" "LSRAM_0:ACLK" "LSRAM_1:ACLK" "COREAXI4DMACONTROLLER_0:CLOCK" "COREAXI4INTERCONNECT_0:ACLK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:APB_CLK_62_5MHZ" "MSS:FIC_3_PCLK" "COREGPIO_C0:PCLK" "CORERESET_1:CLK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_N" "PCIE_BASE_0:REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_P" "PCIE_BASE_0:REF_CLK_PAD_P" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"SDIO_SW_SEL0" "SDIO_SW_SEL1" "MSS:GPIO_2_M2F_0" }
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SDIO_SW_EN_N} -value {GND}

sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4DMACONTROLLER_0:INTERRUPT" "MSS:MSS_INT_F2M[2]" }
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE3} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE4} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE5} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE6} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE7} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_OSCEN} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_PLLMODE} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_SRESET} -value {VCC}
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_RESETN" "CORERESET_0:FABRIC_RESET_N" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CA" "MSS:CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "MSS:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "MSS:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "MSS:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "MSS:DQS_N" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:FIC_0_AXI4_MASTER" "PCIE_AXI_1_0:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREABP3_C0:APB3mmaster" "MSS:FIC_3_APB_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_AXI_0_0:AXI4mslave0" "MSS:FIC_0_AXI4_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_AXI_0_0:AXI4mslave1" "LSRAM_1:AXI4_Slave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:AXI_1_SLAVE" "PCIE_AXI_1_0:AXI4mslave0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_AXI_0_0:AXI4mmaster0" "PCIE_BASE_0:AXI_1_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_AXI_1_0:AXI4mslave1" "LSRAM_0:AXI4_Slave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_AXI_1_0:AXI4mslave2" "COREAXI4DMACONTROLLER_0:AXI4SlaveCtrl_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_0:AXI4mmaster0" "COREAXI4DMACONTROLLER_0:AXI4MasterDMA_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREAXI4INTERCONNECT_0:AXI4mslave0" "MSS:FIC_1_AXI4_SLAVE" }

# Connect APB3 to PCIe base
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {PCIE_BASE_0:APBS} -pin_names {PCIE_BASE_0:PADDR} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {PCIE_BASE_0:APBS} -pin_names {PCIE_BASE_0:PSEL} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {PCIE_BASE_0:APBS} -pin_names {PCIE_BASE_0:PENABLE} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {PCIE_BASE_0:APBS} -pin_names {PCIE_BASE_0:PWRITE} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {PCIE_BASE_0:APBS} -pin_names {PCIE_BASE_0:PRDATA} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {PCIE_BASE_0:APBS} -pin_names {PCIE_BASE_0:PWDATA} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {PCIE_BASE_0:APBS} -pin_names {PCIE_BASE_0:PREADY} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {PCIE_BASE_0:APBS} -pin_names {PCIE_BASE_0:PSLVERR} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {COREABP3_C0:APBmslave3} -pin_names {COREABP3_C0:PADDRS} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {COREABP3_C0:APBmslave3} -pin_names {COREABP3_C0:PSELS3} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {COREABP3_C0:APBmslave3} -pin_names {COREABP3_C0:PENABLES} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {COREABP3_C0:APBmslave3} -pin_names {COREABP3_C0:PWRITES} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {COREABP3_C0:APBmslave3} -pin_names {COREABP3_C0:PRDATAS3} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {COREABP3_C0:APBmslave3} -pin_names {COREABP3_C0:PWDATAS} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {COREABP3_C0:APBmslave3} -pin_names {COREABP3_C0:PREADYS3} 
sd_show_bif_pins -sd_name ${sd_name} -bif_pin_name {COREABP3_C0:APBmslave3} -pin_names {COREABP3_C0:PSLVERRS3} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:PRDATA" "COREABP3_C0:PRDATAS3"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:PREADY" "COREABP3_C0:PREADYS3"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:PSLVERR" "COREABP3_C0:PSLVERRS3"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREABP3_C0:PADDRS} -pin_slices {"[31:29]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREABP3_C0:PADDRS} -pin_slices {"[28:0]"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREABP3_C0:PADDRS[28:0]" "PCIE_BASE_0:PADDR"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREABP3_C0:PWDATAS" "PCIE_BASE_0:PWDATA"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREABP3_C0:PSELS3" "PCIE_BASE_0:PSEL"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREABP3_C0:PENABLES" "PCIE_BASE_0:PENABLE"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREABP3_C0:PWRITES" "PCIE_BASE_0:PWRITE"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"COREABP3_C0:APBmslave2" "COREGPIO_C0:APB_bif" }


# Fabric reset
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_RESET_N_M2F" "CORERESET_0:EXT_RST_N" "CORERESET_1:EXT_RST_N"} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_0:BANK_y_VDDI_STATUS} -value {VCC} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_0:BANK_x_VDDI_STATUS} -value {VCC} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_0:SS_BUSY} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_0:FF_US_RESTORE} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_1:BANK_y_VDDI_STATUS} -value {VCC} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_1:BANK_x_VDDI_STATUS} -value {VCC} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_1:SS_BUSY} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_1:FF_US_RESTORE} -value {GND} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR:FABRIC_POR_N" "CORERESET_0:FPGA_POR_N" "CORERESET_1:FPGA_POR_N"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR:DEVICE_INIT_DONE" "CORERESET_0:INIT_DONE" "CORERESET_1:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:AXI_CLK_125MHZ" "CORERESET_0:CLK"}

#Invert pins
sd_invert_pins -sd_name ${sd_name} -pin_names {USB_ULPI_RESET}