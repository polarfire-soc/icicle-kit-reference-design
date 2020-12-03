module 
    sdio_register(
        input wire logic        pclk,
        input wire logic        presetn,
        input wire logic        penable,
        input wire logic        psel,
        input wire logic [31:0] paddr,
        input wire logic        pwrite,
        input wire logic [31:0] pwdata,
        output     logic [31:0] prdata,
        output     logic        pready,
        output     logic        pslverr,
        output     logic        SDIO_control	  
        );                      
        
        //-----------------------------------------------------------------------------
        // Parameters
        //-----------------------------------------------------------------------------
        localparam        DEPTH = 32;
        
        //-----------------------------------------------------------------------------
        // Signal Declarations
        //-----------------------------------------------------------------------------
        reg [DEPTH-1:0] register;

        //-----------------------------------------------------------------------------
        // Assignments
        //-----------------------------------------------------------------------------
        assign pslverr = 1'b0;
        assign SDIO_control = register[0];
        
        //-----------------------------------------------------------------------------
        // Logic 
        //-----------------------------------------------------------------------------

        always @(posedge pclk)
          begin
            if (!presetn) begin
                register <= 0;
                prdata <= 0;
                pready <= 0;
            end else if (!pwrite && psel) begin
                prdata <= register;
                pready <= 1;
            end else if (pwrite && psel) begin
                prdata <= 0;
                register <= pwdata[DEPTH-1:0];
                pready <= 1;
            end else begin
                prdata <= 0;
                pready <= 0;
            end
        end
        
endmodule
