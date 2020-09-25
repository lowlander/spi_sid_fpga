----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2020 02:37:55 PM
-- Design Name: 
-- Module Name: spi_sid - Behavioral
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

entity spi_sid is
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
end spi_sid;

architecture Behavioral of spi_sid is

    component sid is
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
    end component;

    type state_type is (
            st_reset,
            st_idle,
            st_busy,
            st_normal,
            st_wait_ack
        );

    signal state, next_state : state_type;

    type bit_counter_state_type is (
            st_bc_wait_rising_edge,
            st_bc_wait_falling_edge
        );

    signal bit_counter_state, next_bit_counter_state : bit_counter_state_type;

    signal spi_bit_counter      : unsigned(3 downto 0);
    signal next_spi_bit_counter      : unsigned(3 downto 0);

    signal spi_mosi_buf         : std_logic;
    signal next_spi_mosi_buf    : std_logic;
    signal spi_miso_buf         : std_logic;
    signal next_spi_miso_buf    : std_logic;
    signal spi_cmd_valid        : std_logic;
    signal next_spi_cmd_valid   : std_logic;
    
    signal sid_cmd_ack          : std_logic;
    
    signal spi_cmd_buf          : std_logic_vector(15 downto 0);
    signal next_spi_cmd_buf     : std_logic_vector(15 downto 0);

    signal sid_busy         : std_logic;
    signal spi_data_out     : std_logic_vector(7 downto 0);
    signal spi_addr_out     : std_logic_vector(4 downto 0);
begin

    

    u_sid : sid port map (
        rst_n => rst_n,
        clk_fast => clk_fast,
        clk_slow => clk_slow,
        
        spi_cmd => spi_cmd_buf(15 downto 14),
        spi_addr => spi_cmd_buf(12 downto 8),
        spi_addr_out => spi_addr_out,
        spi_data_in => spi_cmd_buf(7 downto 0),
        spi_data_out => spi_data_out,
        spi_cmd_valid => spi_cmd_valid,
        sid_cmd_ack => sid_cmd_ack,

        sid_busy => sid_busy,        
        sid_addr => sid_addr,
        sid_data => sid_data,
        sid_rst_n => sid_rst_n,
        sid_rw => sid_rw,
        sid_cs_n => sid_cs_n,
        sid_clk => sid_clk
    );

    spi_busy <= sid_busy or spi_cmd_valid;


    process(clk_fast, rst_n)
    begin
        if (rst_n = '0') then
            bit_counter_state <= st_bc_wait_rising_edge;
            spi_bit_counter <= (others => '1');
            spi_mosi_buf <= '0';
        elsif(rising_edge(clk_fast)) then
            bit_counter_state <= next_bit_counter_state;
            spi_bit_counter <= next_spi_bit_counter;
            spi_mosi_buf <= next_spi_mosi_buf;
        end if;
    end process;


    process(bit_counter_state, spi_sck, spi_mosi, spi_mosi_buf, spi_cs_n, spi_bit_counter)
    begin
        next_bit_counter_state <= bit_counter_state;
        next_spi_mosi_buf <= spi_mosi_buf;
        next_spi_bit_counter <= spi_bit_counter;

        if (spi_cs_n = '1') then
            next_spi_bit_counter <= (others => '1');
            next_bit_counter_state <= st_bc_wait_rising_edge;
        else
            case bit_counter_state is
            
            when st_bc_wait_rising_edge =>
                if (spi_sck = '1') then
                    next_spi_mosi_buf <= spi_mosi;
                    next_bit_counter_state <= st_bc_wait_falling_edge;
                    next_spi_bit_counter <= spi_bit_counter + 1;            
                end if;
                
            when st_bc_wait_falling_edge =>
                if (spi_sck = '0') then
                    next_bit_counter_state <= st_bc_wait_rising_edge;
                end if;
                
            when others =>
                next_bit_counter_state <= st_bc_wait_rising_edge;
                
            end case;
        end if;        
    end process;
    
    process(clk_fast, rst_n)
    begin
        if (rst_n = '0') then
            spi_miso_buf <= '0';
            state <= st_reset;            
            spi_cmd_valid <= '0';
            spi_cmd_buf <= (others => '0');
        elsif(rising_edge(clk_fast)) then
            state <= next_state;
            spi_miso_buf <= next_spi_miso_buf;              
            spi_cmd_valid <= next_spi_cmd_valid;
            spi_cmd_buf <= next_spi_cmd_buf;
        end if;
    end process;

    process(state, spi_bit_counter, spi_mosi_buf, sid_cmd_ack, spi_miso_buf, spi_cmd_valid, spi_cmd_buf, sid_busy, spi_data_out)
    begin
        next_state <= state;
        next_spi_miso_buf <= spi_miso_buf;
        next_spi_cmd_valid <= spi_cmd_valid;
        next_spi_cmd_buf <= spi_cmd_buf;

        case state is
        
        when st_reset =>
            next_spi_miso_buf <= '0';
            next_spi_cmd_valid <= '0';
            next_spi_cmd_buf <= (others => '0');
            next_state <= st_idle;

        when st_idle =>
            if (spi_bit_counter = "0000") then
                next_spi_miso_buf <= '0';
                if (sid_busy = '1') then
                    next_state <= st_busy;           
                else
                    next_state <= st_normal;
                    next_spi_cmd_buf(to_integer(15 - spi_bit_counter)) <= spi_mosi_buf;
                end if;
            end if;

        when st_normal =>
            next_spi_cmd_buf(to_integer(15 - spi_bit_counter)) <= spi_mosi_buf;

            if (spi_bit_counter(3) = '0') then
                next_spi_miso_buf <= '0';
            else
                next_spi_miso_buf <= spi_data_out(to_integer(7 - spi_bit_counter(2 downto 0)));
            end if;

            if (spi_bit_counter = "1111") then
                next_spi_cmd_valid <= '1';
                next_state <= st_wait_ack;
            end if;
            
        when st_wait_ack =>
            if (sid_cmd_ack = '1') then
                next_spi_cmd_valid <= '0';
                next_state <= st_idle;
            end if;
                        
        when st_busy =>
            next_spi_miso_buf <= '0';
            if (spi_bit_counter = "0111") then
                next_spi_miso_buf <= '1';
            end if;
            if (spi_bit_counter = "1111") then
                next_state <= st_idle;
            end if;
            
        when others =>
            next_state <= st_reset;

        end case;
        
    end process;    
    
    spi_miso <= spi_miso_buf when spi_cs_n = '0' else 'Z';
    
end Behavioral;
