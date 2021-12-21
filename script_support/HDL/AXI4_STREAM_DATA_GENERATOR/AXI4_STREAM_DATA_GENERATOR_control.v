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

module AXI4_STREAM_DATA_GENERATOR_control (
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
    INC = 1;


localparam
    TKEEP_WIDTH = 4,
    TSTRB_WIDTH = 32;    

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

