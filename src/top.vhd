----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/22/2025 01:34:17 PM
-- Design Name: 
-- Module Name: top - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( 
        CLK100MHZ : in std_logic;
        sw0  : in std_logic;
        uart_rxd : in std_logic;
        uart_txd : out std_logic;    
        
        led0_r   : out std_logic;
        led0_g   : out std_logic
    );
end top;

architecture Behavioral of top is

constant CLK_HZ : integer := 50000000;
constant BIT_RATE : integer := 115200;
constant PAYLOAD_BITS : integer := 8;

signal CLK50MHZ : std_logic := '0';

signal uart_rx_data : std_logic_vector(PAYLOAD_BITS-1 downto 0);
signal uart_rx_valid : std_logic;
signal uart_rx_break : std_logic;
signal uart_rx_en    : std_logic;

signal uart_tx_busy : std_logic;
signal uart_tx_data : std_logic_vector(PAYLOAD_BITS-1 downto 0);
signal uart_tx_en   : std_logic;

signal led_reg : std_logic_vector(PAYLOAD_BITS-1 downto 0);

component uart_tx is
port(
    clk : in std_logic;
    resetn : in std_logic;
    uart_txd : out std_logic;
    uart_tx_busy : out std_logic;
    uart_tx_en   : in std_logic;
    uart_tx_data : in std_logic_vector(PAYLOAD_BITS-1 downto 0)

);

end component uart_tx;

    component clk_wiz_0 is
    port(
        clk_in1  : in std_logic;
        locked   : out std_logic;
        clk_out1 : out std_logic

    
    );
    end component clk_wiz_0;


component uart_rx is
port(
    clk : in std_logic;
    resetn : in std_logic;
    uart_rxd : in std_logic;
    uart_rx_en : in std_logic;
    uart_rx_break   : out std_logic;
    uart_rx_valid   : out std_logic;
    uart_rx_data : out std_logic_vector(PAYLOAD_BITS-1 downto 0)

);

end component uart_rx;


begin

--uart_tx_data <= uart_rx_data;
--uart_tx_en <= uart_rx_valid;

my_accelerator : entity work.accelerator_ethernet_axi_wrapper(Behavioral)
port map(
    
    clk => CLK50MHZ,
    rstn => sw0,
    
    tx_data => uart_tx_data,
    tx_valid => uart_tx_en,
    tx_ready => uart_tx_busy,
    
    rx_data => uart_rx_data,
    rx_valid => uart_rx_valid,
    rx_ready => uart_rx_en

);


my_clk_wiz : clk_wiz_0
    port map(clk_in1 => CLK100MHZ, clk_out1 => CLK50MHZ);    

my_uart_rx : uart_rx
port map(
    clk => CLK50MHZ,
    resetn => sw0,
    uart_rxd => uart_rxd,
    uart_rx_en => uart_rx_en,
    uart_rx_break => uart_rx_break,
    uart_rx_valid => uart_rx_valid,
    uart_rx_data => uart_rx_data
);

my_uart_tx : uart_tx
port map(
    clk => CLK50MHZ,
    resetn => sw0,
    uart_txd => uart_txd,
    uart_tx_en => uart_tx_en,
    uart_tx_busy => uart_tx_busy,
    uart_tx_data => uart_tx_data
);



process(CLK50MHZ) is
begin


if rising_edge(CLK50MHZ) then
    
    if sw0 = '0' then
        led0_r <= '1';
        led0_g <= '0';
    else
        led0_r <= '0';
        led0_g <= '1';
    end if;


end if;


end process;

end Behavioral;
