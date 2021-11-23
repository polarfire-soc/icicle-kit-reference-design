//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Nov 19 09:22:53 2021
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_axi4_stream.v
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

module tb_axi4_stream;

parameter SYSCLK_PERIOD = 100;// 10MHZ

reg SYSCLK;
reg NSYSRESET;

reg t_last, valid;
reg [1:0] t_dest;
reg [3:0] t_keep;
reg [7:0] t_id;
reg [31:0] t_strb;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    valid = 1'b0;
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
// Instantiate Unit Under Test:  axi4_stream
//////////////////////////////////////////////////////////////////////
axi4_stream axi4_stream_0 (
    // Inputs
    .ACLK(SYSCLK),
    .RSTN(NSYSRESET),
    .valid(valid),

    // Outputs
    .TLAST(t_last),
    .TDEST(t_dest),
    .TID(t_id),
    .TKEEP(t_keep),
    .TSTRB(t_strb)

    // Inouts

);


//////////////////////////////////////////////////////////////////////
// Testbench
//////////////////////////////////////////////////////////////////////

initial
begin
    #(SYSCLK_PERIOD * 2 )
    transaction(15);    
    transaction(9);
    rst();
end



task transaction(
    input integer num
    );   
    
begin
    repeat( num )
    begin
        @(posedge SYSCLK) valid = 1'b1;
        //#(SYSCLK_PERIOD)       
    end
    valid = 1'b0;
end
endtask    

task rst ();
begin
    NSYSRESET = 1'b0;
    # (SYSCLK_PERIOD * 2) NSYSRESET = 1'b1;
end 
endtask


endmodule

