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

module top(ACLK, RSTN, TREADY, TDEST, TID, TKEEP, TLAST, TVALID, TSTRB, TDATA, start, pclk, presetn, penable, psel, paddr, pwrite, pwdata, prdata, pready, pslverr );

input pclk;
input presetn;
input penable;
input psel;
input [31:0] paddr;
input pwrite;
input [31:0] pwdata;
output [31:0] prdata;
output      pready;
output      pslverr;

reg [31:0] register;
reg [31:0] pr_data_int;
reg pready_int;

assign prdata = pr_data_int;
assign pready = pready_int;
assign pslverr = 1'b0;

input ACLK, RSTN, TREADY, start;

output   [1:0]   TDEST;
output   [7:0]   TID;
output   [3:0]   TKEEP;
output   TLAST,  TVALID;
output   [31:0]  TSTRB, TDATA;

reg started, valid_reg;
assign TVALID = valid_reg;

    always @(posedge ACLK) begin
        if (!RSTN) begin
            started <= 0;
            valid_reg <= 0;
        end else begin
            if (start) begin
                started <= 1;
            end else begin
                started <= 0;
            end
            
            if (!started) begin
                valid_reg <= 0;
            end else if (started) begin
                valid_reg <= 1;
            end
        end
    end
    
    always @(posedge pclk)
      begin
        if (!presetn) begin
            register <= 0;
            pr_data_int <= 0;
            pready_int <= 0;
        end else if (!pwrite && psel) begin
            pr_data_int <= register;
            pready_int <= 1;
        end else if (pwrite && psel) begin
            pr_data_int <= 0;
            register <= pwdata[31:0];
            pready_int <= 1;
        end else begin
            pr_data_int <= 0;
            pready_int <= 0;
        end
    end
    
    data_gen generator  (.ACLK(ACLK), .RSTN(RSTN), .en(TREADY), .TDATA(TDATA), .VALID());
    axi4_stream control (.ACLK(ACLK), .RSTN(RSTN), .TLAST(TLAST), .TDEST(TDEST), .TID(TID), .TKEEP(TKEEP), .TSTRB(TSTRB), .VALID((!started) ? started : TREADY), .trans_size(register)); // was valid reg
    
endmodule

