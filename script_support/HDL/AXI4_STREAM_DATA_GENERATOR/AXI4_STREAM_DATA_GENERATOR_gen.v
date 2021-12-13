///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Microchip Technology
//
// File: data_gen.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// Data generation counter module
//
// Targeted device: <Family::PolarFireSoC> <Die::MPFS460T> <Package::FCG1152_Eval>
// Author: Patrick Owens
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module AXI4_STREAM_DATA_GENERATOR_gen (
                //input
                ACLK,
                RSTN,
                en,
                //output
                TDATA,
                VALID
                );
                
input ACLK, RSTN, en;
output [31:0] TDATA;
output VALID;
    
parameter
    INC = 1'b1;
    
    reg [31:0] tdata_ff, tdata_nxt;
    
    always @(posedge ACLK, negedge RSTN) begin
        if (!RSTN)  tdata_ff <= 0;
        else        tdata_ff <= tdata_nxt;                    
    end
    
    always @* begin        
        tdata_nxt = tdata_ff;                
        if ( en )   tdata_nxt = tdata_ff + INC;
    end

    assign TDATA = tdata_ff;
    assign VALID = | tdata_ff;

endmodule

