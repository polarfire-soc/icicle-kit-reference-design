module mailbox_ctrl #(parameter MESSAGE_DEPTH = 1, parameter A_HART_ID = 0, parameter B_HART_ID = 1)(
    input wire logic            clk,
    input wire logic            resetn,
    input wire logic            a_write_in,
    input wire logic            a_read_in,
    input wire logic [5:0]      a_addr,
    input wire logic [31:0]     a_wdata,
    output wire logic           a_ready,
    output wire logic [31:0]    a_rdata,
    output wire logic           a_msg_present,
    output wire logic           a_msg_ack,
    
    input wire logic            b_write_in,
    input wire logic            b_read_in,
    input wire logic [5:0]      b_addr,
    input wire logic [31:0]     b_wdata,
    output wire logic           b_ready,
    output wire logic [31:0]    b_rdata,
    output wire logic           b_msg_present,
    output wire logic           b_msg_ack
    );                      
    
    localparam IP_VERSION = 1;
    localparam message_depth = 3;
    
    // declarations
    
    // GLOBAL 
    
    // A SIDE
    reg [31:0]  A_READ_DATA;
    wire [31:0]  A_DATA_OUT;
    wire [31:0]  A_DATA_IN;
    wire [5:0]   A_ADDR_IN;
    reg [1:0]   A_SEL;
    reg         A_MSG_READ;
    reg         A_READ;
    wire        A_MBX_READ_VALID;
    reg         A_READ_VALID;
    wire         A_WRITE;
    reg         A_WRITE_VALID;
    reg         A_MBX_WRITE;
    reg         A_CTRL_WRITE;
    reg         A_CTRL_READ;
    reg         A_CTRL_READ_VALID;
    reg [5:0]   A_CTRL_READ_DATA;
    reg         A_MSG_PRESENT_IRQ;
    
    // B SIDE
    reg [31:0]  B_READ_DATA;
    wire [31:0]  B_DATA_OUT;
    wire [31:0]  B_DATA_IN;
    wire [5:0]   B_ADDR_IN;
    reg [1:0]   B_SEL;
    reg         B_MSG_READ;
    reg         B_READ;
    wire         B_MBX_READ_VALID;
    reg         B_READ_VALID;
    wire         B_WRITE;
    reg         B_WRITE_VALID;
    reg         B_MBX_WRITE;
    reg         B_CTRL_WRITE;
    reg         B_CTRL_READ;
    reg         B_CTRL_READ_VALID;
    reg [5:0]   B_CTRL_READ_DATA;
    reg         B_MSG_PRESENT_IRQ;
    
    
    // assignments
    
    // A SIDE
    assign a_rdata  =   A_READ_DATA;
    assign a_ready  =   A_READ_VALID || A_WRITE_VALID;
    assign A_READ   =   a_read_in;
    assign A_ADDR_IN    =   a_addr[5:0];
    assign A_WRITE  =    a_write_in;
    assign A_DATA_IN    =   a_wdata;
    assign a_msg_present = A_MSG_PRESENT_IRQ;

    
    // B SIDE
    assign b_rdata  =   B_READ_DATA;
    assign b_ready  =   B_READ_VALID || B_WRITE_VALID;
    assign B_READ   =   b_read_in;
    assign B_ADDR_IN    =   b_addr[5:0];
    assign B_WRITE  =    b_write_in;
    assign B_DATA_IN    =   b_wdata;
    assign b_msg_present = B_MSG_PRESENT_IRQ;     
    
    // LOGIC
    
    // A side select
    always @(posedge clk) begin
        case (A_ADDR_IN[3:2])
            default: A_SEL <= 0;
            2'b01: A_SEL <= 1;
            2'b10: A_SEL <= 2;
            2'b11: A_SEL <= 3;
        endcase
    end
            
    
    //   A side read
    always @(posedge clk) begin
        case (resetn)
            1'b0: begin
                A_MSG_READ <= 0;
                A_READ_DATA <= 0;
                A_CTRL_READ <= 0;
                A_READ_VALID <= 0;
            end
            default: begin
                if (A_READ) begin
                    case(A_ADDR_IN[5:2])
                        6'b0: begin
                            A_READ_DATA <= IP_VERSION;
                            A_READ_VALID <= 1;
                        end
                        4'b0001: begin
                            A_READ_DATA <= A_CTRL_READ_DATA;
                            A_CTRL_READ <= 1;
                            A_READ_VALID <= A_CTRL_READ_VALID;
                        end
                        4'b0010: begin
                            A_READ_DATA <= B_HART_ID;
                            A_READ_VALID <= 1;
                        end
                        4'b0011: begin
                            A_READ_DATA <= MESSAGE_DEPTH;
                            A_READ_VALID <= 1;
                        end 
                        4'b1000: begin
                            A_MSG_READ <= 1;
                            A_READ_DATA <= A_DATA_OUT;
                            A_READ_VALID <= A_MBX_READ_VALID;
                        end
                        4'b1001: begin
                            A_MSG_READ <= 1;
                            A_READ_DATA <= A_DATA_OUT;
                            A_READ_VALID <= A_MBX_READ_VALID;
                        end
                        4'b1010: begin
                            A_MSG_READ <= 1;
                            A_READ_DATA <= A_DATA_OUT;
                            A_READ_VALID <= A_MBX_READ_VALID;
                        end
                        4'b1011: begin
                            A_MSG_READ <= 1;
                            A_READ_DATA <= A_DATA_OUT;
                            A_READ_VALID <= A_MBX_READ_VALID;
                        end                 
                    endcase
                end else begin
                    A_MSG_READ <= 0;
                    A_READ_DATA <= 0;
                    A_CTRL_READ <= 0;
                    A_READ_VALID <= 0;
                end
            end
        endcase
    end
    
    //   A side write
    always @(posedge clk) begin
        case (resetn)
            1'b0: begin
                A_MBX_WRITE <= 0;
                A_CTRL_WRITE <= 0;
                A_WRITE_VALID <= 0;
            end
            default: begin
                if (A_WRITE) begin
                    case(A_ADDR_IN[5:2])
                        4'b0001: begin
                            A_CTRL_WRITE <= 1;
                            A_WRITE_VALID <= 1;
                        end
                        4'b1100: begin
                            A_MBX_WRITE <= 1;
                            A_WRITE_VALID <= 1;
                        end
                        4'b1101: begin
                            A_MBX_WRITE <= 1;
                            A_WRITE_VALID <= 1;
                        end
                        4'b1110: begin
                            A_MBX_WRITE <= 1;
                            A_WRITE_VALID <= 1;
                        end    
                        4'b1111: begin
                            A_MBX_WRITE <= 1;
                            A_WRITE_VALID <= 1;
                        end               
                    endcase
                end else begin
                    A_MBX_WRITE <= 0;
                    A_CTRL_WRITE <= 0;
                    A_WRITE_VALID <= 0;
                end
            end
        endcase
    end
    
    
// ********************************************************************


    // B side select
    always @(posedge clk) begin
        case (B_ADDR_IN[3:2])
            default: B_SEL <= 0;
            2'b01: B_SEL <= 1;
            2'b10: B_SEL <= 2;
            2'b11: B_SEL <= 3;
        endcase
    end
            
    
    //   B side read
    always @(posedge clk) begin
        case (resetn)
            1'b0: begin
                B_MSG_READ <= 0;
                B_READ_DATA <= 0;
                B_CTRL_READ <= 0;
                B_READ_VALID <= 0;
            end
            default: begin
                if (B_READ) begin
                    case(B_ADDR_IN[5:2])
                        6'b0: begin
                            B_READ_DATA <= IP_VERSION;
                            B_READ_VALID <= 1;
                        end
                        4'b0001: begin
                            B_READ_DATA <= B_CTRL_READ_DATA;
                            B_CTRL_READ <= 1;
                            B_READ_VALID <= B_CTRL_READ_VALID;
                        end
                        4'b0010: begin
                            B_READ_DATA <= A_HART_ID;
                            B_READ_VALID <= 1;
                        end
                        4'b0011: begin
                            B_READ_DATA <= MESSAGE_DEPTH;
                            B_READ_VALID <= 1;
                        end 
                        4'b1000: begin
                            B_MSG_READ <= 1;
                            B_READ_DATA <= B_DATA_OUT;
                            B_READ_VALID <= B_MBX_READ_VALID;
                        end
                        4'b1001: begin
                            B_MSG_READ <= 1;
                            B_READ_DATA <= B_DATA_OUT;
                            B_READ_VALID <= B_MBX_READ_VALID;
                        end
                        4'b1010: begin
                            B_MSG_READ <= 1;
                            B_READ_DATA <= B_DATA_OUT;
                            B_READ_VALID <= B_MBX_READ_VALID;
                        end
                        4'b1011: begin
                            B_MSG_READ <= 1;
                            B_READ_DATA <= B_DATA_OUT;
                            B_READ_VALID <= B_MBX_READ_VALID;
                        end                 
                    endcase
                end else begin
                    B_MSG_READ <= 0;
                    B_READ_DATA <= 0;
                    B_CTRL_READ <= 0;
                    B_READ_VALID <= 0;
                end
            end
        endcase
    end
    
    //   B side write
    always @(posedge clk) begin
        case (resetn)
            1'b0: begin
                B_MBX_WRITE <= 0;
                B_CTRL_WRITE <= 0;
                B_WRITE_VALID <= 0;
            end
            default: begin
                if (B_WRITE) begin
                    case(B_ADDR_IN[5:2])
                        4'b0001: begin
                            B_CTRL_WRITE <= 1;
                            B_WRITE_VALID <= 1;
                        end
                        4'b1100: begin
                            B_MBX_WRITE <= 1;
                            B_WRITE_VALID <= 1;
                        end
                        4'b1101: begin
                            B_MBX_WRITE <= 1;
                            B_WRITE_VALID <= 1;
                        end
                        4'b1110: begin
                            B_MBX_WRITE <= 1;
                            B_WRITE_VALID <= 1;
                        end    
                        4'b1111: begin
                            B_MBX_WRITE <= 1;
                            B_WRITE_VALID <= 1;
                        end               
                    endcase
                end else begin
                    B_MBX_WRITE <= 0;
                    B_CTRL_WRITE <= 0;
                    B_WRITE_VALID <= 0;
                end
            end
        endcase
    end
            
    // Interrupts
    mailbox_irqs u_mailbox_irqs (
    .clk(clk),
    .resetn(resetn),
    .wr_a(A_CTRL_WRITE),
    .rd_a(A_CTRL_READ),
    .wr_b(B_CTRL_WRITE),
    .rd_b(B_CTRL_READ),
    .wdata_a(A_DATA_IN[5:0]),
    .wdata_b(B_DATA_IN[5:0]),
    .rdata_a(A_CTRL_READ_DATA),
    .rdata_b(B_CTRL_READ_DATA),
    .rvalid_a(A_CTRL_READ_VALID),
    .rvalid_b(B_CTRL_READ_VALID),
    .mp_irq_a(A_MSG_PRESENT_IRQ),
    .mp_irq_b(B_MSG_PRESENT_IRQ),
    .ack_irq_a(a_msg_ack),
    .ack_irq_b(b_msg_ack)
    );
    
    
    // MAILBOXES
    
    mailbox_mem  #(.MESSAGE_DEPTH(MESSAGE_DEPTH)) u_a_to_b_mem (
        .clk(clk),
        .resetn(resetn),
        .wr((A_MBX_WRITE & !A_MSG_PRESENT_IRQ)),
        .rd(B_MSG_READ),
        .wr_sel(A_SEL),
        .rd_sel(B_SEL),
        .wdata(A_DATA_IN),
        .wr_ready(),
        .rdata(B_DATA_OUT),
        .rvalid(B_MBX_READ_VALID)
    );
    
    mailbox_mem  #(.MESSAGE_DEPTH(MESSAGE_DEPTH)) u_b_to_a_mem (
        .clk(clk),
        .resetn(resetn),
        .wr((B_MBX_WRITE & !B_MSG_PRESENT_IRQ)),
        .rd(A_MSG_READ),
        .wr_sel(B_SEL),
        .rd_sel(A_SEL),
        .wdata(B_DATA_IN),
        .wr_ready(),
        .rdata(A_DATA_OUT),
        .rvalid(A_MBX_READ_VALID)
    );

    
endmodule
