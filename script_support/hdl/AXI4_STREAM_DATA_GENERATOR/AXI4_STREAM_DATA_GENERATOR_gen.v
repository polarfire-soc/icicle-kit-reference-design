////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2022, Microchip Corporation
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
// Copyright (c) 2022, Microchip Corporation 
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

module AXI4_STREAM_DATA_GENERATOR_gen (
                input wire clk,
                input wire rst_n,
                input en,
                input wire [31:0] trans_size,                
                output wire tlast,
                output wire tvalid,
                output wire [1:0] tdest,                
                output wire [3:0] tkeep,
                output wire [7:0] tid,                              
                output wire [31:0] tstrb,
                output wire [31:0] tdata
                );

    localparam
        INC = 32'b1;
    
    localparam
        TKEEP_WIDTH = 4,
        TSTRB_WIDTH = 32;
    
    reg tlast_ff;
    reg [31:0] tdata_ff;
    wire [31:0] transSize_inter;
    wire [31:0] transSize_out;
    
    AXI4_STREAM_DATA_GENERATOR_DFF #(.N(32)) flipFlop_one (
        .clk(clk),
        .rst_n(rst_n),
        .in(trans_size),
        .out(transSize_inter)
    );
    AXI4_STREAM_DATA_GENERATOR_DFF #(.N(32)) flipFlop_two (
        .clk(clk),
        .rst_n(rst_n),
        .in(transSize_inter),
        .out(transSize_out)
    );
    
    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            tdata_ff <= 32'b0;
            tlast_ff <= 1'b0;
        end else begin
            if (en) begin
                if (tdata_ff == transSize_out) begin
                    tdata_ff <= 32'b0;
                    tlast_ff <= 1'b1;
                end else begin
                    tdata_ff <= tdata_ff + INC;
                    tlast_ff <= 1'b0;
                end
            end
        end
    end

    assign tdest = 2'b0;
    assign tid = 8'b0;

    assign tdata = tdata_ff;
    assign tvalid = (| tdata_ff);
    assign tlast = tlast_ff;
    
    assign tkeep = {TKEEP_WIDTH{(!(trans_size == tdata_ff) & (| tdata_ff))}};
    assign tstrb = {{(TSTRB_WIDTH - 4){1'b0}},{TKEEP_WIDTH{(!(trans_size == tdata_ff) & (| tdata_ff))}}};

endmodule
