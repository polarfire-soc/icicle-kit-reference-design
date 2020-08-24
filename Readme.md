# PolarFire SoC Icicle Kit Sample Design scripts Libero v12.5

## Using the scripts
1. Clone the repository
2. Open Libero v12.5
3. Open the execute script dialog (CTRL + U)
4. Execute the script for the design required (e.g "ICICLE_KIT_eMMC.tcl") - there are no arguments
5. The libero design will be created in the same folder as the script
6. Configure if required and run the flow to program a device

## Programming the FPGA
The scripts will automatically import IO constraints and generate timing constraints for the design. The flow can be run by double clicking on a stage in the design flow - selecting an option requiring previous steps to be completed will run the full flow, i.e double clicking "Run Program Action" will run synthesis, place and route, etc and then program the device.

## Programming the eNVM and setting the boot mode
If the eNVM is to be used (for example to store the HSS) it can be programmed using SoftConsole v6.4 or later. 
Build the baremetal application using the reference XML provided (XML will also be generated in the script_support/components/[target] folder when an MSS component is generated as part of the flow) and run the "PolarFire SoC program non secure boot mode 1" external tool in SoftConsole.

## Board configuration
For jumper configurations to use this design and Linux images for eMMC and SD Cards see: [Updating PolarFire SoC Icicle-Kit FPGA Design and Linux Image](https://github.com/polarfire-soc/polarfire-soc-documentation/blob/master/boards/mpfs-icicle-kit-es/updating-icicle-kit/updating-icicle-kit-design-and-linux.md) 