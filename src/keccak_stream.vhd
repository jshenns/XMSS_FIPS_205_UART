-- Keccak stream wrapper to provide SHA256-compatible streaming interface
-- This wrapper adapts the Keccak sponge function to work with the same
-- interface as sha256_stream for easy integration

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.keccak_globals.all;

entity keccak_stream is
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        mode       : in  std_logic;  -- Kept for compatibility, not used in Keccak
        s_tdata_i  : in  std_logic_vector(511 downto 0);
        s_tlast_i  : in  std_logic;
        s_tvalid_i : in  std_logic;
        s_tready_o : out std_logic;
        digest_o   : out std_logic_vector(255 downto 0);
        digest_valid_o : out std_logic
    );
end keccak_stream;

architecture rtl of keccak_stream is

    component keccak
        port (
            clk     : in  std_logic;
            rst_n   : in  std_logic;
            init    : in  std_logic;
            go      : in  std_logic;
            absorb  : in  std_logic;
            squeeze : in  std_logic;
            din     : in  std_logic_vector(N-1 downto 0);
            ready   : out std_logic;
            dout    : out std_logic_vector(N-1 downto 0)
        );
    end component;

    -- State machine
    type state_type is (IDLE, ABSORB_0, ABSORB_1, ABSORB_2, ABSORB_3, 
                        ABSORB_4, ABSORB_5, ABSORB_6, ABSORB_7,
                        PROCESS_HASH, SQUEEZE_OUT);
    signal state : state_type := IDLE;
    
    -- Keccak signals
    signal rst_n   : std_logic;
    signal init    : std_logic := '0';
    signal go      : std_logic := '0';
    signal absorb  : std_logic := '0';
    signal squeeze : std_logic := '0';
    signal din     : std_logic_vector(63 downto 0) := (others => '0');
    signal ready   : std_logic;
    signal dout    : std_logic_vector(63 downto 0);
    
    -- Internal registers
    signal data_reg : std_logic_vector(511 downto 0) := (others => '0');
    signal absorb_count : integer range 0 to 15 := 0;
    signal first_block : std_logic := '1';
    
begin

    rst_n <= not rst;
    
    keccak_inst : keccak
        port map (
            clk     => clk,
            rst_n   => rst_n,
            init    => init,
            go      => go,
            absorb  => absorb,
            squeeze => squeeze,
            din     => din,
            ready   => ready,
            dout    => dout
        );

    process(clk, rst)
    begin
        if rst = '1' then
            state <= IDLE;
            init <= '0';
            go <= '0';
            absorb <= '0';
            squeeze <= '0';
            din <= (others => '0');
            s_tready_o <= '1';
            digest_o <= (others => '0');
            digest_valid_o <= '0';
            data_reg <= (others => '0');
            absorb_count <= 0;
            first_block <= '1';
            
        elsif rising_edge(clk) then
            -- Default values
            init <= '0';
            go <= '0';
            absorb <= '0';
            squeeze <= '0';
            digest_valid_o <= '0';
            
            case state is
                when IDLE =>
                    s_tready_o <= '1';
                    absorb_count <= 0;
                    
                    if s_tvalid_i = '1' then
                        data_reg <= s_tdata_i;
                        s_tready_o <= '0';
                        
                        if first_block = '1' then
                            init <= '1';
                            first_block <= '0';
                        end if;
                        
                        state <= ABSORB_0;
                    end if;
                    
                    if s_tlast_i = '1' and s_tvalid_i = '1' then
                        first_block <= '1';
                    end if;
                    
                when ABSORB_0 =>
                    if ready = '1' then
                        din <= data_reg(63 downto 0);
                        absorb <= '1';
                        absorb_count <= absorb_count + 1;
                        state <= ABSORB_1;
                    end if;
                    
                when ABSORB_1 =>
                    if ready = '1' then
                        din <= data_reg(127 downto 64);
                        absorb <= '1';
                        absorb_count <= absorb_count + 1;
                        state <= ABSORB_2;
                    end if;
                    
                when ABSORB_2 =>
                    if ready = '1' then
                        din <= data_reg(191 downto 128);
                        absorb <= '1';
                        absorb_count <= absorb_count + 1;
                        state <= ABSORB_3;
                    end if;
                    
                when ABSORB_3 =>
                    if ready = '1' then
                        din <= data_reg(255 downto 192);
                        absorb <= '1';
                        absorb_count <= absorb_count + 1;
                        state <= ABSORB_4;
                    end if;
                    
                when ABSORB_4 =>
                    if ready = '1' then
                        din <= data_reg(319 downto 256);
                        absorb <= '1';
                        absorb_count <= absorb_count + 1;
                        state <= ABSORB_5;
                    end if;
                    
                when ABSORB_5 =>
                    if ready = '1' then
                        din <= data_reg(383 downto 320);
                        absorb <= '1';
                        absorb_count <= absorb_count + 1;
                        state <= ABSORB_6;
                    end if;
                    
                when ABSORB_6 =>
                    if ready = '1' then
                        din <= data_reg(447 downto 384);
                        absorb <= '1';
                        absorb_count <= absorb_count + 1;
                        state <= ABSORB_7;
                    end if;
                    
                when ABSORB_7 =>
                    if ready = '1' then
                        din <= data_reg(511 downto 448);
                        absorb <= '1';
                        absorb_count <= absorb_count + 1;
                        state <= PROCESS_HASH;
                    end if;
                    
                when PROCESS_HASH =>
                    if ready = '1' then
                        go <= '1';
                        state <= SQUEEZE_OUT;
                    end if;
                    
                when SQUEEZE_OUT =>
                    -- After squeeze, keccak ready goes high and we can read 4x64-bit outputs
                    if ready = '1' and squeeze = '0' and absorb_count >= 8 then
                        -- Read first 64 bits
                        digest_o(63 downto 0) <= dout;
                        squeeze <= '1';
                        absorb_count <= 1;
                    elsif ready = '1' and squeeze = '0' and absorb_count = 1 then
                        digest_o(127 downto 64) <= dout;
                        squeeze <= '1';
                        absorb_count <= 2;
                    elsif ready = '1' and squeeze = '0' and absorb_count = 2 then
                        digest_o(191 downto 128) <= dout;
                        squeeze <= '1';
                        absorb_count <= 3;
                    elsif ready = '1' and squeeze = '0' and absorb_count = 3 then
                        digest_o(255 downto 192) <= dout;
                        digest_valid_o <= '1';
                        s_tready_o <= '1';
                        state <= IDLE;
                    elsif ready = '0' and squeeze = '1' then
                        -- Waiting for squeeze operation to complete
                        squeeze <= '0';
                    end if;
                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

end rtl;