////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2025, Microchip Corporation
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
// Copyright (c) 2025, Microchip Corporation
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

module MSS_reset_counter (
    // APB Interface
    input  wire        pclk,
    input  wire        presetn,
    input  wire        psel,
    input  wire        penable,
    input  wire        pwrite,
    input  wire [31:0] paddr,
    input  wire [31:0] pwdata,
    output reg  [31:0] prdata,
    output wire        pready,
    output wire        pslverr,

    // Control signals
    input  wire        por_resetn,
    input  wire        mss_resetn
);

//--------------------------------------------------------------------------
// Parameters
//--------------------------------------------------------------------------
localparam MSS_RESET_COUNT_ADDR = 8'h00;

//--------------------------------------------------------------------------
// Internal Signal Declarations
//--------------------------------------------------------------------------
reg [15:0] reg_mss_reset_count;

// Synchronizer registers
reg        sync_mss_reset_q;
reg        sync_mss_reset_qq;

// Decoding & Control Wires
wire addr_is_mss_reset_count = (paddr[7:0] == MSS_RESET_COUNT_ADDR);
wire apb_wr_valid            = psel && penable && pwrite;
wire apb_rd_valid            = psel && !penable && !pwrite; // Capture on Setup phase
wire mss_reset_rising_edge   = sync_mss_reset_q && !sync_mss_reset_qq;

//--------------------------------------------------------------------------
// APB Control Signals
//--------------------------------------------------------------------------
assign pready  = 1'b1; // Always ready, zero wait-state
assign pslverr = 1'b0; // No error responses

//--------------------------------------------------------------------------
//  MSS Reset Synchronizer
//--------------------------------------------------------------------------
always @(posedge pclk or negedge por_resetn) begin
    if (!por_resetn) begin
        sync_mss_reset_q  <= 1'b0;
        sync_mss_reset_qq <= 1'b0;
    end else begin
        sync_mss_reset_q  <= mss_resetn;
        sync_mss_reset_qq <= sync_mss_reset_q;
    end
end

//--------------------------------------------------------------------------
// Counter Logic
//--------------------------------------------------------------------------
always @(posedge pclk or negedge por_resetn) begin
    if (!por_resetn) begin
        reg_mss_reset_count <= 16'h0;
    end else begin
        if (apb_wr_valid && addr_is_mss_reset_count) begin
            reg_mss_reset_count <= pwdata[15:0];
        end
        else if (mss_reset_rising_edge) begin
            reg_mss_reset_count <= reg_mss_reset_count + 1'b1;
        end
    end
end

//--------------------------------------------------------------------------
// APB Read Logic
//--------------------------------------------------------------------------
always @(posedge pclk or negedge presetn) begin
    if (!presetn) begin
        prdata <= 32'h0;
    end else if (apb_rd_valid) begin
        case (paddr[7:0])
            MSS_RESET_COUNT_ADDR: prdata <= {16'h0, reg_mss_reset_count};
            default:              prdata <= 32'h0;
        endcase
    end else begin
        prdata <= 32'h0;
    end
end

endmodule