library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memprot is

  generic (
    ADDR_WIDTH     : integer := 38;
    DATA_WIDTH     : integer := 64;
    ID_WIDTH       : integer := 3;
    BASE_ADDR_LO24 : integer := 0;
    BASE_ADDR_HI24 : integer := 0;
    END_ADDR_LO24  : integer := 16#FFFFFF#;
    END_ADDR_HI24  : integer := 16#FFFFFF#);

  port (
    s_axi_awaddr  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    s_axi_awvalid : in  std_logic;
    s_axi_awready : out std_logic;
    s_axi_awid    : in  std_logic_vector(ID_WIDTH-1 downto 0);
    s_axi_awlen   : in  std_logic_vector(7 downto 0);
    s_axi_awsize  : in  std_logic_vector(2 downto 0);
    s_axi_awburst : in  std_logic_vector(1 downto 0);
    s_axi_wdata   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    s_axi_awprot  : in  std_logic_vector(2 downto 0);
    s_axi_awcache : in  std_logic_vector(3 downto 0);
    s_axi_wstrb   : in  std_logic_vector((DATA_WIDTH/8)-1 downto 0);
    s_axi_wvalid  : in  std_logic;
    s_axi_wlast   : in  std_logic;
    s_axi_wready  : out std_logic;
    s_axi_bready  : in  std_logic;
    s_axi_bresp   : out std_logic_vector(1 downto 0);
    s_axi_bvalid  : out std_logic;
    s_axi_bid     : out std_logic_vector(ID_WIDTH-1 downto 0);
    s_axi_araddr  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    s_axi_arvalid : in  std_logic;
    s_axi_arready : out std_logic;
    s_axi_arid    : in  std_logic_vector(ID_WIDTH-1 downto 0);
    s_axi_arlen   : in  std_logic_vector(7 downto 0);
    s_axi_arsize  : in  std_logic_vector(2 downto 0);
    s_axi_arburst : in  std_logic_vector(1 downto 0);
    s_axi_arprot  : in  std_logic_vector(2 downto 0);
    s_axi_arcache : in  std_logic_vector(3 downto 0);
    s_axi_rready  : in  std_logic;
    s_axi_rdata   : out std_logic_vector(DATA_WIDTH-1 downto 0);
    s_axi_rresp   : out std_logic_vector(1 downto 0);
    s_axi_rvalid  : out std_logic;
    s_axi_rlast   : out std_logic;
    s_axi_rid     : out std_logic_vector(ID_WIDTH-1 downto 0);

    m_axi_arready : in  std_logic;
    m_axi_arvalid : out std_logic;
    m_axi_araddr  : out std_logic_vector(ADDR_WIDTH-1 downto 0);
    m_axi_arlen   : out std_logic_vector(7 downto 0);
    m_axi_arsize  : out std_logic_vector(2 downto 0);
    m_axi_arburst : out std_logic_vector(1 downto 0);
    m_axi_arprot  : out std_logic_vector(2 downto 0);
    m_axi_arcache : out std_logic_vector(3 downto 0);
    m_axi_arid    : out std_logic_vector(ID_WIDTH-1 downto 0);
    m_axi_rready  : out std_logic;
    m_axi_rvalid  : in  std_logic;
    m_axi_rdata   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
    m_axi_rresp   : in  std_logic_vector(1 downto 0);
    m_axi_rlast   : in  std_logic;
    m_axi_rid     : in  std_logic_vector(ID_WIDTH-1 downto 0);
    m_axi_awready : in  std_logic;
    m_axi_awvalid : out std_logic;
    m_axi_awaddr  : out std_logic_vector(ADDR_WIDTH-1 downto 0);
    m_axi_awlen   : out std_logic_vector(7 downto 0);
    m_axi_awsize  : out std_logic_vector(2 downto 0);
    m_axi_awburst : out std_logic_vector(1 downto 0);
    m_axi_awprot  : out std_logic_vector(2 downto 0);
    m_axi_awcache : out std_logic_vector(3 downto 0);
    m_axi_awid    : out std_logic_vector(ID_WIDTH-1 downto 0);
    m_axi_wready  : in  std_logic;
    m_axi_wvalid  : out std_logic;
    m_axi_wdata   : out std_logic_vector(DATA_WIDTH-1 downto 0);
    m_axi_wstrb   : out std_logic_vector((DATA_WIDTH)/8 - 1 downto 0);
    m_axi_wlast   : out std_logic;
    m_axi_bready  : out std_logic;
    m_axi_bvalid  : in  std_logic;
    m_axi_bresp   : in  std_logic_vector(1 downto 0);
    m_axi_bid     : in  std_logic_vector(ID_WIDTH-1 downto 0)

    );

end entity memprot;

architecture rtl of memprot is
  function concat_addr (
    lo : integer;
    hi : integer)
    return unsigned is
    variable ret : unsigned(47 downto 0);
  begin  -- function d
    ret(23 downto 0)  := to_unsigned(lo, 24);
    ret(47 downto 24) := to_unsigned(hi, 24);
    return ret(ADDR_WIDTH-1 downto 0);
  end function concat_addr;
  constant base_address : unsigned(ADDR_WIDTH-1 downto 0) := concat_addr(BASE_ADDR_LO24, BASE_ADDR_HI24);
  constant end_address  : unsigned(ADDR_WIDTH-1 downto 0) := concat_addr(END_ADDR_LO24, END_ADDR_HI24);

  signal valid_raddress : std_logic;
  signal valid_waddress : std_logic;
  signal bad_read : std_logic;
  signal bad_write : std_logic;
  
begin  -- architecture rtl
  bad_read <= s_axi_arvalid and not valid_raddress;
  bad_write <=  s_axi_awvalid and not valid_waddress;
  valid_raddress <= '1' when unsigned(s_axi_araddr) >= base_address and unsigned(s_axi_araddr) <= end_address else '0';
  valid_waddress <= '1' when unsigned(s_axi_awaddr) >= base_address and unsigned(s_axi_awaddr) <= end_address else '0';
  m_axi_arvalid  <= s_axi_arvalid and valid_raddress;
  m_axi_araddr   <= s_axi_araddr;
  m_axi_arlen    <= s_axi_arlen;
  m_axi_arsize   <= s_axi_arsize;
  m_axi_arburst  <= s_axi_arburst;
  m_axi_arprot   <= s_axi_arprot;
  m_axi_arcache  <= s_axi_arcache;
  m_axi_arid     <= s_axi_arid;
  m_axi_rready   <= s_axi_rready;
  m_axi_awvalid  <= s_axi_awvalid and valid_waddress;
  m_axi_awaddr   <= s_axi_awaddr;
  m_axi_awlen    <= s_axi_awlen;
  m_axi_awsize   <= s_axi_awsize;
  m_axi_awburst  <= s_axi_awburst;
  m_axi_awprot   <= s_axi_awprot;
  m_axi_awcache  <= s_axi_awcache;
  m_axi_awid     <= s_axi_awid;
  m_axi_wvalid   <= s_axi_wvalid;
  m_axi_wdata    <= s_axi_wdata;
  m_axi_wstrb    <= s_axi_wstrb;
  m_axi_wlast    <= s_axi_wlast;
  m_axi_bready   <= s_axi_bready;


  s_axi_awready <= m_axi_awready;
  s_axi_wready  <= m_axi_wready;
  s_axi_bresp   <= m_axi_bresp;
  s_axi_bvalid  <= m_axi_bvalid;
  s_axi_bid     <= m_axi_bid;
  s_axi_arready <= m_axi_arready;
  s_axi_rdata   <= m_axi_rdata;
  s_axi_rresp   <= m_axi_rresp;
  s_axi_rvalid  <= m_axi_rvalid;
  s_axi_rlast   <= m_axi_rlast;
  s_axi_rid     <= m_axi_rid;




end architecture rtl;
