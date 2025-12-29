library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_accelerator_ethernet_axi_wrapper is
end tb_accelerator_ethernet_axi_wrapper;

architecture behavior of tb_accelerator_ethernet_axi_wrapper is

    -- Component Declaration for the Unit Under Test (UUT)
    component top
    Port (
        CLK100MHZ : in std_logic;
        sw0 : in std_logic;
        
        uart_rxd : in std_logic;
        uart_txd : out std_logic;
        
        led0_r   : out std_logic;
        led0_g   : out std_logic

        
    );
    end component;

    -- Signals for the testbench to drive the inputs to the UUT
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';

    signal tx_data : std_logic := '0';
    signal rx_data : STD_LOGIC := '0';
    
    signal led_r : std_logic := '0';
    signal led_g : std_logic := '0';
    
    -- Clock period definition
    constant clk_period : time := 10 ns;
    constant bit_period : time := 8.6805us;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: top
    Port map (
        CLK100MHZ => clk,
        sw0 => rst,
        
        uart_txd => tx_data,
        uart_rxd => rx_data,
        
        led0_r => led_r,
        led0_g => led_g        
    );

    -- Clock process to generate clock signal
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the UUT

        rst <= '0';
        wait for clk_period*20;
        rst <= '1';
        wait for clk_period*20;
        
        rx_data <= '1';
        wait for clk_period*10;
        
rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

rx_data <= '0'; --start bit
wait for bit_period;

rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '0'; -- data bit
wait for bit_period;
rx_data <= '1'; -- stop bit
wait for bit_period;

        wait;
    end process;

end behavior;
