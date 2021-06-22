# PolarFire&reg; SoC Icicle Kit Reference Design Generation Tcl Scripts - Libero&reg; SoC v2021.1

## Description

This repository can be used to generate a reference design for the PolarFire SoC Icicle Kit. This reference design will have the same or extended functionality compared to the pre-programmed FPGA design on the Icicle Kit.

Libero SoC Tcl scripts are provided to generate the reference design using Libero SoC along with device specific I/O constraints. For information on which script to run for each configuration see the [eMMC and SD cards](#emmc-sd) section. For Tcl scripts supporting previous versions of Libero SoC see [Releases](https://github.com/polarfire-soc/icicle-kit-reference-design/releases).

This repository supports Libero SoC v2021.1, which is available for download [here](https://www.microsemi.com/product-directory/design-resources/1750-libero-soc#downloads).

## Using the reference design generation Tcl scripts

#### Standard design generation

To generate the standard reference design which is capable of running the majority of bare metal example applications and run Linux&reg; the following flow can be used:

1. Clone or download the repository
2. Open Libero v2021.1
3. Open the execute script dialog (CTRL + U)
4. Execute the script for the design required (e.g "ICICLE_KIT_eMMC.tcl")
5. Configure the design if required
6. Run the Libero SoC design flow to program a device

#### Argument based design generation

Some bare metal examples and tutorials require a specific fabric configuration which cannot be achieved in the standard base design, for example to test I2C loopback the MSS must be reconfigured to route I2C1 to the fabric and bi directional buffers then need to be instantiated along with additional constraints. These configurations are achieved by passing an argument to Libero when generating the design. Arguments will generate a standard base design and apply design changes on top of that configuration. Supported arguments are:

| Argument             	| Description                                                                                                                                                                                                                                                                         	|
|----------------------	|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| I2C_LOOPBACK         	| Routes I2C0 and I2C1 to the fabric and connects them to bibufs routed to Raspberry Pi&reg; I/Os. Associates I2C loopback constraints for I/O. This design can be used with the I2C loopback bare metal example project and will still boot Linux but the PAC1934 will be inaccessible. I2C0_SCL is routed to pin 29 of the Raspberry Pi I/O and I2C1_SCL is routed to pin 31. I2C0_SDA is routed to pin 35 and I2C1_SDA is routed to pin 37. Connecting / closing pins 29 and 31 and pins 35 and 37 of the Raspberry Pi I/O header will achieve I2C loopback. 	|
| BFM_SIMULATION           	| Generates a smart design test bench based on the reference design and imports custom BFM scripts to generate transactions on MSS FICs. A custom DO file is also imported to add waves and run the simulation.                                                                                                                                                                                                                           	|

Arguments in the table above can only be used exclusively - i.e you cannot pass "I2C_LOOPBACK" and "BFM_SIMULATION" as arguments.

Additional arguments are also supported to modify or configure aspects of the design flow that will be run. Supported arguments are:

| Argument           	| Description                                                                                                                                                                                                                                                                                                                                	|
|--------------------	|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| HSS_UPDATE         	| Downloads the HSS release hex file associated with this release of the reference design. The hex file is added as an eNVM client in Libero.  This argument requires wget to be installed. This is installed by default on most Linux systems, on Windows&reg; wget is installed as part of MSYS2, to install MSYS2 and configure it to work with Libero follow the steps shown [here](https://github.com/polarfire-soc/polarfire-soc-documentation/blob/master/software-development/polarfire-soc-software-tool-flow.md#configuring-msys2-on-windows). 	|
| SYNTHESIZE         	| Runs the synthesis step after design generation has completed                                                                                                                                                                                                                                                                              	|
| PLACEROUTE         	| Runs the synthesis and place and route steps after design generation has completed                                                                                                                                                                                                                                                         	|
| VERIFY_TIMING      	| Runs the synthesis, place and route and timing verification steps after design generation has completed                                                                                                                                                                                                                                    	|
| GENERATE_BITSTREAM 	| Runs the full design flow after generating a design                                                                                                                                                                                                                                                                                        	|
| PROGRAM            	| Runs the full design flow after generating a design and programs a connected device.  Note: the device must be connected when the "Run PROGRAM Action" stage of the design flow is reached and only one device should be connected                                                                                                         	|
| EXPORT_FPE         	| Runs the full design flow after generating a design and exports a FlashPro Express file to the local directory                                                                                                                                                                                                                             	|
| EXPORT_FPE:PATH    	| Runs the full design flow after generating a design and exports a FlashPro Express file to a specified path e.g EXPORT_FPE:/home/user/jobs/                                                                                                                                                                                                	|

**Note:** The arguments listed in the table above can be used with other arguments - i.e you can pass "I2C_LOOPBACK", "HSS_UPDATE" and "PROGRAM" as arguments.

The design flow for using arguments is the same as the standard flow, ensuring the argument is passed at script execution time:

1. Clone or download the repository
2. Open Libero v2021.1
3. Open the execute script dialog (CTRL + U)
4. Select the script for the design required (e.g "ICICLE_KIT_eMMC.tcl")
6. Add any required arguments (e.g "I2C_LOOPBACK HSS_UPDATE PROGRAM")

**Note:** arguments should not be put in quotes and are separated by a space when using the GUI.

7. Configure the design if required
8. Run the Libero SoC design flow to program a device

#### Generating designs from the command line - no GUI

Libero has support to run Tcl scripts without launching a GUI, this can significantly reduce design generation time. Arguments can also be passed when generating from the command line.

To generate a design from the command line:

1. Clone or download the repository
2. Open a terminal in the directory containing the design generation scripts
3. Execute the command (example script names and arguments shown):
[path to Libero]/libero script: ICICLE_KIT_eMMC.tcl SCRIPT_ARGS:I2C_LOOPBACK+HSS_UPDATE+PROGRAM logfile: ICICLE_KIT_eMMC.log

**Note:** Arguments are separated by a "+" symbol when using the command line.

**Note:** Scripts will automatically generate an MSS component, using the PolarFire SoC MSS Configurator in batch mode, they then generate, instantiate and connect components and top level I/Os. Constraints are imported for top level I/O and floor planning which associated with Place and Route. Timing constraints are then generated and associated with Synthesis, Place and Route and Timing Verification. Some arguments may require part of the design flow to be run while executing a script.

**Note:**
  - In previous designs eMMC and SD cards could not be used simultaneously. This required providing separate designs supporting eMMC or SD cards. This Icicle Kit Reference Design release allows dynamic switching between eMMC and SD cards. However, scripts are still provided for both eMMC and SD cards. They will produce the same design and allow interim XML support until Libero SoC is updated. See the section "[eMMC and SD cards switching](#emmc-sd-switching)" for more information.
  - Dynamic eMMC and SD card switching allows the HSS to check if an SD card is inserted on system startup and boot from it if one is present. If there is no card inserted, the HSS will boot from the eMMC.

## Design description

### Block diagram

The diagram below outlines the FPGA fabric configuration and shows MSS I/Os used in this design:

![Block diagram](./block_diagram.svg)

### MSS peripherals
The following MSS peripherals are enabled:

| MSS Peripheral|Route to Device I/O| Board peripheral | Board Interface                     | Notes                                                        |
|---------------|-------------------|------------------|-------------------------------------|--------------------------------------------------------------|
| eMMC          | MSS I/Os BANK 4   | eMMC device      | N/A                                 |See<br> "eMMC and SD card switching"                          |
| USB           | MSS I/Os BANK 2   | USB OTG Phy      | J16 (Micro USB)                     |                                                              |
| SD/SDIO       | MSS I/Os BANK 4   | SD card socket   | N/A                                 |See<br> "eMMC and SD card switching"                          |
| GEM0          | SGMII I/Os BANK 5 | VSC8662 PHY Port0| J1 (RJ45 connector)                 |                                                              |
| GEM1          | SGMII I/Os BANK 5 | VSC8662 PHY Port1| J2 (RJ45 connector)                 |Management through<br> MSS I/Os BANK 2 B                      |
| QSPI          | Fabric / MSS I/Os | N/A              | J8/J44 (mikroBUS&trade; socket)     |DATA I/Os [3:2] to fabric.<br> Remaining signals <br>to MSS I/Os Bank 2|
| SPI0          | Fabric            | N/A              | J26 (Raspberry Pi connector)        |                                                              |
| MMUART0       | Fabric            | USB-UART PHY     | J11 (Micro USB)                     |                                                              |
| MMUART1       | Fabric            | USB-UART PHY     | J11 (Micro USB)                     |                                                              |
| MMUART2       | Fabric            | USB-UART PHY     | J11 (Micro USB)                     |                                                              |
| MMUART3       | Fabric            | USB-UART PHY     | J11 (Micro USB)                     |                                                              |
| MMUART4       | Fabric            | N/A              | J8/J44 (mikroBUS socket)            |                                                              |
| I2C0          | Fabric            | N/A              | J8/J44 (mikroBUS socket)            |                                                              |
| I2C1          | MSS I/Os BANK 2 B | PAC1934 sensor   | N/A                                 |                                                              |
| CAN0          | Fabric            | N/A              | J25 (Jumper)                        |                                                              |
| CAN1          | MSS I/Os BANK 2 B | N/A              | J27 (Jumper)                        |                                                              |
| GPIO2         | Fabric            | LEDs and Switches| N/A                                 |See block diagram for<br> enabled GPIOs                       |

**Note:** “Raspberry Pi is a trademark of the Raspberry Pi Foundation”.

### Memory map

| Server                  	| Bus          	| Receiver                	| Address range                 	|
|-------------------------	|--------------	|-------------------------	|-------------------------------	|
| MSS: FIC0               	| AXI4_mslave0 	| PF_PCIE_C0_0            	| 0x7000_0000 -> 0x2f_ffff_ffff 	|
| MSS: FIC0               	| AXI4_mslave1 	| MSS_LSRAM                	| 0x6100_0000 -> 0x6fff_ffff    	|
| MSS: FIC0               	| AXI4_mslave2 	| DMA_CONTROLLER          	| 0x6002_0000 -> 0x6002_ffff    	|
| MSS: FIC3               	| APBmslave2   	| CoreGPIO                	| 0x4200_0000 -> 0x42ff_ffff    	|
| MSS: FIC3               	| APBmslave3   	| RECONFIGURATION_INTERFACE	| 0x4300_0000 -> 0x43ff_ffff    	|
| MSS: FIC3               	| APBmslave3   	| RECONFIGURATION_INTERFACE	| 0x4800_0000 -> 0x48ff_ffff    	|
| MSS: FIC3               	| APBmslave15  	| SDIO_register            	| 0x4f00_0000 -> 0x4fff_ffff    	|
| PF_PCIE_C0_0            	| AXI4_mslave0 	| MSS: FIC0               	| 0x6000_0000 -> 0xbfff_ffff    	|
| PF_PCIE_C0_0            	| AXI4_mslave1 	| PCIE_LSRAM               	| 0x0 -> 0xfff                  	|
| DMA_CONTROLLER           	| AXI4_mslave0 	| MSS: FIC1               	| 0xc000_0000 -> 0xcfff_ffff    	|

### Interrupt map

| Source                	| IRQ                	|
|-----------------------	|--------------------	|
| MSS_GPIO_2_28 \| SW1  	| MSS_INT_FTM[0]     	|
| PF_PCIE               	| MSS_INT_FTM[1]     	|
| DMA_CONTROLLER         	| MSS_INT_FTM[2]     	|
| MSS_GPIO_2_26 \| SW2  	| MSS_GPIO_2_INT[30] 	|
| MSS_GPIO_2_27 \| SW3  	| MSS_GPIO_2_INT[31] 	|

## Programming the FPGA

Once the scripts have completed, the Libero SoC design flow can be run by double clicking on a stage in the design flow on the left hand side of Libero - selecting an option requiring previous steps to be completed will run the full flow, i.e double clicking "Run Program Action" will run any required steps, such as, "Synthesize", "Place and Route", etc and then program the device.

## Board configuration

For Icicle Kit jumper configurations used by this design and Linux images for eMMC and SD Cards see: [Updating PolarFire SoC Icicle-Kit FPGA Design and Linux Image](https://github.com/polarfire-soc/polarfire-soc-documentation/blob/master/boards/mpfs-icicle-kit-es/updating-icicle-kit/updating-icicle-kit-design-and-linux.md).

## MSS Configuration

The Microprocessor Subsystem (MSS) is configured using the PolarFire SoC MSS Configurator.
This software tool takes user inputs and generates an MSS configuration file (.xml) along with an MSS component file (.cxz).
The XML file is used by the PolarFire SoC Configuration Generator to generate configuration header files for bare metal applications.
The MSS component file can be imported into a Libero SoC design and used in the FPGA design flow.

A saved configuration for the PolarFire SoC MSS Configurator is available for both the eMMC and SD card designs in the "script_support" folder and can be opened by the PolarFire SoC MSS Configurator. These configurations will match the MSS configuration used in the design and can be used to regenerate XML and a Libero component.

## XML

The Microcontroller Subsystem (MSS) configuration is captured in an XML file that is then used by the PolarFire SoC Configuration Generator to generate configuration header files. These header files are compiled as part of the MPFS HAL startup code to configure the system at power on.

XML generated for both the eMMC and SD card configurations is provided in the "XML" folder.

## BFM Simulation

A SmartDesign test bench will be generated along with the SmartDesign containing the reference design. This test bench will allow the user to run BFM simulations of the PolarFire SoC MSS. A custom wave.do file is imported to add signals and updated BFM scripts are also imported. To run a BFM simulation:
1. Open the "Stimulus Hierarchy" in Libero SoC
2. Right click on "Test_bench" from the hierarchy
3. Select "Simulate Pre-Synth Design" and "Open Interactively"

Commands for BFM simulations can be updated by editing the ".vec" files in the Simulation folder which is accessible under the "Files" tab of Libero SoC.

## Setting the boot mode and programming the eNVM

### Boot mode 0

Boot mode 0 will put all of the MSS cores into WFI (Wait For Interrupt) mode on power on, the cores will not boot until debugged. SoftConsole v6.5 or later can be used to set the PolarFire SoC boot mode to 0:
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

<a name="emmc-sd"></a>
## eMMC and SD Cards

The PolarFire SoC Icicle Kit has the ability to use eMMC and SD cards as non-volatile storage. Linux builds and / or bare metal applications can be stored in a HSS payload which is in turn stored in non-volatile storage. Using eMMC the user will have access to 8GB of on-board eMMC flash storage which can be programmed using the HSS. Using an SD card users can use the storage capacity of the card, program it directly on their PC and quickly switch between cards to change the payload being run on a kit.

SD cards and eMMC cannot be used simultaneously as the MSS I/Os for the eMMC and SD cards are muxed together. The Icicle Kit features a de-mux connected to these MSS I/Os, the de-mux is controlled by 2 select signals, called SDIO_SEL_{0:1}, which are connected to the FPGA fabric. When the select signals are low the de-mux connects the MSS I/Os to the eMMC controller, when the select signals are high the de-mux connects the MSS I/Os to the SD card controller.

The MSS configurator doesn't currently allow generating a configuration that supports the behavior described above. This behavior is achieved using overwrites in the HSS. To allow generation of designs using allowed configurations two scripts are provided: "ICICLE_KIT_eMMC.tcl" and "ICICLE_KIT_SD_CARD.tcl". These both generate the same FPGA fabric configuration and support the same arguments. They will generate XML for eMMC or SD cards but will not generate XML that supports both. The HSS can be used to work around the exclusive eMMC or SD card limitation. The eMMC and SD card scripts will be merged after a future Libero release provides support for the required features.

<a name="emmc-sd-switching"></a>
### eMMC and SD card switching

In previous versions of this design the SDIO_SEL_{0:1} signals were tied low to enable eMMC or tied high to enable the SD card; this required re-programming the FPGA to switch between SD or eMMC configurations. The Icicle Kit reference design and MPFS HAL have been updated to support dynamically switching between these configurations without having to re-program the FPGA.

The SDIO_SEL_{0:1} signals are now driven by a bit present in a fabric register - this bit resets to output low selecting the eMMC configuration by default. To select the SD card configuration, software must set the lowest bit in the SDIO_register high and re-configure MSS I/Os as required. As the SDIO_register is located at address 0x4f00_0000, writing 1 to this address will set the register bit.

HSS build v0.99.15 and greater has support for dynamic switching by re-configuring the MSS I/Os to select the SD configuration. The HSS will attempt to initialize an SD card on startup, if this initialization fails (e.g card not inserted) the HSS will print an MMC initialization failure message, switch the MSS I/O configuration to eMMC and set the SDIO_register bit low and attempt to initialize the eMMC. Once a memory source has been successfully initialized a success message will be printed.

**Note:** currently these updates are not fully supported by the Libero SoC design suite - to accommodate this the MPFS HAL will be updated with a define to allow dynamic switching. As a result of this we will continue to provide separate eMMC and SD card scripts to generate MSS XML for each configuration until Libero SoC has full support for these updates.


Linux® is the registered trademark of Linus Torvalds in the U.S. and other countries.
Raspberry Pi is a trademark of the Raspberry Pi Foundation.
All other trademarks are the property of their respective owners.
