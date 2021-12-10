///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: axi4_stream.v
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

//`timescale <time_units> / <precision>

module axi4_stream (
                    //input
                    ACLK,
                    RSTN,
                    VALID,
                    trans_size,
                    
                    //output
                    TLAST,
                    TDEST,
                    TID,
                    TKEEP,
                    TSTRB                    
                    );

parameter   TRANSFER_SIZE =10;

input   ACLK,   RSTN,   VALID; 
input [31:0] trans_size;

output   TLAST;
output   [1:0]   TDEST;
output   [3:0]   TKEEP;   
output   [7:0]   TID; 
output   [31:0]  TSTRB;    

parameter 
    INC = 1,
    TX_SIZE = 2097152;


localparam
    TKEEP_WIDTH = 4,
    TSTRB_WIDTH = 32,
    TX_SIZE_INT = TX_SIZE - 2;    

    reg tlast_ff, tlast_nxt;        
    reg [31:0] trans_ff, trans_nxt;          
    
    
    always @(posedge ACLK, negedge RSTN) begin
    
        if(!RSTN) begin
        
            tlast_ff <= 1'b0;
            trans_ff <= 1'b0;
            
        end else begin              
        
            tlast_ff <= tlast_nxt;
            trans_ff <= trans_nxt;
            
        end
    end
        
        
    always @* begin
    
        //default values        
        tlast_nxt = tlast_ff;
        trans_nxt = trans_ff;
        
        
        if (VALID) begin
            if (trans_ff == trans_size) begin
                trans_nxt = 1'b0;
                tlast_nxt = 1'b1;          
            
            end else begin
            
                trans_nxt = trans_ff + INC;
                tlast_nxt = 1'b0;
                
            end                                        
        end
    end
    
    
    //output assignments
    assign  TLAST = tlast_ff;
    assign TDEST = 2'b0;
    assign TID = 8'b0;
    assign TKEEP = {TKEEP_WIDTH{(| VALID)}} & {TKEEP_WIDTH{!tlast_ff}};
    assign TSTRB = {{(TSTRB_WIDTH - 4){1'b0}},{TKEEP_WIDTH{(| VALID)}}} & {TSTRB_WIDTH{!tlast_ff}};
    
endmodule

