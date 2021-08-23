module IPC_MAILBOX #(parameter MESSAGE_DEPTH = 1, parameter A_HART_ID = 0, parameter B_HART_ID = 1) (
    input wire logic        pclk,
    input wire logic        presetn,
    input wire logic        a_penable,
    input wire logic        a_psel,
    input wire logic [5:0] a_paddr,
    input wire logic        a_pwrite,
    input wire logic [31:0] a_pwdata,
    output     logic [31:0] a_prdata,
    output     logic        a_pready,
    output     logic        a_pslverr,
    input wire logic        b_penable,
    input wire logic        b_psel,
    input wire logic [5:0] b_paddr,
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
    wire [5:0] a_paddr_net;
    wire a_pwrite_net;
    wire [31:0] a_pwdata_net;
    wire [31:0] a_prdata_net;
    wire a_pready_net;
    wire a_msg_present_irq_net;
    
    wire b_penable_net;
    wire b_psel_net;
    wire [5:0] b_paddr_net;
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
