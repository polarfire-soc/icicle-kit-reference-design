# Creating SmartDesign "FIC_3_PERIPHERALS"
set sd_name {FIC_3_PERIPHERALS}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_penable} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_psel} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_pwrite} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CoreUARTapb_RX} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PREADYS16} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSLVERRS16} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_pready} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_pslverr} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CORE_I2C_C0_INT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CoreUARTapb_TX} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PENABLES} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSELS16} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWRITES} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FRAMING_ERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {OVERFLOW} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PARITY_ERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RXRDY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {TXRDY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_OUT_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_OUT_1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_OUT_2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_OUT_3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_MP_APP_E51_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_MP_APP_U54_1_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_MP_APP_U54_2_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_MP_APP_U54_3_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {IHC_MP_APP_U54_4_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PWM_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_ID_I2C_IRQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {fabric_sd_emmc_demux_select_out} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {COREI2C_C0_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {COREI2C_C0_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_ID_SC} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPi_ID_SD} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_paddr} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_pwdata} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PRDATAS16} -port_direction {IN} -port_range {[31:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB_MMASTER_in_prdata} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PADDRS} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWDATAS} -port_direction {OUT} -port_range {[31:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {APB_MMASTER} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"PADDR:APB_MMASTER_in_paddr" \
"PSELx:APB_MMASTER_in_psel" \
"PENABLE:APB_MMASTER_in_penable" \
"PWRITE:APB_MMASTER_in_pwrite" \
"PRDATA:APB_MMASTER_in_prdata" \
"PWDATA:APB_MMASTER_in_pwdata" \
"PREADY:APB_MMASTER_in_pready" \
"PSLVERR:APB_MMASTER_in_pslverr" } 

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_3_0x43xx_xxxx_0x48xx_xxxx} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {mirroredSlave} -port_bif_mapping {\
"PADDR:FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PADDRS" \
"PSELx:FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSELS16" \
"PENABLE:FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PENABLES" \
"PWRITE:FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWRITES" \
"PRDATA:FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PRDATAS16" \
"PWDATA:FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PWDATAS" \
"PREADY:FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PREADYS16" \
"PSLVERR:FIC_3_0x43xx_xxxx_0x48xx_xxxx_APBmslave16_PSLVERRS16" } 

# Add CORE_I2C_C0_0_WRAPPER_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORE_I2C_C0_0_WRAPPER} -instance_name {CORE_I2C_C0_0_WRAPPER_1}



# Add COREGPIO_C0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GPIO} -instance_name {COREGPIO_C0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {COREGPIO_C0:GPIO_OUT} -pin_slices {[3:3]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {COREGPIO_C0:INT}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {COREGPIO_C0:GPIO_IN} -value {GND}



# Add CoreUARTapb_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CoreUARTapb_C0} -instance_name {CoreUARTapb_C0_0}



# Add fabric_sd_emmc_demux_select_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {fabric_sd_emmc_demux_select} -instance_name {fabric_sd_emmc_demux_select_0}



# Add FIC_3_ADDRESS_GENERATION_1 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC_3_ADDRESS_GENERATION} -instance_name {FIC_3_ADDRESS_GENERATION_1}



# Add MIV_IHC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {MIV_IHC_C0} -instance_name {MIV_IHC_C0_0}



# Add PWM instance
sd_instantiate_component -sd_name ${sd_name} -component_name {corepwm_C0} -instance_name {PWM}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PWM:PWM} -pin_slices {[0:0]}



# Add RPi_ID_I2C instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORE_I2C_C0_0_WRAPPER} -instance_name {RPi_ID_I2C}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:GPIO_OUT[0:0]" "GPIO_OUT_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:GPIO_OUT[1:1]" "GPIO_OUT_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:GPIO_OUT[2:2]" "GPIO_OUT_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:GPIO_OUT[3:3]" "GPIO_OUT_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:PCLK" "CORE_I2C_C0_0_WRAPPER_1:PCLK" "CoreUARTapb_C0_0:PCLK" "MIV_IHC_C0_0:APB_0_PCLK" "MIV_IHC_C0_0:CORE_CLK" "PCLK" "PWM:PCLK" "RPi_ID_I2C:PCLK" "fabric_sd_emmc_demux_select_0:pclk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:PRESETN" "CORE_I2C_C0_0_WRAPPER_1:PRESETN" "CoreUARTapb_C0_0:PRESETN" "MIV_IHC_C0_0:APB_0_PRESETN" "MIV_IHC_C0_0:CORE_RESETN" "PRESETN" "PWM:PRESETN" "RPi_ID_I2C:PRESETN" "fabric_sd_emmc_demux_select_0:presetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_SCL" "CORE_I2C_C0_0_WRAPPER_1:COREI2C_C0_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREI2C_C0_SDA" "CORE_I2C_C0_0_WRAPPER_1:COREI2C_C0_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORE_I2C_C0_0_WRAPPER_1:INT" "CORE_I2C_C0_INT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:FRAMING_ERR" "FRAMING_ERR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:OVERFLOW" "OVERFLOW" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:PARITY_ERR" "PARITY_ERR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:RX" "CoreUARTapb_RX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:RXRDY" "RXRDY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:TX" "CoreUARTapb_TX" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:TXRDY" "TXRDY" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_MP_APP_E51_IRQ" "MIV_IHC_C0_0:APP_IRQ_H0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_MP_APP_U54_1_IRQ" "MIV_IHC_C0_0:APP_IRQ_H1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_MP_APP_U54_2_IRQ" "MIV_IHC_C0_0:APP_IRQ_H2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_MP_APP_U54_3_IRQ" "MIV_IHC_C0_0:APP_IRQ_H3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_MP_APP_U54_4_IRQ" "MIV_IHC_C0_0:APP_IRQ_H4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PWM:PWM[0:0]" "PWM_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RPI_ID_I2C_IRQ" "RPi_ID_I2C:INT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RPi_ID_I2C:COREI2C_C0_SCL" "RPi_ID_SD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RPi_ID_I2C:COREI2C_C0_SDA" "RPi_ID_SC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"fabric_sd_emmc_demux_select_0:fabric_sd_emmc_demux_select_out" "fabric_sd_emmc_demux_select_out" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_MMASTER" "FIC_3_ADDRESS_GENERATION_1:APB_MMASTER" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"COREGPIO_C0:APB_bif" "FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_01xx" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CORE_I2C_C0_0_WRAPPER_1:APBslave" "FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_02xx" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreUARTapb_C0_0:APB_bif" "FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_03xx" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_0x43xx_xxxx_0x48xx_xxxx" "FIC_3_ADDRESS_GENERATION_1:FIC_3_0x43xx_xxxx_0x48xx_xxxx" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_00xx" "PWM:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4000_04xx" "RPi_ID_I2C:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_ADDRESS_GENERATION_1:FIC_3_0x4FFF_FFxx" "fabric_sd_emmc_demux_select_0:APBslave" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_ADDRESS_GENERATION_1:FIC_3_0x5xxx_xxxx" "MIV_IHC_C0_0:APB_0_M_INITIATOR" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign 
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "FIC_3_PERIPHERALS"
generate_component -component_name ${sd_name}
