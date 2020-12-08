# PolarFire SoC Icicle Kit Reference Design Generation Tcl Scripts - Libero v12.6

## Description

This repository can be used to generate a reference design for the PolarFire SoC Icicle Kit. This reference design will have the same or extended functionality compared to the pre-programmed FPGA design on the Icicle Kit.

Libero SoC Tcl scripts are provided to generate the reference design using Libero SoC along with device specific I/O constraints. For information on which script to run for each configuration see the "eMMC and SD cards" section. For Tcl scripts supporting previous versions of Libero SoC see "Releases".

## Using the Reference Design Generation Tcl Scripts

**To run the scripts:**
1. Clone the repository
2. Open Libero v12.6
3. Open the execute script dialog (CTRL + U)
4. Execute the script for the design required (e.g "ICICLE_KIT_eMMC.tcl")
**Note:**
        Scripts will automatically generate an MSS component, using the PolarFire SoC MSS Configurator in batch mode, they then generate, instantiate and connect components and top level I/Os. Constraints are imported for top level I/O and associated with Place and Route. Timing constraints are then generated and associated with Synthesis, Place and Route and Timing.
5. Configure the design if required and run the Libero SoC design flow to program a device

**Note:**
    - In previous designs eMMC and SD cards could not be used simultaneously. This required providing separate designs supporting eMMC or SD cards. This Icicle Kit Reference Design release allows dynamic switching between eMMC and SD cards. However, scripts are still provided for both eMMC and SD cards. They will produce the same design and allow interim XML support until Libero SoC is updated. See the section "eMMC and SD cards switching" for more information.
    - Dynamic eMMC and SD cards switching allows the HSS to check if an SD card is inserted on system startup and boot it if one is present and if there is no card inserted revert to booting from the eMMC.

## Design description

### Block diagram

The diagram below outlines the FPGA fabric configuration and shows MSS I/Os used in this design:

![Block diagram](./block_diagram.svg)

### MSS peripherals
The following MSS peripherals are enabled:

| Peripheral 	| Routing           	| Notes                                     	|
|------------	|-------------------	|-------------------------------------------	|
| eMMC       	| MSS I/Os BANK 4   	| See "eMMC and SD card switching"          	|
| USB        	| MSS I/Os BANK 2   	|                                           	|
| SD/SDIO    	| MSS I/Os BANK 4   	| See "eMMC and SD card switching"          	|
| GEM 0      	| SGMII I/Os BANK 5 	|                                           	|
| GEM 1      	| SGMII I/Os BANK 5 	| Management through MSS I/Os BANK 2 B      	|
| SPI 1      	| MSS I/Os BANK 2 B 	|                                           	|
| MMUART 0   	| Fabric            	|                                           	|
| MMUART 1   	| Fabric            	|                                           	|
| MMUART 2   	| Fabric            	|                                           	|
| MMUART 3   	| Fabric            	|                                           	|
| I2C 1      	| MSS I/Os BANK 2 B 	|                                           	|
| CAN 0      	| Fabric            	|                                           	|
| CAN 1      	| MSS I/Os BANK 2 B 	|                                           	|
| GPIO 2     	| Fabric            	| See block diagram for enabled GPIOs       	|

### Memory map

| Server                  	| Bus          	| Receiver                	| Address range                 	|
|-------------------------	|--------------	|-------------------------	|-------------------------------	|
| MSS: FIC0               	| AXI4_mslave0 	| PF_PCIE_C0_0            	| 0x7000_0000 -> 0x2f_ffff_ffff 	|
| MSS: FIC0               	| AXI4_mslave1 	| LSRAM_0                 	| 0x6100_0000 -> 0x6fff_ffff    	|
| MSS: FIC0               	| AXI4_mslave2 	| COREAXI4DMACONTROLLER_0 	| 0x6002_0000 -> 0x6002_ffff    	|
| MSS: FIC3               	| APBmslave2   	| CoreGPIO                	| 0x4200_0000 -> 0x42ff_ffff    	|
| MSS: FIC3               	| APBmslave3   	| PF_DRI_C0_0             	| 0x4300_0000 -> 0x43ff_ffff    	|
| MSS: FIC3               	| APBmslave15  	| SDIO_register            	| 0x4f00_0000 -> 0x4fff_ffff    	|
| PF_PCIE_C0_0            	| AXI4_mslave0 	| MSS: FIC0               	| 0x6000_0000 -> 0xbfff_ffff    	|
| PF_PCIE_C0_0            	| AXI4_mslave1 	| LSRAM_1                 	| 0x0 -> 0xfff                  	|
| COREAXI4DMACONTROLLER_0 	| AXI4_mslave0 	| MSS: FIC1               	| 0xc000_0000 -> 0xcfff_ffff    	|

## Programming the FPGA

Once the scripts have completed, the Libero SoC design flow can be run by double clicking on a stage in the design flow on the left hand side of Libero - selecting an option requiring previous steps to be completed will run the full flow, i.e double clicking "Run Program Action" will run any required steps, such as, "Synthesize", "Place and Route", etc and then program the device.

## Board configuration

For Icicle Kit jumper configurations used by this design and Linux images for eMMC and SD Cards see: [Updating PolarFire SoC Icicle-Kit FPGA Design and Linux Image](https://github.com/polarfire-soc/polarfire-soc-documentation/blob/master/boards/mpfs-icicle-kit-es/updating-icicle-kit/updating-icicle-kit-design-and-linux.md).

## MSS Configuration

The Microprocessor Subsystem (MSS) is configured using the PolarFire SoC MSS Configurator.
This software tool takes user inputs and generates an MSS configuration file (.xml) along with an MSS component file (.cxz).
The XML file is used by the PolarFire SoC Configuration Generator to generate configuration header files for bare metal applications.
The MSS component file can be imported into a Libero SoC design and used in the FPGA design flow.

A saved configuration for the PolarFire SoC MSS Configurator is available for both the eMMC and SD card designs in the "script_support" folder. These configurations will match the MSS configuration used in the design and can be used to regenerate XML and a Libero component.

## XML

The Microcontroller Subsystem (MSS) configuration is captured in an XML file that is then used by the PolarFire SoC Configuration Generator to generate configuration header files. These header files are compiled as part of the MPFS HAL startup code to configure the system at power on.

XML generated for both the eMMC and SD card configurations is provided in the "XML" folder.

## Setting the boot mode and programming the eNVM

### Boot mode 0

Boot mode 0 will put all of the MSS cores into WFI (Wait For Interrupt) mode on power on, the cores will not boot until debugged. SoftConsole v6.4 or later can be used to set the PolarFire SoC boot mode to 0:
1. Connect the board to the PC using the embedded FlashPro6 or an external FlashPro and power on the board
2. In SoftConsole select the "External Tool" drop down menu
3. Select the "PolarFire SoC idle boot mode 0" configuration and run

### Boot mode 1

Boot mode 1 configures all of the MSS cores to boot from the eNVM, when setting the boot mode to 1 an eNVM client must also be provided An eNVM client can be a zero stage boot loader, such as the HSS, or a bare metal application. SoftConsole v6.4 and above or Libero SoC v12.6 and above can be used to set the boot mode and program the eNVM.

Build the bare metal application using the reference XML provided to configure the MPFS HAL (XML will also be generated in the script_support/components/[target] folder when an MSS component is generated as part of the flow).

#### Boot mode 1: SoftConsole

To set the PolarFire SoC boot mode to 1 and program an eNVM client in SoftConsole:
1. Select the project folder of the application to be used as an eNVM client in the project explorer
2. Connect the board to the PC using the embedded FlashPro6 or an external FlashPro and power on the board
3. In SoftConsole select the "External Tool" drop down menu
4. Select the "PolarFire SoC non-secure boot mode 1" configuration and run

#### Boot mode 1: Libero SoC

To set the PolarFire SoC boot mode to 1 and program and eNVM client in Libero:
1. Run the Libero SoC design flow so that "Generate FPGA Array Data" has completed and open the "Configure Design Initialization Data and Memories" tool
2. Select the "eNVM" tab
3. Select the "Add ..." option and select "Add Boot Mode 1" client
4. Navigate to the binary file to be used as a client and select ok
5. Save and add the client
6. Run the remainder of the Libero SoC design flow and program the device

## eMMC and SD Cards

The PolarFire SoC Icicle Kit has the ability to use eMMC and SD cards as non-volatile storage. Linux builds and / or bare metal applications can be stored in a HSS payload which is in turn stored in non-volatile storage. Using eMMC the user will have access to 8GB of on-board eMMC flash storage which can be programmed using the HSS. Using an SD card users can use the storage capacity of the card, program it directly on their PC and quickly switch between cards to change the payload being run on a kit.

SD cards and eMMC cannot be used simultaneously as the MSS I/Os for the eMMC and SD cards are muxed together. The Icicle Kit features a de-mux connected to these MSS I/Os, the de-mux is controlled by 2 select signals, called SDIO_SEL_{0:1}, which are connected to the FPGA fabric. When the select signals are low the de-mux connects the MSS I/Os to the eMMC controller, when the select signals are high the de-mux connects the MSS I/Os to the SD card controller.

### eMMC and SD card switching

In previous versions of this design the SDIO_SEL_{0:1} signals were tied low to enable eMMC or tied high to enable the SD card; this required re-programming the FPGA to switch between SD or eMMC configurations. The Icicle Kit reference design and MPFS HAL have been updated to support dynamically switching between these configurations without having to re-program the FPGA.

The SDIO_SEL_{0:1} signals are now driven by a bit present in a fabric register - this bit resets to output low selecting the eMMC configuration by default. To select the SD card configuration, software must set the lowest bit in the SDIO_register high and re-configure MSS I/Os as required. As the SDIO_register is located at address 0x4f00_0000, writing 1 to this address will set the register bit.

HSS build v0.99.14 and greater has support for dynamic switching by re-configuring the MSS I/Os to select the SD configuration. The HSS will attempt to initialize an SD card on startup, if this initialization fails (e.g card not inserted) the HSS will switch the MSS I/O configuration to eMMC and set the SDIO_register bit low and attempt to initialize the eMMC.

**Note:** currently these updates are not fully supported by the Libero SoC design suite - to accommodate this the MPFS HAL will be updated with a define to allow dynamic switching. As a result of this we will continue to provide separate eMMC and SD card scripts to generate MSS XML for each configuration until Libero SoC has full support for these updates.
