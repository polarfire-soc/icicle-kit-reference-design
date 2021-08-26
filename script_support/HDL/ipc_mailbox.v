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

module IPC_MAILBOX #(parameter MESSAGE_DEPTH = 1, parameter A_HART_ID = 0, parameter B_HART_ID = 1) (
    input wire logic        pclk,
    input wire logic        presetn,
    input wire logic        a_penable,
    input wire logic        a_psel,
    input wire logic [5:2] a_paddr,
    input wire logic        a_pwrite,
    input wire logic [31:0] a_pwdata,
    output     logic [31:0] a_prdata,
    output     logic        a_pready,
    output     logic        a_pslverr,
    input wire logic        b_penable,
    input wire logic        b_psel,
    input wire logic [5:2] b_paddr,
    input wire logic        b_pwrite,
    input wire logic [31:0] b_pwdata,
    output     logic [31:0] b_prdata,
    output     logic        b_pready,
    output     logic        b_pslverr,
    output     logic        a_msg_present_irq,
    output     logic        b_msg_present_irq,
    output     logic        a_msg_ack_irq,
    output     logic        b_msg_ack_irq
    );  
    
    wire a_penable_net;
    wire a_psel_net;
    wire [3:0] a_paddr_net;
    wire a_pwrite_net;
    wire [31:0] a_pwdata_net;
    wire [31:0] a_prdata_net;
    wire a_pready_net;
    wire a_msg_present_irq_net;
    
    wire b_penable_net;
    wire b_psel_net;
    wire [3:0] b_paddr_net;
    wire b_pwrite_net;
    wire [31:0] b_pwdata_net;
    wire [31:0] b_prdata_net;
    wire b_pready_net;
    wire b_msg_present_irq_net;
    
    assign a_pslverr = 0;
    assign b_pslverr = 0;
    
    assign a_penable_net = a_penable;
    assign a_psel_net = a_psel;
    assign a_paddr_net = a_paddr;
    assign a_pwrite_net = a_pwrite;
    assign a_pwdata_net = a_pwdata;
    assign a_prdata = a_prdata_net;
    assign a_pready = a_pready_net;
    assign a_msg_present_irq = a_msg_present_irq_net;
    
    assign b_penable_net = b_penable;
    assign b_psel_net = b_psel;
    assign b_paddr_net = b_paddr;
    assign b_pwrite_net = b_pwrite;
    assign b_pwdata_net = b_pwdata;
    assign b_prdata = b_prdata_net;
    assign b_pready = b_pready_net;
    assign b_msg_present_irq = b_msg_present_irq_net;
    
    mailbox_ctrl #(.MESSAGE_DEPTH(MESSAGE_DEPTH), .A_HART_ID(A_HART_ID), .B_HART_ID(B_HART_ID)) amp_mailbox_ctrl (
    .clk(pclk),
    .resetn(presetn),
    .a_write_in((a_penable_net && a_psel_net && a_pwrite_net)),
    .a_read_in((a_penable_net && a_psel_net && !a_pwrite_net)),
    .a_addr(a_paddr_net),
    .a_wdata(a_pwdata_net),
    .a_ready(a_pready_net),
    .a_rdata(a_prdata_net),
    .a_msg_present(a_msg_present_irq_net),
    .a_msg_ack(a_msg_ack_irq),
    .b_write_in((b_penable_net && b_psel_net && b_pwrite_net)),
    .b_read_in((b_penable_net && b_psel_net && !b_pwrite_net)),
    .b_addr(b_paddr_net),
    .b_wdata(b_pwdata_net),
    .b_ready(b_pready_net),
    .b_rdata(b_prdata_net),
    .b_msg_present(b_msg_present_irq_net),
    .b_msg_ack(b_msg_ack_irq)
    );

endmodule
