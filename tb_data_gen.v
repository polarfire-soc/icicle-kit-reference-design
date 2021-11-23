//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Nov 19 16:33:00 2021
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_data_gen.v
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

module tb_data_gen;

parameter SYSCLK_PERIOD = 100;// 10MHZ

reg SYSCLK;
reg NSYSRESET;

reg [31:0] tdata;
reg valid, en;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
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
// Instantiate Unit Under Test:  data_gen
//////////////////////////////////////////////////////////////////////
data_gen data_gen_0 (
    // Inputs
    .ACLK(SYSCLK),
    .RSTN(NSYSRESET),
    .en(en),

    // Outputs
    .TDATA(tdata),
    .VALID(valid)

    // Inouts

);


initial 
begin
    #(SYSCLK_PERIOD * 2 )
    enable (10);
    rst();
    enable(5);
    

end




task enable (
    input integer number
    );
begin
    @ (posedge SYSCLK) en = 1'b1;
    repeat (number) begin
        # SYSCLK_PERIOD;
    end
    en = 1'b0;
end
endtask


task rst ();
begin
    NSYSRESET = 1'b0;
    # (SYSCLK_PERIOD * 2) NSYSRESET = 1'b1;
end 
endtask


endmodule

