----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2023 10:20:22
-- Design Name: 
-- Module Name: PWM2 - Behavioral
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

entity PWM2 is
    Port ( entrada : in STD_LOGIC_VECTOR (2 downto 0);
           clk1 : in STD_LOGIC;
           rst1 : in STD_LOGIC;
           saida : out STD_LOGIC);
end PWM2;

architecture Behavioral of PWM2 is

component div_clock is
    port (
        mclk : in std_logic;
        clk190 : out std_logic
    );
end component;

component PWM_MEF is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           duty : in STD_LOGIC_VECTOR (2 downto 0);
           pwm_out : out STD_LOGIC);
end component;

signal clk190 : std_logic;
begin

utt: div_clock
    port map (
        mclk => clk1,
        clk190 => clk190
    );
    
    
me: PWM_MEF
    port map (
           clk => clk190,
           rst => rst1,
           duty => entrada,
           pwm_out => saida
    );


end Behavioral;
