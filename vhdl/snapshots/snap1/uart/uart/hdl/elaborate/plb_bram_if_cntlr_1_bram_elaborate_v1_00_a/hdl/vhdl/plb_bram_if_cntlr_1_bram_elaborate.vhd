-------------------------------------------------------------------------------
-- plb_bram_if_cntlr_1_bram_elaborate.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity plb_bram_if_cntlr_1_bram_elaborate is
  generic (
    C_MEMSIZE : integer;
    C_PORT_DWIDTH : integer;
    C_PORT_AWIDTH : integer;
    C_NUM_WE : integer;
    C_FAMILY : string
    );
  port (
    BRAM_Rst_A : in std_logic;
    BRAM_Clk_A : in std_logic;
    BRAM_EN_A : in std_logic;
    BRAM_WEN_A : in std_logic_vector(0 to C_NUM_WE-1);
    BRAM_Addr_A : in std_logic_vector(0 to C_PORT_AWIDTH-1);
    BRAM_Din_A : out std_logic_vector(0 to C_PORT_DWIDTH-1);
    BRAM_Dout_A : in std_logic_vector(0 to C_PORT_DWIDTH-1);
    BRAM_Rst_B : in std_logic;
    BRAM_Clk_B : in std_logic;
    BRAM_EN_B : in std_logic;
    BRAM_WEN_B : in std_logic_vector(0 to C_NUM_WE-1);
    BRAM_Addr_B : in std_logic_vector(0 to C_PORT_AWIDTH-1);
    BRAM_Din_B : out std_logic_vector(0 to C_PORT_DWIDTH-1);
    BRAM_Dout_B : in std_logic_vector(0 to C_PORT_DWIDTH-1)
  );

  attribute keep_hierarchy : STRING;
  attribute keep_hierarchy of plb_bram_if_cntlr_1_bram_elaborate : entity is "yes";

end plb_bram_if_cntlr_1_bram_elaborate;

architecture STRUCTURE of plb_bram_if_cntlr_1_bram_elaborate is

  component RAMB16_S4_S4 is
    generic (
      WRITE_MODE_A : string;
      WRITE_MODE_B : string
    );
    port (
      ADDRA : in std_logic_vector(11 downto 0);
      CLKA : in std_logic;
      DIA : in std_logic_vector(3 downto 0);
      DOA : out std_logic_vector(3 downto 0);
      ENA : in std_logic;
      SSRA : in std_logic;
      WEA : in std_logic;
      ADDRB : in std_logic_vector(11 downto 0);
      CLKB : in std_logic;
      DIB : in std_logic_vector(3 downto 0);
      DOB : out std_logic_vector(3 downto 0);
      ENB : in std_logic;
      SSRB : in std_logic;
      WEB : in std_logic
    );
  end component;

  -- Internal signals

  signal dina : std_logic_vector(63 downto 0);
  signal dinb : std_logic_vector(63 downto 0);
  signal douta : std_logic_vector(63 downto 0);
  signal doutb : std_logic_vector(63 downto 0);

begin

  -- Internal assignments

  dina(63 downto 0) <= BRAM_Dout_A(0 to 63);
  BRAM_Din_A(0 to 63) <= douta(63 downto 0);
  dinb(63 downto 0) <= BRAM_Dout_B(0 to 63);
  BRAM_Din_B(0 to 63) <= doutb(63 downto 0);

  ramb16_s4_s4_0 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(63 downto 60),
      DOA => douta(63 downto 60),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(0),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(63 downto 60),
      DOB => doutb(63 downto 60),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(0)
    );

  ramb16_s4_s4_1 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(59 downto 56),
      DOA => douta(59 downto 56),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(0),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(59 downto 56),
      DOB => doutb(59 downto 56),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(0)
    );

  ramb16_s4_s4_2 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(55 downto 52),
      DOA => douta(55 downto 52),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(1),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(55 downto 52),
      DOB => doutb(55 downto 52),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(1)
    );

  ramb16_s4_s4_3 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(51 downto 48),
      DOA => douta(51 downto 48),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(1),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(51 downto 48),
      DOB => doutb(51 downto 48),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(1)
    );

  ramb16_s4_s4_4 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(47 downto 44),
      DOA => douta(47 downto 44),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(2),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(47 downto 44),
      DOB => doutb(47 downto 44),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(2)
    );

  ramb16_s4_s4_5 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(43 downto 40),
      DOA => douta(43 downto 40),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(2),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(43 downto 40),
      DOB => doutb(43 downto 40),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(2)
    );

  ramb16_s4_s4_6 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(39 downto 36),
      DOA => douta(39 downto 36),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(3),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(39 downto 36),
      DOB => doutb(39 downto 36),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(3)
    );

  ramb16_s4_s4_7 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(35 downto 32),
      DOA => douta(35 downto 32),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(3),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(35 downto 32),
      DOB => doutb(35 downto 32),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(3)
    );

  ramb16_s4_s4_8 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(31 downto 28),
      DOA => douta(31 downto 28),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(4),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(31 downto 28),
      DOB => doutb(31 downto 28),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(4)
    );

  ramb16_s4_s4_9 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(27 downto 24),
      DOA => douta(27 downto 24),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(4),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(27 downto 24),
      DOB => doutb(27 downto 24),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(4)
    );

  ramb16_s4_s4_10 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(23 downto 20),
      DOA => douta(23 downto 20),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(5),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(23 downto 20),
      DOB => doutb(23 downto 20),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(5)
    );

  ramb16_s4_s4_11 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(19 downto 16),
      DOA => douta(19 downto 16),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(5),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(19 downto 16),
      DOB => doutb(19 downto 16),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(5)
    );

  ramb16_s4_s4_12 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(15 downto 12),
      DOA => douta(15 downto 12),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(6),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(15 downto 12),
      DOB => doutb(15 downto 12),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(6)
    );

  ramb16_s4_s4_13 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(11 downto 8),
      DOA => douta(11 downto 8),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(6),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(11 downto 8),
      DOB => doutb(11 downto 8),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(6)
    );

  ramb16_s4_s4_14 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(7 downto 4),
      DOA => douta(7 downto 4),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(7),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(7 downto 4),
      DOB => doutb(7 downto 4),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(7)
    );

  ramb16_s4_s4_15 : RAMB16_S4_S4
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST"
    )
    port map (
      ADDRA => BRAM_Addr_A(17 to 28),
      CLKA => BRAM_Clk_A,
      DIA => dina(3 downto 0),
      DOA => douta(3 downto 0),
      ENA => BRAM_EN_A,
      SSRA => BRAM_Rst_A,
      WEA => BRAM_WEN_A(7),
      ADDRB => BRAM_Addr_B(17 to 28),
      CLKB => BRAM_Clk_B,
      DIB => dinb(3 downto 0),
      DOB => doutb(3 downto 0),
      ENB => BRAM_EN_B,
      SSRB => BRAM_Rst_B,
      WEB => BRAM_WEN_B(7)
    );

end architecture STRUCTURE;

