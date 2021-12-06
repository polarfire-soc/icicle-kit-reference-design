# AXI4 address shim readme

## Introduction

The AXI4 address shim is used to offset addresses on an AXI bus from a lower address range to a higher address range. It has an AXI4 target interface for source addresses and an AXI4 initiator interface for destination addresses. It will offset addresses from the 0x0 -> 0xFFFF_FFFC range to the 0x10_0000_0000 -> 0x10_FFFF_FFFC. This is used to give PCIe access to the upper DDR range in Linux applications. In reality any 32 bit addresses from the ranges above will be shifted but this will require DDR to be present at the offset memory address for the transaction to be valid.

For example a PCIe transaction to 0x8000_0400 will be offset to arrive at address 0x10_8000_0400.

This requires the correct configuration of address translation for PCIe, note this is already handled as part of the MPFS PCIe Linux driver.

## Ports

### AXI4 target interface

| Signal                | Width | Direction | Description                 |
|:----------------------|:------|:----------|:----------------------------|
| RESETN                | 1     | Input     | AXI bus reset signal        |
|                       |       |           |                             |
| INITIATOR_IN_ARREADY  | 1     | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_AWREADY  | 1     | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_BID      | 4     | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_BRESP    | 2     | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_BVALID   | 1     | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_RDATA    | 64    | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_RID      | 4     | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_RLAST    | 1     | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_RRESP    | 2     | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_RVALID   | 1     | Input     | See AMBA AXI4 specification |
| INITIATOR_IN_WREADY   | 1     | Input     | See AMBA AXI4 specification |
| INITIATOR_OUT_ARADDR  | 38    | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_ARBURST | 2     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_ARID    | 4     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_ARLEN   | 8     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_ARSIZE  | 2     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_ARVALID | 1     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_AWADDR  | 38    | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_AWBURST | 2     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_AWID    | 4     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_AWLEN   | 8     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_AWSIZE  | 2     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_AWVALID | 1     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_BREADY  | 1     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_RREADY  | 1     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_WDATA   | 64    | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_WLAST   | 1     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_WSTRB   | 8     | Output    | See AMBA AXI4 specification |
| INITIATOR_OUT_WVALID  | 1     | Output    | See AMBA AXI4 specification |
|                       |       |           |                             |
| TARGET_OUT_ARREADY    | 1     | Output    | See AMBA AXI4 specification |
| TARGET_OUT_AWREADY    | 1     | Output    | See AMBA AXI4 specification |
| TARGET_OUT_BID        | 4     | Output    | See AMBA AXI4 specification |
| TARGET_OUT_BRESP      | 2     | Output    | See AMBA AXI4 specification |
| TARGET_OUT_BVALID     | 1     | Output    | See AMBA AXI4 specification |
| TARGET_OUT_RDATA      | 64    | Output    | See AMBA AXI4 specification |
| TARGET_OUT_RID        | 4     | Output    | See AMBA AXI4 specification |
| TARGET_OUT_RLAST      | 1     | Output    | See AMBA AXI4 specification |
| TARGET_OUT_RRESP      | 2     | Output    | See AMBA AXI4 specification |
| TARGET_OUT_RVALID     | 1     | Output    | See AMBA AXI4 specification |
| TARGET_OUT_WREADY     | 1     | Output    | See AMBA AXI4 specification |
| TARGET_IN_ARADDR      | 32    | Input     | See AMBA AXI4 specification |
| TARGET_IN_ARBURST     | 2     | Input     | See AMBA AXI4 specification |
| TARGET_IN_ARID        | 4     | Input     | See AMBA AXI4 specification |
| TARGET_IN_ARLEN       | 8     | Input     | See AMBA AXI4 specification |
| TARGET_IN_ARSIZE      | 2     | Input     | See AMBA AXI4 specification |
| TARGET_IN_ARVALID     | 1     | Input     | See AMBA AXI4 specification |
| TARGET_IN_AWADDR      | 32    | Input     | See AMBA AXI4 specification |
| TARGET_IN_AWBURST     | 2     | Input     | See AMBA AXI4 specification |
| TARGET_IN_AWID        | 4     | Input     | See AMBA AXI4 specification |
| TARGET_IN_AWLEN       | 8     | Input     | See AMBA AXI4 specification |
| TARGET_IN_AWSIZE      | 2     | Input     | See AMBA AXI4 specification |
| TARGET_IN_AWVALID     | 1     | Input     | See AMBA AXI4 specification |
| TARGET_IN_BREADY      | 1     | Input     | See AMBA AXI4 specification |
| TARGET_IN_RREADY      | 1     | Input     | See AMBA AXI4 specification |
| TARGET_IN_WDATA       | 64    | Input     | See AMBA AXI4 specification |
| TARGET_IN_WLAST       | 1     | Input     | See AMBA AXI4 specification |
| TARGET_IN_WSTRB       | 8     | Input     | See AMBA AXI4 specification |
| TARGET_IN_WVALID      | 1     | Input     | See AMBA AXI4 specification |

## Design

The AXI4 address shim uses the reset along with the read and write valid signals in the AXI bus to offset addresses. When reset is asserted and there is a valid write or read an offset address will be produced based on the input address, otherwise (invalid write / read) the input address is passed through.

![AXI4 address shim design](./AXI4_address_shim.svg)

## System integration

This core is usually converted to be a HDL+ core when imported into Libero SoC, this allows BIFs (Bus Interfaces) to be added which collect all AMBA signals for a particular interface into one port for easier interaction and connection using SmartDesigns. The target interface of the core is connected to the AXI4 initiator interface of the PCIe block and the initiator interface of the core is connected to the target interface of the MSS.

![AXI4 address shim system integration](./AXI4_address_shim_system_integration.svg)
