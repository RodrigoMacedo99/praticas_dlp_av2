----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2023 10:19:10
-- Design Name: 
-- Module Name: div_clock - Behavioral
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


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity div_clock is
    port (
        mclk : in std_logic;
        clk190 : out std_logic
    );
end div_clock;


architecture Behavioral of div_clock is
  BEGIN
	count: PROCESS(mclk)
		VARIABLE cont: INTEGER RANGE 0 TO 2;
	BEGIN
		if rising_edge(mclk) then
			cont := cont + 1;
			IF (cont=2) then 
				clk190 <= '1';
				cont := 0;
			ELSE clk190 <= '0';
			END IF;
		end if;
	END PROCESS count;
	
end Behavioral;
