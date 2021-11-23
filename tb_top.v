//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Nov 19 17:06:16 2021
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_top.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::PolarFireSoC> <Die::MPFS460T> <Package::FCG1152_Eval>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module tb_top;

parameter SYSCLK_PERIOD = 100;// 10MHZ

reg SYSCLK;
reg NSYSRESET;

//user defined inputs
    reg tready, tlast, tvalid;
    reg [1:0] tdest;
    reg [3:0] tkeep;
    reg [7:0] tid;
    reg [31:0] tstrb, tdata;
    


initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    tready = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 2 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top
//////////////////////////////////////////////////////////////////////
top top_0 (
    // Inputs
    .ACLK(SYSCLK),
    .RSTN(NSYSRESET),
    .TREADY(tready),

    // Outputs
    .TDEST(tdest ),
    .TID(tid ),
    .TKEEP(tkeep ),
    .TLAST(tlast ),
    .TVALID(tvalid ),
    .TSTRB(tstrb ),
    .TDATA(tdata )

    // Inouts

);

initial
begin

    #(SYSCLK_PERIOD * 2)
    t_ready(15);
    rst();
    t_ready(12);
    rst();




end


//////////////////////////////////////////////////////////////////////
// Task Definitions
//////////////////////////////////////////////////////////////////////


task t_ready (
    input integer num
    );
begin
    @ (posedge SYSCLK) tready = 1'b1;    
    repeat (num) begin
        # SYSCLK_PERIOD; 
    end    
    tready = 1'b0;
end    
endtask


task rst ();
begin
    NSYSRESET = 1'b0;
    # (SYSCLK_PERIOD * 2) NSYSRESET = 1'b1;
end 
endtask




endmodule

