----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2020 14:59:16
-- Design Name: 
-- Module Name: COUNTER - Behavioral
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
use IEEE.NUMERIC_STD.ALL;


entity COUNTER is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Start : in STD_LOGIC;
           Count : out STD_LOGIC_VECTOR (7 downto 0));
end COUNTER;

architecture Behavioral of COUNTER is

signal Count_reg : UNSIGNED ( 7 downto 0 );

begin
    
    main:process(Clk, Reset)
    begin
    
        if( Reset = '1' ) then
            Count_reg <= ( others => '0' );
        elsif ( Clk'event and Clk = '1') then
            if ( Start = '1' ) then
                Count_reg <= ( others => '0');
            else
                Count_reg <= Count_reg + 1;
            end if;   
        end if;  
    end process;
    
    count <= STD_LOGIC_VECTOR(Count_reg);

end Behavioral;

