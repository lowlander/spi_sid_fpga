----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/19/2020 07:07:42 PM
-- Design Name: 
-- Module Name: top_level - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library machxo2;
use machxo2.all;

entity top_level is
    Port ( 
		led			: out STD_LOGIC_VECTOR(7 downto 0);
	
        rst_n       : in STD_LOGIC;
        clk         : in STD_LOGIC;

        sid_addr    : out STD_LOGIC_VECTOR (4 downto 0);
        sid_data    : inout STD_LOGIC_VECTOR (7 downto 0);
        sid_cs_n    : out STD_LOGIC;
        sid_rw      : out STD_LOGIC;
        sid_rst_n   : out STD_LOGIC;
        sid_clk     : out STD_LOGIC;
        sid_timer   : out STD_LOGIC;
        
        spi_sck     : in STD_LOGIC;
        spi_mosi    : in STD_LOGIC;
        spi_miso    : out STD_LOGIC;
        spi_cs_n    : in STD_LOGIC;
        spi_busy    : out STD_LOGIC
        );
end top_level;

architecture Behavioral of top_level is

    component spi_sid is
    Port ( 
        clk_fast    : in STD_LOGIC;
        clk_slow    : in STD_LOGIC;
        rst_n       : in STD_LOGIC;
        spi_cs_n    : in STD_LOGIC;
        spi_sck     : in STD_LOGIC;
        spi_mosi    : in STD_LOGIC;
        spi_miso    : out STD_LOGIC;
        spi_busy    : out STD_LOGIC;
        sid_addr    : out STD_LOGIC_VECTOR (4 downto 0);
        sid_data    : inout STD_LOGIC_VECTOR (7 downto 0);
        sid_clk     : out STD_LOGIC;
        sid_cs_n    : out STD_LOGIC;
        sid_rw      : out STD_LOGIC;
        sid_rst_n   : out STD_LOGIC;
        sid_timer   : out STD_LOGIC
        );
    end component;
	
	component pll
		port (
			CLKI: in std_logic; 
			CLKOP: out  std_logic;
			CLKOS: out  std_logic
		);
	end component;

	COMPONENT OSCH
		-- synthesis translate_off
		GENERIC (
			NOM_FREQ : string := "17.73"
		);
		-- synthesis translate_on
		PORT (
			STDBY		:IN std_logic;
			OSC			:OUT std_logic;
			SEDSTDBY	:OUT std_logic
		);
	END COMPONENT;

	attribute NOM_FREQ : string;
	attribute NOM_FREQ of OSCinst0 : label is "17.73";

	signal osc_clk					 : std_logic;
	signal clk_fast					 : std_logic;
	signal clk_slow					 : std_logic;
    signal spi_sck_xfer_pipe         : std_logic_vector(1 downto 0);


	signal sid_addr_buf 			: std_logic_vector(4 downto 0);
	signal sid_cs_n_buf				: std_logic;
	signal sid_rw_buf				: std_logic;
	signal sid_rst_n_buf			: std_logic;

begin
	
	OSCInst0 : OSCH
--		GENERIC MAP( 
	--		NOM_FREQ 	=> "17.73" 
		--)
		PORT MAP (
			STDBY		=> '0',
			-- SEDSTDBY 	=>  stdby_sed
			OSC 		=>  osc_clk
		);
	
	u_pll : pll
    port map (
		CLKI 	=> osc_clk, 
		CLKOP 	=> clk_fast,
		CLKOS 	=> clk_slow
	);

    process(clk_fast, rst_n)
    begin
        if (rst_n = '0') then
            spi_sck_xfer_pipe <= (others => '0');
        elsif (rising_edge(clk_fast)) then
            spi_sck_xfer_pipe <= spi_sck_xfer_pipe(0) & spi_sck;
        end if;
    end process;

    u_sid_spi : spi_sid port map ( 
        clk_fast  => clk_fast,
        clk_slow  => clk_slow,
        rst_n  => rst_n,
        spi_cs_n => spi_cs_n,
        spi_sck => spi_sck_xfer_pipe(1),
        spi_mosi => spi_mosi,
        spi_miso => spi_miso,
        spi_busy => spi_busy,
        sid_addr => sid_addr_buf,
        sid_data =>  sid_data,
        sid_clk => sid_clk,
        sid_cs_n => sid_cs_n_buf,
        sid_rw => sid_rw_buf,
        sid_rst_n => sid_rst_n_buf,
        sid_timer => sid_timer
    );
           
	sid_addr <= sid_addr_buf;
	sid_cs_n <= sid_cs_n_buf;
	sid_rw <= sid_rw_buf;
	sid_rst_n <= sid_rst_n_buf;
		   
	led <= sid_addr_buf & sid_cs_n_buf & sid_rw_buf & sid_rst_n_buf;

end Behavioral;
