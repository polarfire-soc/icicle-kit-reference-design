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
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_3_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_2_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_RXD_F2M} -port_direction {IN}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SCL} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SDA} -port_direction {INOUT}

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
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:Y" "MSS:QSPI_DATA_F2M[0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:Y" "MSS:QSPI_DATA_F2M[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:Y" "MSS:QSPI_DATA_F2M[2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:Y" "MSS:QSPI_DATA_F2M[3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "MSS:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "MSS:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "MSS:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:FABRIC_RESET_N" "MSS:MSS_RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:PLL_POWERDOWN_B" "PF_CCC:PLL_POWERDOWN_N_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "MSS:CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_CLK" "MSS:EMMC_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_CMD" "MSS:EMMC_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA0" "MSS:EMMC_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA1" "MSS:EMMC_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA2" "MSS:EMMC_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA3" "MSS:EMMC_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA4" "MSS:EMMC_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA5" "MSS:EMMC_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA6" "MSS:EMMC_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA7" "MSS:EMMC_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_RSTN" "MSS:EMMC_RSTN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_STRB" "MSS:EMMC_STRB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:EXT_RST_N" "EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FAB_OSC:RCOSC_160MHZ_GL" "PF_CCC:REF_CLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SCL" "MSS:I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SDA" "MSS:I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:INIT_DONE" "INIT_MONITOR:DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:FPGA_POR_N" "INIT_MONITOR:FABRIC_POR_N" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:B" "MSS:PLL_CPU_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:A" "MSS:PLL_SGMII_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:D" "MSS:QSPI_DATA_M2F[0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:D" "MSS:QSPI_DATA_M2F[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:D" "MSS:QSPI_DATA_M2F[2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:D" "MSS:QSPI_DATA_M2F[3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:E" "MSS:QSPI_DATA_OE_M2F[0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:E" "MSS:QSPI_DATA_OE_M2F[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:E" "MSS:QSPI_DATA_OE_M2F[2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:E" "MSS:QSPI_DATA_OE_M2F[3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT" "MSS:ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_INT_F2M[0]" "OR2_0:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_1:Y" "MSS:GPIO_2_F2M_30" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_2:Y" "MSS:GPIO_2_F2M_31" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_0:A" "PB0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_1:A" "PB1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_2:A" "PB2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:CLK" "PF_CCC:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:C" "PF_CCC:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_CLK" "MSS:QSPI_CLK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:PAD" "QSPI_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:PAD" "QSPI_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:PAD" "QSPI_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:PAD" "QSPI_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_SEL" "MSS:QSPI_SEL_M2F" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_CLK_F2M" "MSS:SPI_0_CLK_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_DI_F2M" "MSS:SPI_0_DI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_DO_M2F" "MSS:SPI_0_DO_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_SS_F2M" "MSS:SPI_0_SS_F2M" }
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
sd_connect_pins -sd_name ${sd_name} -pin_names {"USB_ULPI_RESET" "MSS:GPIO_2_M2F_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_CMODE3" "MSS:GPIO_2_M2F_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_CMODE4" "MSS:GPIO_2_M2F_7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_CMODE5" "MSS:GPIO_2_M2F_8" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_CMODE6" "MSS:GPIO_2_M2F_9" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_CMODE7" "MSS:GPIO_2_M2F_10" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_OSCEN" "MSS:GPIO_2_M2F_4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_PLLMODE" "MSS:GPIO_2_M2F_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_RESET" "MSS:GPIO_2_M2F_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"VSC_8662_SRESET" "MSS:GPIO_2_M2F_3" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CA" "MSS:CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "MSS:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "MSS:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "MSS:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "MSS:DQS_N" }


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign MPFS_ICICLE_eMMC
generate_component -component_name ${sd_name}
