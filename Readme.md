#PolarFire SoC Icicle Kit MTD and Demo Libero Design

Design creation scripts are found in the ./Designs folder under the appropriate part

To create designs using the scripts:
1. Clone the repository
2. Open Libero v12.4
3. Open the execute script dialog (CTRL + U)
4. Execute the script for the design required (e.g "./Designs/ES parts/icicle_kit_mtd/ICICLE_KIT_eMMC.tcl") - there are no arguments
5. The libero design will be created in the same folder as the script
6. Configure if required and run the flow to program a device

To program a device:
1. Open FlashPro Express ("FPExpress" in start)
2. Select "New"
3. Select the job file to program with
4. When the programming screen opens, click "Run"

Tested features:
GPIOs
MMUART 0 - 3
eMMC

To use scripts please use Libero version 12.900.0.16
* This is the release version available from microsemi.com, it is recommended to install this version! https://www.microsemi.com/product-directory/design-resources/1750-libero-soc
* Alternatively captures for Windows and Linux can be found here: https://microchiptechnology-my.sharepoint.com/:f:/g/personal/hugh_breslin_microchip_com/EpA9Ab1DO2hKjrVFQtvexFkBqJj0j57VSCHgZBaof5SxOg?e=gXA78W

To use FPExpress projects please use FPExpress v12.4
* It is installed as part of the Programming and Debug tools here: https://www.microsemi.com/product-directory/programming/4977-flashpro#software
* FlashPro and FPExpress are different programs

Changing MSS Configuration:
* The MSS can be reconfigured by passing arguments to the script - all available configuration parameters can be found in the "GENERATED_TCL_PARAMETERS.tcl" file accompanying each design. 
* To change a parameter pass the updated value as a script arguments
* E.G to change to boot mode 1 pass the following argument: BOOT_MODE:MODE1 
* Multiple arguments can be passed in any oreder - note these do not re-configure the design in any way, system conigurations such as clocks and resets, boot mode etc can be changed but none of these changes will alter the design
 
	
Board jumper configuration:
* J15 - Open
* J17 - Open
* J24 - Open
* J31 - Open
* J46 - Closed
* J34 - 1 & 2
* J43 - 1 & 2