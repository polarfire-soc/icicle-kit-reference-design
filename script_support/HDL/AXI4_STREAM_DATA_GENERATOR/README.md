# SDIO register readme

## Introduction

A demonstration of how to correctly configure and implement the AXI4 streaming interface on a CoreAXI4DMAController.
The demonstration consists of an IP block that will generate stream transactions on the AXI4 stream interface of the DMA controller. Transactions will consist of incrementing data and will be directed to DDR memory to benchmark performance.

## Ports

### AMBA AXI4 Stream interface signals

The following table describes the ports that are used in the AXI4 Stream interface:

| Signal  | Width | Direction | Description                                                   |
|:--------|:------|:----------|:--------------------------------------------------------------|
| TVALID    |   1   |   Output  |   TVALID indicates that the master is driving a valid transfer. |
| TREADY    |   1   |   Input   |   TREADY indicates that the slave can accept a transfer in the current cycle.  |
| TDATA     |   32  |   Output  |   TDATA is the primary payload that is used to provide the data that is passing across the interface.   |
| TSTRB     |   32  |   Output  |   Used to indicate data or null bytes. TSTRB mirrors TKEEP.   |   
| TKEEP     |   4   |   Output  |   Used to indicate data or null bytes. TKEEP mirrors TSTRB.   |   
| TLAST     |   1   |   Output  |   TLAST indicates the boundary of a packet.   |
| TID       |   8   |   Output  |   The identifier that indicates different streams of data.    |
| TDEST     |   2   |   Output  |   Provides routing information for the data stream.   |

### APB target interface

The following table describes the ports that are used in the APB interface:

| Signal  | Width | Direction | Description                                                   |
|:--------|:------|:----------|:--------------------------------------------------------------|
| pclk    | 1     | Input     | Clock source for the peripheral                               |
| presetn | 1     | Input     | Active high reset for the peripheral                          |
| penable | 1     | Input     | Indicates a transaction has begun                             |
| psel    | 1     | Input     | Indicates this target has been selected                       |
| paddr   | 32    | Input     | Address selected                                              |
| pwrite  | 1     | Input     | If high indicates the transaction is a write, otherwise read. |
| pwdata  | 32    | Input     | Data to be written to the peripheral                          |
| prdata  | 32    | Output    | Data read from the peripheral                                 |
| pready  | 1     | Output    | Indicates a successful transaction                            |
| pslverr | 1     | Output    | Always 0, if high, indicates an error has occurred            |

### Misc

The following table describes the remaining ports:

| Signal  | Width | Direction | Description                                                   |
|:--------|:------|:----------|:--------------------------------------------------------------|
| ACLK      |   1   |   Input   |   Global clock signal, all signal are sampled on a rising edge.   |
| RSTN      |   1   |   Input   |   Global reset signal, active low.        |
| start     |   1   |   Input   |   Signal to initiate an AXI4 Stream transfer.   |

## Register Description

## Design

The stream transaction generation block is comprised of 2 sub-modules `data_gen.v` and `axi4_stream.v`.
`data_gen.v` generates a stream of incrementing sequential numbers. `axi4_stream.v` manages the control signals used for addressing and to signal the beginning and end of transfers.



The SDIO register has a simple design, a single register bit at offset 0x0 can be accessed using the APB target interface of the core. Internally the register bit is brought out as a top level output.

![Module Design](./AXI4_STREAM_DATA_GENERATOR.svg)

## System integration

This core is usually converted to be a HDL+ core when imported into Libero SoC, this allows BIFs (Bus Interfaces) to be added which collect all AMBA signals for a particular interface into one port for easier interaction and connection using SmartDesigns. The module is intended to be connected via an AXI4 Stream interface to a CoreAXI4DMAController. The module's output will generate dummy data to benchmark the performance of the CoreAXI4DMAController.


