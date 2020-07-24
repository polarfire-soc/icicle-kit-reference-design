# Creating SmartDesign MPFS_ICICLE_eMMC
#set sd_name {MPFS_ICICLE_eMMC}
#create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
#auto_promote_pad_pins -promote_all 0

# Create top level Ports
#sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
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
#sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_RST} -port_direction {OUT}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_PWM} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA0} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA1} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA2} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA3} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_SEL} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_CLK} -port_direction {OUT}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL0} -port_direction {OUT}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_SEL1} -port_direction {OUT}


#
#sd_create_scalar_port -sd_name ${sd_name} -port_name {SDIO_SW_EN_N} -port_direction {OUT}
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

sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]}

#sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MBUS_RST} -value {VCC}
#sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MBUS_PWM} -value {VCC}
#sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {SDIO_SW_EN_N} -value {GND}
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
#sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {CORERESET}
#sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET:BANK_x_VDDI_STATUS} -value {VCC}
#sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET:BANK_y_VDDI_STATUS} -value {VCC}
#sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET:SS_BUSY} -value {GND}
#sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET:FF_US_RESTORE} -value {GND}

create_and_configure_core -core_vlnv {Actel:DirectCore:CORERESET_PF:2.2.107} -component_name {CORERESET_FIC1} -params {}
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET_FIC1} -instance_name {CORERESET_FIC1_0} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CORERESET_FIC1_0:PLL_POWERDOWN_B}


# Add FAB_OSC instance
#sd_instantiate_component -sd_name ${sd_name} -component_name {FAB_OSC} -instance_name {FAB_OSC}



# Add INIT_MONITOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {INIT_MONITOR} -instance_name {INIT_MONITOR}



# Add MSS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {ICICLE_MSS} -instance_name {MSS}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_F2M} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_F2M} -pin_slices {[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_F2M} -pin_slices {[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:QSPI_DATA_F2M} -pin_slices {[3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[0]}

sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[1]}


sd_create_pin_slices -sd_name ${sd_name} -pin_name {MSS:MSS_INT_F2M} -pin_slices {[63:2]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MSS:MSS_INT_F2M[63:2]} -value {GND}
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



# Add PCIE_BASE_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_BASE} -instance_name {PCIE_BASE_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE_BASE_0:PCIE_1_INTERRUPT} -value {GND}



# Add PF_CCC instance
#sd_instantiate_component -sd_name ${sd_name} -component_name {FAB_CCC} -instance_name {PF_CCC}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:Y" "CORERESET_FIC1_0:PLL_LOCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:Y" "MSS:QSPI_DATA_F2M[0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:Y" "MSS:QSPI_DATA_F2M[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:Y" "MSS:QSPI_DATA_F2M[2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:Y" "MSS:QSPI_DATA_F2M[3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "MSS:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "MSS:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "MSS:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_FIC1_0:FABRIC_RESET_N" "PCIE_AXI_0_0:ARESETN" "PCIE_AXI_1_0:ARESETN" "PCIE_BASE_0:DEVICE_INIT_DONE" }
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:PLL_POWERDOWN_B" "PF_CCC:PLL_POWERDOWN_N_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "MSS:CS" }



#sd_connect_pins -sd_name ${sd_name} -pin_names {"EXT_RST_N" "CORERESET:EXT_RST_N" }
#sd_connect_pins -sd_name ${sd_name} -pin_names {"FAB_OSC:RCOSC_160MHZ_GL" "PF_CCC:REF_CLK_0" "PCIE_BASE_0:clk_160mhz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SCL" "MSS:I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SDA" "MSS:I2C_1_SDA" }
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:INIT_DONE" "INIT_MONITOR:DEVICE_INIT_DONE" }
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET:FPGA_POR_N" "INIT_MONITOR:FABRIC_POR_N" }
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
#sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC:OUT0_FABCLK_0" "MSS:FIC_0_ACLK" "MSS:FIC_1_ACLK" "PCIE_AXI_0_0:ACLK" "PCIE_AXI_1_0:ACLK" "PCIE_BASE_0:clk_125mhz" }

#sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:AXI_CLK_125MHZ" "MSS:FIC_0_ACLK" "MSS:FIC_1_ACLK" "PCIE_AXI_0_0:ACLK" "PCIE_AXI_1_0:ACLK" "PCIE_BASE_0:clk_125mhz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:AXI_CLK_125MHZ" "MSS:FIC_0_ACLK" "MSS:FIC_1_ACLK" "PCIE_AXI_0_0:ACLK" "PCIE_AXI_1_0:ACLK" }



	
#sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_CCC:OUT1_FABCLK_0" "MSS:FIC_3_PCLK" "PCIE_BASE_0:clk_50mhz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:APB_CLK_62_5MHZ" "MSS:FIC_3_PCLK" }

#sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:C" "PF_CCC:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_CLK" "MSS:QSPI_CLK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_4:PAD" "QSPI_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_5:PAD" "QSPI_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_6:PAD" "QSPI_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BIBUF_7:PAD" "QSPI_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_SEL" "MSS:QSPI_SEL_M2F" }
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

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:FIC_1_AXI4_MASTER" "PCIE_AXI_1_0:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:APBS" "MSS:FIC_3_APB_MASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_AXI_0_0:AXI4mslave0" "MSS:FIC_0_AXI4_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_BASE_0:AXI_1_SLAVE" "PCIE_AXI_1_0:AXI4mslave0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_AXI_0_0:AXI4mmaster0" "PCIE_BASE_0:AXI_1_MASTER" }

# Fabric reset
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS:MSS_RESET_N_M2F" "CORERESET_FIC1_0:EXT_RST_N"} 
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CORERESET_FIC1_0:CLK" "CORERESET:CLK"} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_FIC1_0:BANK_y_VDDI_STATUS} -value {VCC} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_FIC1_0:BANK_x_VDDI_STATUS} -value {VCC} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_FIC1_0:SS_BUSY} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CORERESET_FIC1_0:FF_US_RESTORE} -value {GND} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR:FABRIC_POR_N" "CORERESET_FIC1_0:FPGA_POR_N"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR:DEVICE_INIT_DONE" "CORERESET_FIC1_0:INIT_DONE"}
#sd_connect_pins -sd_name {MPFS_ICICLE_eMMC} -pin_names {"PF_CCC:OUT0_FABCLK_0" "CORERESET_FIC1_0:CLK"}
sd_connect_pins -sd_name {MPFS_ICICLE_eMMC} -pin_names {"PCIE_BASE_0:APB_CLK_62_5MHZ" "CORERESET_FIC1_0:CLK"}


#sd_connect_pins_to_constant -sd_name {MPFS_ICICLE_eMMC} -pin_names {PF_CCC:PLL_POWERDOWN_N_0} -value {VCC}

# Re-enable auto promotion of pins of type 'pad'
#auto_promote_pad_pins -promote_all 1
# Save the smartDesign
#save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign MPFS_ICICLE_eMMC
#generate_component -component_name ${sd_name}
