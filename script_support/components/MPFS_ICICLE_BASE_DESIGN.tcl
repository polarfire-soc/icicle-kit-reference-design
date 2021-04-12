# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_CLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DIR} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_NXT} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_STP} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA7} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDIO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDC} -port_direction {OUT} -port_is_pad {1}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ODT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW1} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW2} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW3} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SW4} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_ULPI_RESET} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_PAD_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD0_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD0_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD0_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD0_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_1_PERST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_RXBUS_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_TX_EBL_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_TXBUS_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_RXBUS} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_TX_EBL_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_TXBUS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_EN_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO5} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO6} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO13} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO19} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_CLK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C0_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C0_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_TXD_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_CLK_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DO_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_SS1_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DI_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD1_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD1_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD2_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD2_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD3_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD3_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD1_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD1_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD2_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD2_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD3_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD3_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO12} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO16} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO20} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO21} -port_direction {OUT}

sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]} -port_is_pad {1}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE4} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE5} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE6} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE7} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_SRESET} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_OSCEN} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_PLLMODE} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_8662_CMODE3} -value {GND}
sd_invert_pins -sd_name ${sd_name} -pin_names {USB_ULPI_RESET}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SDIO_SW_EN_N} -value {GND}
# Add CLOCKS_AND_RESETS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLOCKS_AND_RESETS} -instance_name {CLOCKS_AND_RESETS}



# Add COREGPIO_C0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GPIO} -instance_name {COREGPIO_C0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {[3]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREGPIO_C0:GPIO_IN} -value {GND}



# Add DMA_CONTROLLER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DMA_CONTROLLER} -instance_name {DMA_CONTROLLER}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {DMA_CONTROLLER:STRTDMAOP} -value {GND}



# Add DMA_MASTER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DMA_MASTER} -instance_name {DMA_MASTER}



# Add FIC0_MASTER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC0_MASTER} -instance_name {FIC0_MASTER}



# Add FIC3_MASTER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC3_MASTER} -instance_name {FIC3_MASTER}



# Add I2C0_SCL_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C0_SCL_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C0_SCL_BIBUF:D} -value {GND}



# Add I2C0_SDA_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C0_SDA_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C0_SDA_BIBUF:D} -value {GND}



# Add MSS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {ICICLE_MSS} -instance_name {MSS}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[63:3]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:MSS_INT_F2M[63:3]} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:SPI_0_SS_F2M} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:SPI_0_CLK_F2M} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MMUART_0_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MMUART_1_TXD_OE_M2F}
sd_invert_pins -sd_name ${sd_name} -pin_names {MSS:CAN_0_TX_EBL_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MSS_INT_M2F}
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
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:FIC_2_AXI4_SLAVE}



# Add MSS_LSRAM instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MSS_LSRAM} -instance_name {MSS_LSRAM}



# Add MSS_PLL_LOCKS instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {MSS_PLL_LOCKS}



# Add PCIE_LSRAM instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_LSRAM} -instance_name {PCIE_LSRAM}



# Add PCIE_MASTER instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_MASTER} -instance_name {PCIE_MASTER}



# Add PF_PCIE_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_PCIE_C0} -instance_name {PF_PCIE_C0_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_INTERRUPT} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_M_RDERR} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_S_WDERR} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_LTSSM}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_M_WDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_S_RDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_L2_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_HOT_RST_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_PCIE_C0_0:PCIE_1_DLUP_EXIT}



# Add QSPI_DATA2_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {QSPI_DATA2_BIBUF}



# Add QSPI_DATA3_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {QSPI_DATA3_BIBUF}



# Add RECONFIGURATION_INTERFACE_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {RECONFIGURATION_INTERFACE} -instance_name {RECONFIGURATION_INTERFACE_0}



# Add sdio_register_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {sdio_register} -instance_name {sdio_register_0}



# Add SW1_OR_GPIO_2_28 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {SW1_OR_GPIO_2_28}
sd_invert_pins -sd_name ${sd_name} -pin_names {SW1_OR_GPIO_2_28:A}



# Add SW2_OR_GPIO_2_26 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {SW2_OR_GPIO_2_26}
sd_invert_pins -sd_name ${sd_name} -pin_names {SW2_OR_GPIO_2_26:A}



# Add SW3_OR_GPIO_2_27 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {SW3_OR_GPIO_2_27}
sd_invert_pins -sd_name ${sd_name} -pin_names {SW3_OR_GPIO_2_27:A}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_100MHz" "RPi_GPIO12" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_75MHz" "RPi_GPIO16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_50MHz" "RPi_GPIO20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLK_25MHz" "RPi_GPIO21" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_0_RXBUS_F2M" "CAN_0_RXBUS_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_0_TX_EBL_M2F" "CAN_0_TX_EBL_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_0_TXBUS_M2F" "CAN_0_TXBUS_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_1_RXBUS" "CAN_1_RXBUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_1_TX_EBL_N" "CAN_1_TX_EBL_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_1_TXBUS" "CAN_1_TXBUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "MSS:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "MSS:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "MSS:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RECONFIGURATION_INTERFACE_0:PCLK" "MSS:FIC_3_PCLK" "COREGPIO_C0:PCLK" "sdio_register_0:pclk" "CLOCKS_AND_RESETS:CLK_62_5MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:FIC_2_ACLK" "MSS:FIC_1_ACLK" "PCIE_MASTER:ACLK" "MSS:FIC_0_ACLK" "DMA_MASTER:ACLK" "PCIE_LSRAM:ACLK" "MSS_LSRAM:ACLK" "FIC0_MASTER:ACLK" "DMA_CONTROLLER:CLOCK" "PF_PCIE_C0_0:AXI_CLK" "CLOCKS_AND_RESETS:CLK_125MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIE_1_TL_CLK_125MHz" "CLOCKS_AND_RESETS:PCIe_CLK_125MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE1_CDR_REF_CLK_0" "PF_PCIE_C0_0:PCIESS_LANE2_CDR_REF_CLK_0" "PF_PCIE_C0_0:PCIESS_LANE3_CDR_REF_CLK_0" "PF_PCIE_C0_0:PCIESS_LANE0_CDR_REF_CLK_0" "CLOCKS_AND_RESETS:PCIe_REFERENCE_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RECONFIGURATION_INTERFACE_0:PRESETN" "COREGPIO_C0:PRESETN" "sdio_register_0:presetn" "CLOCKS_AND_RESETS:RESETN_CLK_62_5MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "MSS:CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_INT_F2M[2]" "DMA_CONTROLLER:INTERRUPT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SCL_BIBUF:PAD" "I2C0_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_0_SCL_F2M" "I2C0_SCL_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SDA_BIBUF:PAD" "I2C0_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_0_SDA_F2M" "I2C0_SDA_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_1_SCL" "I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_1_SDA" "I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_16" "LED0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_17" "LED1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_18" "LED2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_19" "LED3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MAC_1_MDC" "MAC_1_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MAC_1_MDIO" "MAC_1_MDIO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_0_RXD_F2M" "MMUART_0_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_0_TXD_M2F" "MMUART_0_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_1_RXD_F2M" "MMUART_1_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_1_TXD_M2F" "MMUART_1_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_2_RXD_F2M" "MMUART_2_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_2_TXD_M2F" "MMUART_2_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_3_RXD_F2M" "MMUART_3_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_3_TXD_M2F" "MMUART_3_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_4_RXD_F2M" "MMUART_4_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MMUART_4_TXD_M2F" "MMUART_4_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:A" "MSS:FIC_0_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:D" "MSS:FIC_1_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:C" "MSS:FIC_2_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:B" "MSS:FIC_3_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_26" "SW2_OR_GPIO_2_26:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_27" "SW3_OR_GPIO_2_27:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_28" "SW1_OR_GPIO_2_28:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_0_SCL_OE_M2F" "I2C0_SCL_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_0_SDA_OE_M2F" "I2C0_SDA_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_RESET_N_M2F" "CLOCKS_AND_RESETS:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:Y" "CLOCKS_AND_RESETS:MSS_PLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA2_M2F" "QSPI_DATA2_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA2_OE_M2F" "QSPI_DATA2_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA3_M2F" "QSPI_DATA3_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA3_OE_M2F" "QSPI_DATA3_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT" "MSS:ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIE_1_PERST_N" "PCIE_1_PERST_N" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIE_1_INTERRUPT_OUT" "MSS:MSS_INT_F2M[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_CLK" "QSPI_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_SS0" "QSPI_CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA0" "QSPI_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA1" "QSPI_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA2_BIBUF:PAD" "QSPI_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA2_F2M" "QSPI_DATA2_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA3_BIBUF:PAD" "QSPI_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA3_F2M" "QSPI_DATA3_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_N" "CLOCKS_AND_RESETS:REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_P" "CLOCKS_AND_RESETS:REF_CLK_PAD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK" "MSS:REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK_N" "MSS:REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESET_N" "MSS:RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RPi_GPIO5" "COREGPIO_C0:GPIO_OUT[0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RPi_GPIO6" "COREGPIO_C0:GPIO_OUT[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RPi_GPIO13" "COREGPIO_C0:GPIO_OUT[2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RPi_GPIO19" "COREGPIO_C0:GPIO_OUT[3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SDIO_SW_SEL0" "SDIO_SW_SEL1" "sdio_register_0:SDIO_control" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_N" "MSS:SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_P" "MSS:SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_N" "MSS:SGMII_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_P" "MSS:SGMII_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_N" "MSS:SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_P" "MSS:SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_N" "MSS:SGMII_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_P" "MSS:SGMII_TX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_0_CLK_M2F" "SPI_0_CLK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_0_DI_F2M" "SPI_0_DI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_0_DO_M2F" "SPI_0_DO_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_0_SS1_M2F" "SPI_0_SS1_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW1_OR_GPIO_2_28:A" "SW1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_INT_F2M[0]" "SW1_OR_GPIO_2_28:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW2_OR_GPIO_2_26:A" "SW2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_F2M_30" "SW2_OR_GPIO_2_26:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW3_OR_GPIO_2_27:A" "SW3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_F2M_31" "SW3_OR_GPIO_2_27:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW4" "MSS:MSS_RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_CLK" "USB_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA0" "USB_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA1" "USB_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA2" "USB_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA3" "USB_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA4" "USB_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA5" "USB_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA6" "USB_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DATA7" "USB_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_DIR" "USB_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_NXT" "USB_NXT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:USB_STP" "USB_STP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_MASTER:ARESETN" "VSC_8662_RESETN" "USB_ULPI_RESET" "DMA_MASTER:ARESETN" "PCIE_LSRAM:ARESETN" "MSS_LSRAM:ARESETN" "FIC0_MASTER:ARESETN" "DMA_CONTROLLER:RESETN" "PF_PCIE_C0_0:AXI_CLK_STABLE" "CLOCKS_AND_RESETS:RESETN_CLK_125MHz" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CA" "CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "MSS:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "MSS:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "MSS:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "MSS:DQS_N" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:CLKS_FROM_TXPLL_TO_PCIE_1" "CLOCKS_AND_RESETS:CLKS_TO_XCVR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DMA_CONTROLLER:AXI4MasterDMA_IF" "DMA_MASTER:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DMA_MASTER:AXI4mslave0" "MSS:FIC_1_AXI4_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:AXI_1_SLAVE" "FIC0_MASTER:AXI4mslave0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_LSRAM:AXI4_Slave" "FIC0_MASTER:AXI4mslave1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_MASTER:AXI4mslave2" "DMA_CONTROLLER:AXI4SlaveCtrl_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_MASTER:APBmslave2" "COREGPIO_C0:APB_bif" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_MASTER:APBmslave15" "sdio_register_0:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_MASTER:APBmslave16" "RECONFIGURATION_INTERFACE_0:APBS_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_MASTER:AXI4mmaster0" "MSS:FIC_0_AXI4_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_MASTER:APB3mmaster" "MSS:FIC_3_APB_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_MASTER:AXI4mslave0" "MSS:FIC_0_AXI4_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_MASTER:AXI4mslave1" "PCIE_LSRAM:AXI4_Slave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:PLL0_DRI" "RECONFIGURATION_INTERFACE_0:PLL0_SW_DRI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE0_DRI_SLAVE" "RECONFIGURATION_INTERFACE_0:Q0_LANE0_DRI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE1_DRI_SLAVE" "RECONFIGURATION_INTERFACE_0:Q0_LANE1_DRI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE2_DRI_SLAVE" "RECONFIGURATION_INTERFACE_0:Q0_LANE2_DRI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_PCIE_C0_0:PCIESS_LANE3_DRI_SLAVE" "RECONFIGURATION_INTERFACE_0:Q0_LANE3_DRI" }
