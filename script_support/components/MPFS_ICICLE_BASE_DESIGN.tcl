# Creating SmartDesign MPFS_ICICLE_KIT_BASE_DESIGN
set sd_name {MPFS_ICICLE_KIT_BASE_DESIGN}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

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
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_RXD0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIESS_LANE_TXD0_N} -port_direction {OUT} -port_is_pad {1}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_CLK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {QSPI_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mBUS_QSPI_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mBUS_QSPI_DATA3_OR_PWM} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mBUS_I2C_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mBUS_I2C_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mBUS_UART_TX} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mBUS_UART_RX} -port_direction {IN}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CLK_EMMC_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CMD_EMMC_CMD} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA0_EMMC_DATA0} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA1_EMMC_DATA1} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA2_EMMC_DATA2} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA3_EMMC_DATA3} -port_direction {INOUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_POW_EMMC_DATA4} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_SEL_EMMC_DATA5} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_EN_EMMC_DATA6} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_CMD_DIR_EMMC_DATA7} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_1_3_EMMC_UNUSED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_0_EMMC_UNUSED} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CD_EMMC_STRB} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_WP_EMMC_RSTN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mBUS_INT} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {COREI2C_C0_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {COREI2C_C0_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO12} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO13} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO16} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO17} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO18} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO19} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO20} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO21} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO22} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO23} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO24} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO25} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO26} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_GPIO27} -port_direction {INOUT} -port_is_pad {1}

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



# Add DMA_INITIATOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {DMA_INITIATOR} -instance_name {DMA_INITIATOR}



# Add FIC0_INITIATOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC0_INITIATOR} -instance_name {FIC0_INITIATOR}



# Add FIC3_INITIATOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC3_INITIATOR} -instance_name {FIC3_INITIATOR}



# Add APB_ARBITER instance
sd_instantiate_hdl_core -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -hdl_core_name {APB_ARBITER} -instance_name {} 



# Add I2C0_SCL_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C0_SCL_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C0_SCL_BIBUF:D} -value {GND}



# Add I2C0_SDA_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C0_SDA_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C0_SDA_BIBUF:D} -value {GND}



# Add IHC_SUBSYSTEM instance
sd_instantiate_component -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -component_name {IHC_SUBSYSTEM} -instance_name {IHC_SUBSYSTEM_0} 


# Add COREI2C_C0 instance
sd_instantiate_component -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -component_name {COREI2C_C0} -instance_name {COREI2C_C0_0} 
sd_create_pin_slices -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {COREI2C_C0_0:SCLI} -pin_slices {"[0:0]"} 
sd_create_pin_slices -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {COREI2C_C0_0:SCLO} -pin_slices {"[0:0]"} 
sd_create_pin_slices -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {COREI2C_C0_0:SDAI} -pin_slices {"[0:0]"} 
sd_create_pin_slices -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {COREI2C_C0_0:SDAO} -pin_slices {"[0:0]"} 
sd_create_pin_slices -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {COREI2C_C0_0:INT} -pin_slices {"[0:0]"} 
sd_invert_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_0:SDAO[0:0]"}
sd_invert_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_0:SCLO[0:0]"}


# Add COREI2C_C0_0_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {COREI2C_C0_0_SCL_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREI2C_C0_0_SCL_BIBUF:D} -value {GND}



# Add COREI2C_C0_0_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {COREI2C_C0_0_SDA_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREI2C_C0_0_SDA_BIBUF:D} -value {GND}



# Add CoreUARTapb_C0 instance
sd_instantiate_component -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -component_name {CoreUARTapb_C0} -instance_name {} 
sd_connect_pin_to_port -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {CoreUARTapb_C0_0:RX} -port_name {COREUART_RX} 
sd_connect_pin_to_port -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_name {CoreUARTapb_C0_0:TX} -port_name {COREUART_TX} 
sd_mark_pins_unused -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {CoreUARTapb_C0_0:PARITY_ERR} 
sd_mark_pins_unused -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {CoreUARTapb_C0_0:FRAMING_ERR} 
sd_mark_pins_unused -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {CoreUARTapb_C0_0:OVERFLOW} 
sd_mark_pins_unused -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {CoreUARTapb_C0_0:TXRDY} 
sd_mark_pins_unused -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {CoreUARTapb_C0_0:RXRDY} 


# Add MSS_GPIO_2_16_OR_COREGPIO_C0_GPIO_OUT_0 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {MSS_GPIO_2_16_OR_COREGPIO_C0_GPIO_OUT_0}



# Add MSS_GPIO_2_17_OR_COREGPIO_C0_GPIO_OUT_1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {MSS_GPIO_2_17_OR_COREGPIO_C0_GPIO_OUT_1}



# Add MSS_GPIO_2_18_OR_COREGPIO_C0_GPIO_OUT_2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {MSS_GPIO_2_18_OR_COREGPIO_C0_GPIO_OUT_2}



# Add MSS_GPIO_2_19_OR_COREGPIO_C0_GPIO_OUT_3 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {MSS_GPIO_2_19_OR_COREGPIO_C0_GPIO_OUT_3}



# Add MSS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {ICICLE_MSS} -instance_name {ICICLE_MSS}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[58:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[59]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[60]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[61]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[62]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {ICICLE_MSS:MSS_INT_F2M} -pin_slices {[63]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ICICLE_MSS:MSS_INT_F2M[58:5]} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ICICLE_MSS:SPI_0_SS_F2M} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {ICICLE_MSS:SPI_0_CLK_F2M} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MMUART_0_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MMUART_1_TXD_OE_M2F}
sd_invert_pins -sd_name ${sd_name} -pin_names {ICICLE_MSS:CAN_0_TX_EBL_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MSS_INT_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_SOF_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_SYNC_FRAME_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_DELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_PDELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_PDELAY_RESP_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_SOF_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_SYNC_FRAME_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_DELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_PDELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_0_TSU_PDELAY_RESP_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_SOF_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_SYNC_FRAME_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_DELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_PDELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_PDELAY_RESP_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_SOF_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_SYNC_FRAME_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_DELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_PDELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:MAC_1_TSU_PDELAY_RESP_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:FIC_2_AXI4_TARGET}


# Add GPIO_2_0_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_0_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_0_IO:D" "ICICLE_MSS:GPIO_2_M2F_0"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_0_IO:Y" "ICICLE_MSS:GPIO_2_F2M_0"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_0_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_0"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_0_IO:PAD" "RPi_GPIO5" }


# Add GPIO_2_1_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_1_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_1_IO:D" "ICICLE_MSS:GPIO_2_M2F_1"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_1_IO:Y" "ICICLE_MSS:GPIO_2_F2M_1"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_1_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_1"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_1_IO:PAD" "RPi_GPIO6" }


# Add GPIO_2_2_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_2_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_2_IO:D" "ICICLE_MSS:GPIO_2_M2F_2"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_2_IO:Y" "ICICLE_MSS:GPIO_2_F2M_2"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_2_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_2"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_2_IO:PAD" "RPi_GPIO12" }


# Add GPIO_2_3_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_3_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_3_IO:D" "ICICLE_MSS:GPIO_2_M2F_3"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_3_IO:Y" "ICICLE_MSS:GPIO_2_F2M_3"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_3_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_3"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_3_IO:PAD" "RPi_GPIO13" }


# Add GPIO_2_4_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_4_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_4_IO:D" "ICICLE_MSS:GPIO_2_M2F_4"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_4_IO:Y" "ICICLE_MSS:GPIO_2_F2M_4"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_4_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_4"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_4_IO:PAD" "RPi_GPIO16" }


# Add GPIO_2_5_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_5_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_5_IO:D" "ICICLE_MSS:GPIO_2_M2F_5"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_5_IO:Y" "ICICLE_MSS:GPIO_2_F2M_5"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_5_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_5"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_5_IO:PAD" "RPi_GPIO17" }


# Add GPIO_2_6_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_6_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_6_IO:D" "ICICLE_MSS:GPIO_2_M2F_6"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_6_IO:Y" "ICICLE_MSS:GPIO_2_F2M_6"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_6_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_6"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_6_IO:PAD" "RPi_GPIO18" }


# Add GPIO_2_7_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_7_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_7_IO:D" "ICICLE_MSS:GPIO_2_M2F_7"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_7_IO:Y" "ICICLE_MSS:GPIO_2_F2M_7"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_7_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_7"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_7_IO:PAD" "RPi_GPIO19" }


# Add GPIO_2_8_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_8_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_8_IO:D" "ICICLE_MSS:GPIO_2_M2F_8"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_8_IO:Y" "ICICLE_MSS:GPIO_2_F2M_8"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_8_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_8"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_8_IO:PAD" "RPi_GPIO20" }


# Add GPIO_2_9_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_9_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_9_IO:D" "ICICLE_MSS:GPIO_2_M2F_9"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_9_IO:Y" "ICICLE_MSS:GPIO_2_F2M_9"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_9_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_9"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_9_IO:PAD" "RPi_GPIO21" }


# Add GPIO_2_10_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_10_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_10_IO:D" "ICICLE_MSS:GPIO_2_M2F_10"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_10_IO:Y" "ICICLE_MSS:GPIO_2_F2M_10"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_10_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_10"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_10_IO:PAD" "RPi_GPIO22" }


# Add GPIO_2_11_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_11_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_11_IO:D" "ICICLE_MSS:GPIO_2_M2F_11"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_11_IO:Y" "ICICLE_MSS:GPIO_2_F2M_11"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_11_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_11"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_11_IO:PAD" "RPi_GPIO23" }


# Add GPIO_2_12_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_12_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_12_IO:D" "ICICLE_MSS:GPIO_2_M2F_12"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_12_IO:Y" "ICICLE_MSS:GPIO_2_F2M_12"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_12_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_12"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_12_IO:PAD" "RPi_GPIO24" }


# Add GPIO_2_13_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_13_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_13_IO:D" "ICICLE_MSS:GPIO_2_M2F_13"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_13_IO:Y" "ICICLE_MSS:GPIO_2_F2M_13"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_13_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_13"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_13_IO:PAD" "RPi_GPIO25" }


# Add GPIO_2_14_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_14_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_14_IO:D" "ICICLE_MSS:GPIO_2_M2F_14"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_14_IO:Y" "ICICLE_MSS:GPIO_2_F2M_14"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_14_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_14"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_14_IO:PAD" "RPi_GPIO26" }


# Add GPIO_2_15_IO BIBUF instance
sd_instantiate_macro -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -macro_name {BIBUF} -instance_name {GPIO_2_15_IO} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_15_IO:D" "ICICLE_MSS:GPIO_2_M2F_15"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_15_IO:Y" "ICICLE_MSS:GPIO_2_F2M_15"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"GPIO_2_15_IO:E" "ICICLE_MSS:GPIO_2_OE_M2F_15"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_15_IO:PAD" "RPi_GPIO27" }



# Add MSS_LSRAM instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MSS_LSRAM} -instance_name {MSS_LSRAM}



# Add MSS_PLL_LOCKS instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {MSS_PLL_LOCKS}



# Add PCIE_INITIATOR instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_INITIATOR} -instance_name {PCIE_INITIATOR}


# Add PCIE instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_PCIE_C0} -instance_name {PCIE}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE:PCIE_1_INTERRUPT} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE:PCIE_1_M_RDERR} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE:PCIE_1_S_WDERR} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_1_LTSSM}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_1_M_WDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_1_S_RDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_1_L2_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_1_HOT_RST_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_1_DLUP_EXIT}



# Add QSPI_DATA2_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {QSPI_DATA2_BIBUF}



# Add QSPI_DATA3_OR_PWM_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {QSPI_DATA3_OR_PWM_BIBUF}


# Add QSPI_DATA3_OR_PWM_EN_OR instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {QSPI_DATA3_OR_PWM_EN_OR}

# Add QSPI_DATA3_OR_PWM_D_OR instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {QSPI_DATA3_OR_PWM_D_OR}



# Add RECONFIGURATION_INTERFACE_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {RECONFIGURATION_INTERFACE} -instance_name {RECONFIGURATION_INTERFACE_0}


# Add corepwm_C0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {corepwm_C0} -instance_name {PWM}



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


# Add AXI_ADDRESS_SHIM instance
sd_instantiate_hdl_core -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -hdl_core_name {AXI_ADDRESS_SHIM} -instance_name {AXI_ADDRESS_SHIM_0} 



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:CAN_0_RXBUS_F2M" "CAN_0_RXBUS_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:CAN_0_TX_EBL_M2F" "CAN_0_TX_EBL_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:CAN_0_TXBUS_M2F" "CAN_0_TXBUS_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:CAN_1_RXBUS" "CAN_1_RXBUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:CAN_1_TX_EBL_N" "CAN_1_TX_EBL_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:CAN_1_TXBUS" "CAN_1_TXBUS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "ICICLE_MSS:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "ICICLE_MSS:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "ICICLE_MSS:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:PCLK"  "COREI2C_C0_0:PCLK" "IHC_SUBSYSTEM_0:pclk" "PWM:PCLK" "RECONFIGURATION_INTERFACE_0:PCLK" "ICICLE_MSS:FIC_3_PCLK" "COREGPIO_C0:PCLK" "sdio_register_0:pclk" "CLOCKS_AND_RESETS:CLK_62_5MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:FIC_2_ACLK" "ICICLE_MSS:FIC_1_ACLK" "PCIE_INITIATOR:ACLK" "ICICLE_MSS:FIC_0_ACLK" "DMA_INITIATOR:ACLK" "MSS_LSRAM:ACLK" "FIC0_INITIATOR:ACLK" "DMA_CONTROLLER:CLOCK" "PCIE:AXI_CLK" "CLOCKS_AND_RESETS:CLK_125MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIE_1_TL_CLK_125MHz" "CLOCKS_AND_RESETS:PCIe_CLK_125MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE1_CDR_REF_CLK_0" "PCIE:PCIESS_LANE2_CDR_REF_CLK_0" "PCIE:PCIESS_LANE3_CDR_REF_CLK_0" "PCIE:PCIESS_LANE0_CDR_REF_CLK_0" "CLOCKS_AND_RESETS:PCIe_REFERENCE_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:PRESETN" "COREI2C_C0_0:PRESETN" "IHC_SUBSYSTEM_0:presetn" "PWM:PRESETN" "RECONFIGURATION_INTERFACE_0:PRESETN" "COREGPIO_C0:PRESETN" "sdio_register_0:presetn" "CLOCKS_AND_RESETS:RESETN_CLK_62_5MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "ICICLE_MSS:CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_INT_F2M[2]" "DMA_CONTROLLER:INTERRUPT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SCL_BIBUF:PAD" "mBUS_I2C_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_0_SCL_F2M" "I2C0_SCL_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SDA_BIBUF:PAD" "mBUS_I2C_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_0_SDA_F2M" "I2C0_SDA_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_1_SCL" "I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_1_SDA" "I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MAC_1_MDC" "MAC_1_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MAC_1_MDIO" "MAC_1_MDIO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_0_RXD_F2M" "MMUART_0_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_0_TXD_M2F" "MMUART_0_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_1_RXD_F2M" "MMUART_1_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_1_TXD_M2F" "MMUART_1_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_2_RXD_F2M" "MMUART_2_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_2_TXD_M2F" "MMUART_2_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_3_RXD_F2M" "MMUART_3_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_3_TXD_M2F" "MMUART_3_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_4_RXD_F2M" "mBUS_UART_RX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MMUART_4_TXD_M2F" "mBUS_UART_TX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:A" "ICICLE_MSS:FIC_0_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:D" "ICICLE_MSS:FIC_1_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:C" "ICICLE_MSS:FIC_2_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:B" "ICICLE_MSS:FIC_3_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:GPIO_2_M2F_26" "SW2_OR_GPIO_2_26:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:GPIO_2_M2F_27" "SW3_OR_GPIO_2_27:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:GPIO_2_M2F_28" "SW1_OR_GPIO_2_28:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_0_SCL_OE_M2F" "I2C0_SCL_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:I2C_0_SDA_OE_M2F" "I2C0_SDA_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_RESET_N_M2F" "CLOCKS_AND_RESETS:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_PLL_LOCKS:Y" "CLOCKS_AND_RESETS:MSS_PLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:QSPI_DATA2_M2F" "QSPI_DATA2_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:QSPI_DATA2_OE_M2F" "QSPI_DATA2_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA3_OR_PWM_EN_OR:A" "ICICLE_MSS:QSPI_DATA3_OE_M2F"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA3_OR_PWM_EN_OR:B" "PWM:PWM"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA3_OR_PWM_EN_OR:Y" "QSPI_DATA3_OR_PWM_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA3_OR_PWM_D_OR:A" "ICICLE_MSS:QSPI_DATA3_M2F"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA3_OR_PWM_D_OR:B" "PWM:PWM"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA3_OR_PWM_D_OR:Y" "QSPI_DATA3_OR_PWM_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT" "ICICLE_MSS:ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIE_1_PERST_N" "PCIE_1_PERST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD0_N" "PCIE:PCIESS_LANE_RXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD0_P" "PCIE:PCIESS_LANE_RXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD1_N" "PCIE:PCIESS_LANE_RXD1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD1_P" "PCIE:PCIESS_LANE_RXD1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD2_N" "PCIE:PCIESS_LANE_RXD2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD2_P" "PCIE:PCIESS_LANE_RXD2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD3_N" "PCIE:PCIESS_LANE_RXD3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_RXD3_P" "PCIE:PCIESS_LANE_RXD3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD0_N" "PCIE:PCIESS_LANE_TXD0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD0_P" "PCIE:PCIESS_LANE_TXD0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD1_N" "PCIE:PCIESS_LANE_TXD1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD1_P" "PCIE:PCIESS_LANE_TXD1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD2_N" "PCIE:PCIESS_LANE_TXD2_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD2_P" "PCIE:PCIESS_LANE_TXD2_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD3_N" "PCIE:PCIESS_LANE_TXD3_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIESS_LANE_TXD3_P" "PCIE:PCIESS_LANE_TXD3_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIE_1_INTERRUPT_OUT" "ICICLE_MSS:MSS_INT_F2M[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:QSPI_CLK" "QSPI_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:QSPI_SS0" "QSPI_CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:QSPI_DATA0" "QSPI_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:QSPI_DATA1" "QSPI_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA2_BIBUF:PAD" "mBUS_QSPI_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:QSPI_DATA2_F2M" "QSPI_DATA2_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"QSPI_DATA3_OR_PWM_BIBUF:PAD" "mBUS_QSPI_DATA3_OR_PWM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:QSPI_DATA3_F2M" "QSPI_DATA3_OR_PWM_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_N" "CLOCKS_AND_RESETS:REF_CLK_PAD_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REF_CLK_PAD_P" "CLOCKS_AND_RESETS:REF_CLK_PAD_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK" "ICICLE_MSS:REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK_N" "ICICLE_MSS:REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESET_N" "ICICLE_MSS:RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SDIO_SW_SEL0" "SDIO_SW_SEL1" "sdio_register_0:SDIO_control" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_N" "ICICLE_MSS:SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX0_P" "ICICLE_MSS:SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_N" "ICICLE_MSS:SGMII_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_RX1_P" "ICICLE_MSS:SGMII_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_N" "ICICLE_MSS:SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX0_P" "ICICLE_MSS:SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_N" "ICICLE_MSS:SGMII_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SGMII_TX1_P" "ICICLE_MSS:SGMII_TX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:SPI_0_CLK_M2F" "SPI_0_CLK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:SPI_0_DI_F2M" "SPI_0_DI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:SPI_0_DO_M2F" "SPI_0_DO_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:SPI_0_SS1_M2F" "SPI_0_SS1_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW1_OR_GPIO_2_28:A" "SW1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_INT_F2M[0]" "SW1_OR_GPIO_2_28:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW2_OR_GPIO_2_26:A" "SW2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:GPIO_2_F2M_30" "SW2_OR_GPIO_2_26:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW3_OR_GPIO_2_27:A" "SW3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:GPIO_2_F2M_31" "SW3_OR_GPIO_2_27:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SW4" "ICICLE_MSS:MSS_RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_CLK" "USB_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_DATA0" "USB_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_DATA1" "USB_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_DATA2" "USB_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_DATA3" "USB_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_DATA4" "USB_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_DATA5" "USB_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_DATA6" "USB_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_DATA7" "USB_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_DIR" "USB_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_NXT" "USB_NXT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:USB_STP" "USB_STP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_INITIATOR:ARESETN" "VSC_8662_RESETN" "USB_ULPI_RESET"  "DMA_INITIATOR:ARESETN" "MSS_LSRAM:ARESETN" "FIC0_INITIATOR:ARESETN" "DMA_CONTROLLER:RESETN" "PCIE:AXI_CLK_STABLE" "CLOCKS_AND_RESETS:RESETN_CLK_125MHz" "AXI_ADDRESS_SHIM_0:RESETN"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_CLK_EMMC_CLK" "ICICLE_MSS:SD_CLK_EMMC_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_CMD_EMMC_CMD" "ICICLE_MSS:SD_CMD_EMMC_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_DATA0_EMMC_DATA0" "ICICLE_MSS:SD_DATA0_EMMC_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_DATA1_EMMC_DATA1" "ICICLE_MSS:SD_DATA1_EMMC_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_DATA2_EMMC_DATA2" "ICICLE_MSS:SD_DATA2_EMMC_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_DATA3_EMMC_DATA3" "ICICLE_MSS:SD_DATA3_EMMC_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_POW_EMMC_DATA4" "ICICLE_MSS:SD_POW_EMMC_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_SEL_EMMC_DATA5" "ICICLE_MSS:SD_VOLT_SEL_EMMC_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_EN_EMMC_DATA6" "ICICLE_MSS:SD_VOLT_EN_EMMC_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_CMD_DIR_EMMC_DATA7" "ICICLE_MSS:SD_VOLT_CMD_DIR_EMMC_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_DIR_1_3_EMMC_UNUSED" "ICICLE_MSS:SD_VOLT_DIR_1_3_EMMC_UNUSED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_VOLT_DIR_0_EMMC_UNUSED" "ICICLE_MSS:SD_VOLT_DIR_0_EMMC_UNUSED" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_CD_EMMC_STRB" "ICICLE_MSS:SD_CD_EMMC_STRB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SD_WP_EMMC_RSTN" "ICICLE_MSS:SD_WP_EMMC_RSTN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_INT_F2M[63]" "IHC_SUBSYSTEM_0:E51_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_INT_F2M[62]" "IHC_SUBSYSTEM_0:U54_1_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_INT_F2M[61]" "IHC_SUBSYSTEM_0:U54_2_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_INT_F2M[60]" "IHC_SUBSYSTEM_0:U54_3_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_INT_F2M[59]" "IHC_SUBSYSTEM_0:U54_4_IRQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_INT_F2M[3]" "mBUS_INT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:MSS_INT_F2M[4]" "COREI2C_C0_0:INT[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_0_SCL_BIBUF:PAD" "COREI2C_C0_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_0_SDA_BIBUF:PAD" "COREI2C_C0_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_0:SCLO[0:0]" "COREI2C_C0_0_SCL_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_0:SCLI[0:0]" "COREI2C_C0_0_SCL_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_0:SDAO[0:0]" "COREI2C_C0_0_SDA_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_0:SDAI[0:0]" "COREI2C_C0_0_SDA_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_16_OR_COREGPIO_C0_GPIO_OUT_0:A" "ICICLE_MSS:GPIO_2_M2F_16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_16_OR_COREGPIO_C0_GPIO_OUT_0:B" "COREGPIO_C0:GPIO_OUT[0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_16_OR_COREGPIO_C0_GPIO_OUT_0:Y" "LED0"  }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_17_OR_COREGPIO_C0_GPIO_OUT_1:A" "ICICLE_MSS:GPIO_2_M2F_17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_17_OR_COREGPIO_C0_GPIO_OUT_1:B" "COREGPIO_C0:GPIO_OUT[1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_17_OR_COREGPIO_C0_GPIO_OUT_1:Y" "LED1"  }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_18_OR_COREGPIO_C0_GPIO_OUT_2:A" "ICICLE_MSS:GPIO_2_M2F_18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_18_OR_COREGPIO_C0_GPIO_OUT_2:B" "COREGPIO_C0:GPIO_OUT[2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_18_OR_COREGPIO_C0_GPIO_OUT_2:Y" "LED2"  }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_19_OR_COREGPIO_C0_GPIO_OUT_3:A" "ICICLE_MSS:GPIO_2_M2F_19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_19_OR_COREGPIO_C0_GPIO_OUT_3:B" "COREGPIO_C0:GPIO_OUT[3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_GPIO_2_19_OR_COREGPIO_C0_GPIO_OUT_3:Y" "LED3"  }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ICICLE_MSS:CA" "CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "ICICLE_MSS:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "ICICLE_MSS:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "ICICLE_MSS:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "ICICLE_MSS:DQS_N" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:CLKS_FROM_TXPLL_TO_PCIE_1" "CLOCKS_AND_RESETS:CLKS_TO_XCVR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DMA_CONTROLLER:AXI4MasterDMA_IF" "DMA_INITIATOR:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DMA_INITIATOR:AXI4mslave0" "ICICLE_MSS:FIC_1_AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:AXI_1_SLAVE" "FIC0_INITIATOR:AXI4mslave0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_LSRAM:AXI4_Slave" "FIC0_INITIATOR:AXI4mslave1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_INITIATOR:AXI4mslave2" "DMA_CONTROLLER:AXI4SlaveCtrl_IF" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_INITIATOR:APBmslave1" "PWM:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_INITIATOR:APBmslave2" "COREGPIO_C0:APB_bif" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_INITIATOR:APBmslave15" "sdio_register_0:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_INITIATOR:APBmslave16" "RECONFIGURATION_INTERFACE_0:APBS_SLAVE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC0_INITIATOR:AXI4mmaster0" "ICICLE_MSS:FIC_0_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC3_INITIATOR:APB3mmaster" "APB_ARBITER_0:APB_MASTER_low" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_ARBITER_0:APB_MMASTER" "ICICLE_MSS:FIC_3_APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:APB3mmaster" "APB_ARBITER_0:APB_MASTER_high" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_INITIATOR:AXI4mslave0" "ICICLE_MSS:FIC_0_AXI4_TARGET" }
#sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:AXI_1_MASTER" "PCIE_INITIATOR:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE0_DRI_SLAVE" "RECONFIGURATION_INTERFACE_0:Q0_LANE0_DRI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE1_DRI_SLAVE" "RECONFIGURATION_INTERFACE_0:Q0_LANE1_DRI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE2_DRI_SLAVE" "RECONFIGURATION_INTERFACE_0:Q0_LANE2_DRI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE3_DRI_SLAVE" "RECONFIGURATION_INTERFACE_0:Q0_LANE3_DRI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_0:APBslave" "FIC3_INITIATOR:APBmslave4"} 
sd_connect_pins -sd_name {MPFS_ICICLE_KIT_BASE_DESIGN} -pin_names {"CoreUARTapb_C0_0:APB_bif" "FIC3_INITIATOR:APBmslave5"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:AXI_1_MASTER" "AXI_ADDRESS_SHIM_0:AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_ADDRESS_SHIM_0:AXI4_INITIATOR" "PCIE_INITIATOR:AXI4mmaster0" }

# Mark pins unused
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREGPIO_C0:INT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:FIC_3_APB_M_PSTRB}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:SPI_0_SS1_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:SPI_0_DO_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:SPI_0_CLK_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:PLL_CPU_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:PLL_DDR_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {ICICLE_MSS:PLL_SGMII_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:PINTERRUPT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:PTIMEOUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:BUSERROR}

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign MPFS_ICICLE_eMMC
generate_component -component_name ${sd_name}

