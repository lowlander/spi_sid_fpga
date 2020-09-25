----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2020 03:49:23 PM
-- Design Name: 
-- Module Name: sid - Behavioral
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

entity sid is
    Port ( 
        rst_n           : in STD_LOGIC;
        clk_fast        : in STD_LOGIC;
        clk_slow        : in STD_LOGIC;
        
        spi_cmd         : in STD_LOGIC_VECTOR (1 downto 0);
        spi_addr        : in STD_LOGIC_VECTOR (4 downto 0);
        spi_addr_out    : out STD_LOGIC_VECTOR (4 downto 0);
        spi_data_in     : in STD_LOGIC_VECTOR (7 downto 0);
        spi_data_out    : out STD_LOGIC_VECTOR (7 downto 0);
        spi_cmd_valid   : in STD_LOGIC;
        sid_cmd_ack     : out STD_LOGIC;
        
        sid_busy        : out STD_LOGIC;
        sid_addr        : out STD_LOGIC_VECTOR (4 downto 0);
        sid_data        : inout STD_LOGIC_VECTOR (7 downto 0);
        sid_rst_n       : out STD_LOGIC;
        sid_rw          : out STD_LOGIC;
        sid_cs_n        : out STD_LOGIC;
        sid_clk         : out STD_LOGIC
    );
end sid;

architecture Behavioral of sid is
    constant CMD_RESET      : std_logic_vector(1 downto 0):= "00";
    constant CMD_READ       : std_logic_vector(1 downto 0):= "01";
    constant CMD_WRITE      : std_logic_vector(1 downto 0):= "10";
    constant CMD_RES        : std_logic_vector(1 downto 0):= "11";

    signal sid_clk_counter  : unsigned(6 downto 0);
    signal next_sid_clk_counter  : unsigned(6 downto 0);

    type state_type is (
            st_reset,
            st_reset_wait_clk_high,
            st_reset_wait_clk_low,
            st_wait_cmd, 
            st_idle_wait_clk_high,
            st_idle_wait_clk_low,
            st_wait_clk_high,
            st_wait_clk_low,
            st_wait_state_0,
            st_wait_state_1,
            st_wait_state_2,
            st_wait_state_3,
            st_wait_state_4,
            st_wait_state_5
        );
    signal state, next_state : state_type;


    signal spi_cmd_buf              : STD_LOGIC_VECTOR (1 downto 0);
    signal spi_addr_buf             : STD_LOGIC_VECTOR (4 downto 0);
    signal spi_data_in_buf          : STD_LOGIC_VECTOR (7 downto 0);
  

    signal reset_clk_counter        : unsigned(3 downto 0);
    signal next_reset_clk_counter   : unsigned(3 downto 0);




    signal next_sid_busy        : std_logic;
    signal next_spi_data_out    : std_logic_vector(7 downto 0);
    signal next_spi_addr_out    : std_logic_vector(4 downto 0);


    
    signal next_sid_addr        : std_logic_vector(4 downto 0);
    signal next_sid_data        : std_logic_vector(7 downto 0);
    signal next_sid_rst_n       : std_logic;
    signal next_sid_rw          : std_logic;
    signal next_sid_cs_n        : std_logic;
    signal next_sid_clk         : std_logic;

    signal sid_cmd_ack_buf      : STD_LOGIC;
    signal next_sid_cmd_ack_buf : STD_LOGIC;


    signal sid_busy_buf         : std_logic;
    signal spi_data_out_buf     : std_logic_vector(7 downto 0);
    signal spi_addr_out_buf     : std_logic_vector(4 downto 0);
    
    signal sid_addr_buf         : std_logic_vector(4 downto 0);
    signal sid_data_buf         : std_logic_vector(7 downto 0);
    signal sid_rst_n_buf        : std_logic;
    signal sid_rw_buf           : std_logic;
    signal sid_cs_n_buf         : std_logic;
    signal sid_clk_buf          : std_logic;

begin
	
	sid_clk_buf <= clk_slow;


    -- NTSC 14.318181 MHz => 1/14 => 1.0227MHz
    -- PAL 17.734472MHz => 1/18 => 0.9852484MHz
    --process(clk_fast, rst_n)
    --begin
    --    if (rst_n = '0') then
    --        sid_clk_counter <= (others => '0');
    --        sid_clk_buf <= '0';
    --    elsif(rising_edge(clk_fast)) then
    --        sid_clk_counter <= next_sid_clk_counter;
     --       sid_clk_buf <= next_sid_clk;
    --    end if;    
    --end process;

    --process(sid_clk_counter, sid_clk_buf)
    --begin
    --    next_sid_clk <= sid_clk_buf;
    --    if (sid_clk_counter = "00110100") then
    --        next_sid_clk <= not sid_clk_buf;
    --        next_sid_clk_counter <= (others => '0');
    --    else
    --        next_sid_clk_counter <= sid_clk_counter + 1;        
    --   end if;
    --end process;

    process(clk_fast, rst_n)
    begin
        if (rst_n = '0') then
            state <= st_reset;
            reset_clk_counter <= (others => '0');

            spi_data_out_buf <= (others => '0');
            spi_addr_out_buf <= (others => '0');
            sid_busy_buf <= '1';
            
            sid_addr_buf <= (others => '0');
            sid_data_buf <= (others => '0');
            sid_rst_n_buf <= '0';
            sid_rw_buf <= '0';
            sid_cs_n_buf <= '1';
            sid_cmd_ack_buf <= '0';
        elsif(rising_edge(clk_fast)) then
            state <= next_state;
            reset_clk_counter <= next_reset_clk_counter;

            spi_data_out_buf <= next_spi_data_out;
            spi_addr_out_buf <= next_spi_addr_out;
            sid_busy_buf <= next_sid_busy;

            sid_addr_buf <= next_sid_addr;
            sid_data_buf <= next_sid_data;
            sid_rst_n_buf <= next_sid_rst_n;
            sid_rw_buf <= next_sid_rw;
            sid_cs_n_buf <= next_sid_cs_n;
            sid_cmd_ack_buf <= next_sid_cmd_ack_buf;
        end if;
    end process;
    
    process(state, sid_clk_buf, sid_data, sid_busy_buf, spi_data_out_buf, sid_addr_buf, spi_addr_out_buf, sid_data_buf, sid_rw_buf, sid_cs_n_buf, reset_clk_counter, sid_cmd_ack_buf, spi_cmd, spi_addr, spi_cmd_valid, spi_data_in)
    begin
        next_state <= state;
        next_sid_busy <= sid_busy_buf;
        next_spi_data_out <= spi_data_out_buf;
        next_sid_addr <= sid_addr_buf;
        next_spi_addr_out <= spi_addr_out_buf;
        next_sid_data <= sid_data_buf;
        next_sid_rw <= sid_rw_buf;
        next_sid_cs_n <= sid_cs_n_buf;
        next_reset_clk_counter <= reset_clk_counter;
        next_sid_rst_n <= '1';
        next_sid_cmd_ack_buf <= sid_cmd_ack_buf;

        if (spi_cmd_valid = '0') then
            next_sid_cmd_ack_buf <= '0';
        end if;
        
        case state is
        
            when st_reset =>
                next_sid_busy <= '1';
                next_sid_rst_n <= '0';
                next_sid_cs_n <= '1';
                next_reset_clk_counter <= (others => '0');
                next_state <= st_reset_wait_clk_high;
                next_sid_cmd_ack_buf <= '0';
                next_sid_addr <= (others => '0');
                next_spi_addr_out <= (others => '0');
                next_sid_data <= (others => '0');
                
            when st_reset_wait_clk_high =>
                next_sid_busy <= '1';
                next_sid_rst_n <= '0';
                if (sid_clk_buf = '1') then
                    if (reset_clk_counter >= "100") then
                        next_state <= st_idle_wait_clk_low;
                    else
                        next_reset_clk_counter <= reset_clk_counter + 1;
                        next_state <= st_reset_wait_clk_low;
                    end if;
                end if;
        
            when st_reset_wait_clk_low =>
                next_sid_rst_n <= '0';
                next_sid_busy <= '1';
                if (sid_clk_buf = '0') then
                    next_state <= st_reset_wait_clk_high;
                end if;
        
            when st_wait_cmd =>
                next_sid_cs_n <= '1';
                next_sid_busy <= '0';
                next_state <= st_idle_wait_clk_high;
                if (spi_cmd_valid = '1') then
                    next_sid_cmd_ack_buf <= '1';
                    next_sid_addr <= spi_addr;
                    next_sid_data <= spi_data_in;
                                        
                    case spi_cmd is
                    
                    when CMD_READ =>
                        next_spi_addr_out <= spi_addr;
                        next_sid_rw <= '1';
                        next_sid_busy <= '1';
                        next_state <= st_wait_clk_high;                      

                    when CMD_WRITE =>
                        next_sid_rw <= '0';
                        next_sid_busy <= '1';
                        next_state <= st_wait_clk_high;                      
                        
                    when CMD_RESET =>
                        next_state <= st_reset;               

                    when others =>
                        null;
                    
                    end case;
                end if; 
            
            when st_idle_wait_clk_high =>
                if (sid_clk_buf = '1') then
                    next_state <= st_idle_wait_clk_low;
                end if;
                
            when st_idle_wait_clk_low =>
                if (sid_clk_buf = '0') then
                    next_state <= st_wait_state_0;
                end if;                
            
            when st_wait_clk_high =>
                if (sid_clk_buf = '1') then
                    next_state <= st_wait_clk_low;
                end if;

            when st_wait_clk_low =>
                next_sid_cs_n <= '0';
                if (sid_clk_buf = '0') then
                    if (sid_rw_buf = '1') then
                        next_spi_data_out <= sid_data;
                    end if;
                    
                    next_state <= st_wait_state_0;
                end if;

            when st_wait_state_0 =>
                    next_state <= st_wait_state_1;

            when st_wait_state_1 =>
                    next_state <= st_wait_state_2;

            when st_wait_state_2 =>
                    next_state <= st_wait_state_3;

            when st_wait_state_3 =>
                    next_state <= st_wait_state_4;

            when st_wait_state_4 =>
                    next_state <= st_wait_state_5;

            when st_wait_state_5 =>
                    next_state <= st_wait_cmd;
            
            when others =>
                next_state <= st_reset;  
            
        end case;
    end process;


    sid_busy <= sid_busy_buf;
    spi_data_out <= spi_data_out_buf;
    spi_addr_out <= spi_addr_out_buf;

    sid_cmd_ack <= sid_cmd_ack_buf;  
    sid_rst_n <= sid_rst_n_buf;
    sid_clk <= sid_clk_buf;
    sid_addr <= sid_addr_buf;
    sid_data <= sid_data_buf when (sid_cs_n_buf = '0' and sid_rw_buf = '0') else (others => 'Z');
    sid_rw <= sid_rw_buf;
    sid_cs_n <= sid_cs_n_buf;
    
end Behavioral;
