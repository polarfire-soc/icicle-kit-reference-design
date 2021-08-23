module mailbox_irqs (
    input wire logic            clk,
    input wire logic            resetn,
    input wire logic            wr_a,
    input wire logic            rd_a,
    input wire logic            wr_b,
    input wire logic            rd_b,
    input wire logic [5:0]      wdata_a,
    input wire logic [5:0]      wdata_b,
    output wire logic [5:0]    rdata_a,
    output wire logic [5:0]    rdata_b,
    output wire logic           rvalid_a,
    output wire logic           rvalid_b,
    output wire logic           mp_irq_a,
    output wire logic           mp_irq_b,
    output wire logic           ack_irq_a,
    output wire logic           ack_irq_b
    );    
    
    reg A_MP;   // bit 1
    reg A_MPIE; // bit 2
    reg A_ACK; // bit 4
    reg A_AIE; // bit 5
            
    reg B_MP;   // bit 1
    reg B_MPIE; // bit 2
    reg B_ACK; // bit 4
    reg B_AIE; // bit 5
    
    reg [5:0] data_out_a;
    reg [5:0] data_out_b;
    
    reg irq_a_mp;
    reg irq_b_mp;
    
    reg irq_a_ack;
    reg irq_b_ack;
    
    reg valid_a;
    reg valid_b;
    
    assign rdata_a = data_out_a;
    assign rdata_b = data_out_b;
    
    assign mp_irq_a = irq_a_mp;
    assign mp_irq_b = irq_b_mp;
    
    assign ack_irq_a = irq_a_ack;
    assign ack_irq_b = irq_b_ack;
    
    assign rvalid_a = valid_a;
    assign rvalid_b = valid_b;
           
    
    always @(posedge clk) begin
        if (!resetn) begin
            A_MP <= 0;
            A_MPIE <= 0;
            A_ACK <= 0;
            A_AIE <= 0;
            B_MP <= 0;
            B_MPIE <= 0;
            B_ACK <= 0;
            B_AIE <= 0;
            data_out_a <= 0;
            data_out_b <= 0;
            valid_a <= 0;
            valid_b <= 0;
        end
        if (wr_a && resetn) begin
            $display("A write: %x", wdata_a);
            A_AIE <= wdata_a[5];
            A_ACK <= wdata_a[4];
            B_ACK <= wdata_a[3];
            A_MPIE <= wdata_a[2];
            A_MP <= wdata_a[1];
            B_MP <= wdata_a[0];
            valid_a <= 0;
        end else if (rd_a && resetn) begin 
            $display("A read: %x", {B_MP, A_MP, A_MPIE});
            data_out_a <= {A_AIE, A_ACK, B_ACK, A_MPIE, A_MP, B_MP};
            valid_a <= 1;
        end else begin
            valid_a <= 0;
        end
        
        if (wr_b && resetn) begin
            $display("B write: %x", wdata_b);
            B_AIE <= wdata_b[5];
            B_ACK <= wdata_b[4];
            A_ACK <= wdata_b[3];
            B_MPIE <= wdata_b[2];
            B_MP <= wdata_b[1];
            A_MP <= wdata_b[0];
            valid_b <= 0;
        end else if (rd_b && resetn) begin 
            $display("B read: %x", {A_MP, B_MP, B_MPIE});
            data_out_b <= {B_AIE, B_ACK, A_ACK, B_MPIE, B_MP, A_MP};
            valid_b <= 1;
        end else begin 
            valid_b <= 0;
        end
    end
    
    always @(*) begin
        irq_a_mp <= 0;
        irq_b_mp <= 0;
        if (A_MP && A_MPIE) begin
            irq_a_mp <= 1;
        end
        if (B_MP && B_MPIE) begin
            irq_b_mp <= 1;
        end
    end
    
    always @(*) begin
        irq_a_ack <= 0;
        irq_b_ack <= 0;
        if (A_ACK && A_AIE) begin
            irq_b_ack <= 1;
        end
        if (B_ACK && B_AIE) begin
            irq_a_ack <= 1;
        end
    end
endmodule
