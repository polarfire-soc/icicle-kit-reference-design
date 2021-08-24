module APB_ARBITER #(select_bit = 28) (
    input wire logic        in_penable, //
    input wire logic        in_psel, //
    input wire logic [31:0] in_paddr, //
    input wire logic        in_pwrite, //
    input wire logic [31:0] in_pwdata, //
    output     logic [31:0] in_prdata, //
    output     logic        in_pready, //
    output     logic        in_pslverr,
    output wire logic        out_0x4xxx_xxxx_penable,
    output wire logic        out_0x4xxx_xxxx_psel,
    output wire logic [31:0] out_0x4xxx_xxxx_paddr,
    output wire logic        out_0x4xxx_xxxx_pwrite,
    output wire logic [31:0] out_0x4xxx_xxxx_pwdata,
    input     logic [31:0] out_0x4xxx_xxxx_prdata,
    input     logic        out_0x4xxx_xxxx_pready,
    input     logic        out_0x4xxx_xxxx_pslverr,
    output wire logic        out_0x5xxx_xxxx_penable,
    output wire logic        out_0x5xxx_xxxx_psel,
    output wire logic [31:0] out_0x5xxx_xxxx_paddr,
    output wire logic        out_0x5xxx_xxxx_pwrite,
    output wire logic [31:0] out_0x5xxx_xxxx_pwdata,
    input     logic [31:0] out_0x5xxx_xxxx_prdata,
    input     logic        out_0x5xxx_xxxx_pready,
    input     logic        out_0x5xxx_xxxx_pslverr
    );  
    
    assign out_0x4xxx_xxxx_penable = in_penable;
    assign out_0x5xxx_xxxx_penable = in_penable;
    
    assign out_0x4xxx_xxxx_paddr = in_paddr;
    assign out_0x5xxx_xxxx_paddr = in_paddr;
    
    assign out_0x4xxx_xxxx_pwrite = in_pwrite;
    assign out_0x5xxx_xxxx_pwrite = in_pwrite;
    
    assign out_0x4xxx_xxxx_pwdata = in_pwdata;
    assign out_0x5xxx_xxxx_pwdata = in_pwdata;
    
    assign out_0x4xxx_xxxx_psel = in_psel & !in_paddr[select_bit];
    assign out_0x5xxx_xxxx_psel = in_psel & in_paddr[select_bit];
    
    assign in_prdata = out_0x4xxx_xxxx_prdata | out_0x5xxx_xxxx_prdata;
    
    assign in_pready = (in_psel & !in_paddr[select_bit]) ? out_0x4xxx_xxxx_pready : out_0x5xxx_xxxx_pready;
    
    assign in_pslverr = (in_psel & !in_paddr[select_bit]) ? out_0x4xxx_xxxx_pslverr : out_0x5xxx_xxxx_pslverr;
    
endmodule
