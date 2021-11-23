///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Microchip Technology 
//
// File: top.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// AXI4 Stream top level module
//
// Targeted device: <Family::PolarFireSoC> <Die::MPFS460T> <Package::FCG1152_Eval>
// Author: Patrick Owens
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module top(ACLK, RSTN, TREADY, TDEST, TID, TKEEP, TLAST, TVALID, TSTRB, TDATA );

input ACLK, RSTN, TREADY;

output   [1:0]   TDEST;
output   [7:0]   TID;
output   [3:0]   TKEEP;
output   TLAST,  TVALID;
output   [31:0]  TSTRB, TDATA;

    
    data_gen generator  (.ACLK(ACLK), .RSTN(RSTN), .en(TREADY), .TDATA(TDATA), .VALID(TVALID));
    axi4_stream control (.ACLK(ACLK), .RSTN(RSTN), .TLAST(TLAST), .TDEST(TDEST), .TID(TID), .TKEEP(TKEEP), .TSTRB(TSTRB), .VALID(TVALID));
    



endmodule

