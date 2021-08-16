module mailbox_mem #(parameter MESSAGE_DEPTH = 1) (
    input wire logic            clk,
    input wire logic            resetn,
    input wire logic            wr,
    input wire logic            rd,
    input wire logic [2:0]      wr_sel,
    input wire logic [3:0]      rd_sel,
    input wire logic [31:0]     wdata,
    output wire logic           wr_ready,
    output wire logic [31:0]    rdata,
    output wire logic           rvalid
    );                      
    
    //-----------------------------------------------------------------------------
    // Parameters
    //-----------------------------------------------------------------------------
    
    
    //-----------------------------------------------------------------------------
    // Signal Declarations
    //-----------------------------------------------------------------------------
    logic  [31:0]     register[MESSAGE_DEPTH];
    logic  [2:0]     wr_en;
    reg   [31:0]     read_data;
    reg                rd_valid;
    

    //-----------------------------------------------------------------------------
    // Assignments
    //-----------------------------------------------------------------------------
    assign rdata = read_data;
    assign rvalid = rd_valid;
    
    // logic
    genvar mbx_reg;
    generate  
        for (mbx_reg = 0; mbx_reg <= (MESSAGE_DEPTH - 1); mbx_reg++) begin : gen_mbx_regs

            assign wr_en[mbx_reg] = wr & (wr_sel == mbx_reg[2:0]);

            always @(posedge clk)
            begin
                if(wr_en[mbx_reg])
                    register[mbx_reg] <= wdata;
            end

        end
    endgenerate

    assign wr_ready = 1'b1; // can always accept writes in this implemnetation when operand (wr data) is valid
    
      //read mux
    always @*
    begin
        read_data = 32'b0;
        rd_valid = 1'b0;
        for(int i = 0; i <= MESSAGE_DEPTH - 1; i++) 
        begin
          if(rd & (rd_sel == i[2:0])) begin
                read_data = register[i];
                rd_valid = 1'b1;
            end
        end
    end
        
endmodule
