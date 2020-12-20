-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 15.12.2020 14:13:41 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_COUNTER is
end tb_COUNTER;

architecture tb of tb_COUNTER is

    component COUNTER
        port (Clk   : in std_logic;
              Reset : in std_logic;
              Start : in std_logic;
              Count : out std_logic_vector (7 downto 0));
    end component;

    signal Clk   : std_logic;
    signal Reset : std_logic;
    signal Start : std_logic;
    signal Count : std_logic_vector (7 downto 0);

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : COUNTER
    port map (Clk   => Clk,
              Reset => Reset,
              Start => Start,
              Count => Count);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that Clk is really your main clock signal
    Clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        Start <= '0';

        -- Reset generation
        -- EDIT: Check that Reset is really your reset signal
        Reset <= '1';
        wait for 100 ns;
        Reset <= '0';
        wait for 100 ns;
 
         Start <= '1';
         wait for 20ns;
         Start <= '0';
         wait;
    end process;

end tb;


