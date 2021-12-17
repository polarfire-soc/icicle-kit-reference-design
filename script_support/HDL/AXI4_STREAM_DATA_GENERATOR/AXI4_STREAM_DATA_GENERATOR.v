////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2021, Microchip Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROCHIP CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// APACHE LICENSE
// Copyright (c) 2021, Microchip Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
////////////////////////////////////////////////////////////////////////////////

//`timescale <time_units> / <precision>

module AXI4_STREAM_DATA_GENERATOR(ACLK, RSTN, TREADY, TDEST, TID, TKEEP, TLAST, TVALID, TSTRB, TDATA, start, pclk, presetn, penable, psel, paddr, pwrite, pwdata, prdata, pready, pslverr );

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

reg [31:0] tx_size_reg;
reg [31:0] pr_data_int;
reg pready_int, started;

assign prdata = pr_data_int;
assign pready = pready_int;
assign pslverr = 1'b0;

input ACLK, RSTN, TREADY, start;

output   [1:0]   TDEST;
output   [7:0]   TID;
output   [3:0]   TKEEP;
output   TLAST,  TVALID;
output   [31:0]  TSTRB, TDATA;

assign TVALID = started;

    always @(posedge ACLK) begin
        if (!RSTN) begin
            started <= 0;
        end else begin
            if (start) begin
                started <= 1;
            end else begin
                started <= 0;
            end            
        end
    end
    
    always @(posedge pclk)
      begin
        if (!presetn) begin
            tx_size_reg <= 0;
            pr_data_int <= 0;
            pready_int <= 0;
        end else if (!pwrite && psel) begin
            pr_data_int <= tx_size_reg;
            pready_int <= 1;
        end else if (pwrite && psel) begin
            pr_data_int <= 0;
            tx_size_reg <= pwdata[31:0];
            pready_int <= 1;
        end else begin
            pr_data_int <= 0;
            pready_int <= 0;
        end
    end
    
    AXI4_STREAM_DATA_GENERATOR_control control (.ACLK(ACLK), .RSTN(RSTN), .TLAST(TLAST), .TDEST(TDEST), .TID(TID), .TKEEP(TKEEP), .TSTRB(TSTRB), .VALID((!started) ? started : TREADY), .trans_size(tx_size_reg));
    AXI4_STREAM_DATA_GENERATOR_gen generator  (.ACLK(ACLK), .RSTN(RSTN), .en(TREADY), .TDATA(TDATA), .VALID());
    
endmodule

