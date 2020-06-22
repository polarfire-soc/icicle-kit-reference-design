# Creating SmartDesign MPFS_ICICLE_eMMC
set sd_name {MPFS_ICICLE_eMMC}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_RXBUS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_TXBUS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_TX_EBL_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDIO} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDC} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_8662_RESET} -port_direction {OUT}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_TXBUS_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_3_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_2_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_RXBUS_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DI_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_SS_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_CLK_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DO_M2F} -port_direction {OUT}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_RST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_PWM} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C0_SCL} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C0_SDA} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C1_SCL} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C1_SDA} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA0} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA1} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA2} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA3} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_SEL} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_CMD} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA0} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA1} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA2} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA3} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA4} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA5} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA6} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA7} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_STRB} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_RSTN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_EN_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT}

sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MBUS_RST} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MBUS_PWM} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SDIO_SW_SEL0} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SDIO_SW_SEL1} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SDIO_SW_EN_N} -value {GND}
# Add AND3_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND3} -instance_name {AND3_0}



# Add BIBUF_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_0:D} -value {GND}



# Add BIBUF_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_1}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_1:D} -value {GND}



# Add BIBUF_2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_2}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_2:D} -value {GND}



# Add BIBUF_3 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_3}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {BIBUF_3:D} -value {GND}



# Add BIBUF_4 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_4}



# Add BIBUF_5 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_5}



# Add BIBUF_6 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_6}



# Add BIBUF_7 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {BIBUF_7}



# Add CORERESET instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {CORERESET}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET:FF_US_RESTORE} -value {GND}



# Add FAB_OSC instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FAB_OSC} -instance_name {FAB_OSC}



# Add INIT_MONITOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {INIT_MONITOR} -instance_name {INIT_MONITOR}



# Add MSS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {ICICLE_MSS} -instance_name {MSS}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_F2M} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_F2M} -pin_slices {[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_F2M} -pin_slices {[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_F2M} -pin_slices {[3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[63:1]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:MSS_INT_F2M[63:1]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_M2F} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_M2F} -pin_slices {[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_M2F} -pin_slices {[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_M2F} -pin_slices {[3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_OE_M2F} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_OE_M2F} -pin_slices {[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_OE_M2F} -pin_slices {[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_OE_M2F} -pin_slices {[3]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MMUART_0_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MMUART_1_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:QSPI_SEL_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:QSPI_CLK_OE_M2F}
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
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {MSS:MSS_INT_M2F}



# Add OR2_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_0}
sd_invert_pins -sd_name ${sd_name} -pin_names {OR2_0:A}



# Add OR2_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_1}
sd_invert_pins -sd_name ${sd_name} -pin_names {OR2_1:A}



# Add OR2_2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_2}
sd_invert_pins -sd_name ${sd_name} -pin_names {OR2_2:A}



# Add PF_CCC instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FAB_CCC} -instance_name {PF_CCC}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:Y" "CORERESET:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_0_SCL_F2M" "BIBUF_0:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_0_SDA_F2M" "BIBUF_1:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_1_SCL_F2M" "BIBUF_2:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_1_SDA_F2M" "BIBUF_3:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_F2M[0]" "BIBUF_4:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_F2M[1]" "BIBUF_5:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_F2M[2]" "BIBUF_6:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_F2M[3]" "BIBUF_7:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_0_RXBUS_F2M" "CAN_0_RXBUS_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_0_TXBUS_M2F" "CAN_0_TXBUS_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_1_RXBUS" "CAN_1_RXBUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_1_TX_EBL_N" "CAN_1_TX_EBL_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CAN_1_TXBUS" "CAN_1_TXBUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CK" "CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CK_N" "CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CKE" "CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_RESET_N_F2M" "CORERESET:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC:PLL_POWERDOWN_N_0" "CORERESET:PLL_POWERDOWN_B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CS" "CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_CLK" "EMMC_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_CMD" "EMMC_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_DATA0" "EMMC_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_DATA1" "EMMC_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_DATA2" "EMMC_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_DATA3" "EMMC_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_DATA4" "EMMC_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_DATA5" "EMMC_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_DATA6" "EMMC_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_DATA7" "EMMC_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_RSTN" "EMMC_RSTN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:EMMC_STRB" "EMMC_STRB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:EXT_RST_N" "EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC:REF_CLK_0" "FAB_OSC:RCOSC_160MHZ_GL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_0:PAD" "I2C0_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_1:PAD" "I2C0_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_2:PAD" "I2C1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_3:PAD" "I2C1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR:DEVICE_INIT_DONE" "CORERESET:INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR:FABRIC_POR_N" "CORERESET:FPGA_POR_N" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_26" "OR2_1:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_27" "OR2_2:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_28" "OR2_0:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_0_SCL_OE_M2F" "BIBUF_0:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_0_SDA_OE_M2F" "BIBUF_1:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_1_SCL_OE_M2F" "BIBUF_2:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:I2C_1_SDA_OE_M2F" "BIBUF_3:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:PLL_CPU_LOCK_M2F" "AND3_0:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:PLL_SGMII_LOCK_M2F" "AND3_0:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_M2F[0]" "BIBUF_4:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_M2F[1]" "BIBUF_5:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_M2F[2]" "BIBUF_6:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_M2F[3]" "BIBUF_7:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_OE_M2F[0]" "BIBUF_4:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_OE_M2F[1]" "BIBUF_5:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_OE_M2F[2]" "BIBUF_6:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_DATA_OE_M2F[3]" "BIBUF_7:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:ODT" "ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_INT_F2M[0]" "OR2_0:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_F2M_30" "OR2_1:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_F2M_31" "OR2_2:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_0:A" "PB0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_1:A" "PB1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_2:A" "PB2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC:OUT0_FABCLK_0" "CORERESET:CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC:PLL_LOCK_0" "AND3_0:C" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_CLK_M2F" "QSPI_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:PAD" "QSPI_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:PAD" "QSPI_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:PAD" "QSPI_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:PAD" "QSPI_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:QSPI_SEL_M2F" "QSPI_SEL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:REFCLK" "REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:REFCLK_N" "REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:RESET_N" "RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_RX0_N" "SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_RX0_P" "SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_RX1_N" "SGMII_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_RX1_P" "SGMII_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_TX0_N" "SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_TX0_P" "SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_TX1_N" "SGMII_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SGMII_TX1_P" "SGMII_TX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_0_CLK_F2M" "SPI_0_CLK_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_0_DI_F2M" "SPI_0_DI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_0_DO_M2F" "SPI_0_DO_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_0_SS_F2M" "SPI_0_SS_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_1_CLK" "SPI_1_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_1_DI" "SPI_1_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_1_DO" "SPI_1_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:SPI_1_SS0" "SPI_1_SS0" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_0" "USB_ULPI_RESET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_6" "VSC_8662_CMODE3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_7" "VSC_8662_CMODE4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_8" "VSC_8662_CMODE5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_9" "VSC_8662_CMODE6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_10" "VSC_8662_CMODE7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_4" "VSC_8662_OSCEN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_5" "VSC_8662_PLLMODE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_2" "VSC_8662_RESET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:GPIO_2_M2F_3" "VSC_8662_SRESET" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:CA" "CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:DM" "DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:DQ" "DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:DQS" "DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:DQS_N" "DQS_N" }


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign MPFS_ICICLE_eMMC
generate_component -component_name ${sd_name}
