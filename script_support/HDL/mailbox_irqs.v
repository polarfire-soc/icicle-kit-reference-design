module mailbox_irqs (
    input wire logic            clk,
    input wire logic            resetn,
    input wire logic            wr_a,
    input wire logic            rd_a,
    input wire logic            wr_b,
    input wire logic            rd_b,
    input wire logic [2:0]      wdata_a,
    input wire logic [2:0]      wdata_b,
    output wire logic [2:0]    rdata_a,
    output wire logic [2:0]    rdata_b,
    output wire logic           rvalid_a,
    output wire logic           rvalid_b,
    output wire logic           mp_irq_a,
    output wire logic           mp_irq_b
    );    
    
    reg A_MP;   // bit 1
    reg A_MPIE; // bit 2
            
    reg B_MP;   // bit 1
    reg B_MPIE; // bit 2
    
    reg [2:0] data_out_a;
    reg [2:0] data_out_b;
    
    reg irq_a;
    reg irq_b;
    
    reg valid_a;
    reg valid_b;
    
    assign rdata_a = data_out_a;
    assign rdata_b = data_out_b;
    
    assign mp_irq_a = irq_a;
    assign mp_irq_b = irq_b;
    
    assign rvalid_a = valid_a;
    assign rvalid_b = valid_b;
           
    
    always @(posedge clk) begin
        if (!resetn) begin
            A_MP <= 0;
            A_MPIE <= 0;
            B_MP <= 0;
            B_MPIE <= 0;
            data_out_a <= 0;
            data_out_b <= 0;
            valid_a <= 0;
            valid_b <= 0;
        end
        if (wr_a && resetn) begin
            $display("A write: %x", wdata_a);
            A_MPIE <= wdata_a[2];
            A_MP <= wdata_a[1];
            B_MP <= wdata_a[0];
            valid_a <= 0;
        end else if (rd_a && resetn) begin 
            $display("A read: %x", {B_MP, A_MP, A_MPIE});
            data_out_a <= {A_MPIE, A_MP, B_MP};
            valid_a <= 1;
        end else begin
            valid_a <= 0;
        end
        
        if (wr_b && resetn) begin
            $display("B write: %x", wdata_b);
            B_MPIE <= wdata_b[2];
            B_MP <= wdata_b[1];
            A_MP <= wdata_b[0];
            valid_b <= 0;
        end else if (rd_b && resetn) begin 
            $display("B read: %x", {A_MP, B_MP, B_MPIE});
            data_out_b <= {B_MPIE, B_MP, A_MP};
            valid_b <= 1;
        end else begin 
            valid_b <= 0;
        end
    end
    
    always @(*) begin
        irq_a <= 0;
        irq_b <= 0;
        if (A_MP && A_MPIE) begin
            irq_a <= 1;
        end
        if (B_MP && B_MPIE) begin
            irq_b <= 1;
        end
    end
endmodule
