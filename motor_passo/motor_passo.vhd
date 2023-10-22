library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity motor_passo is
    Port ( clk1 : in STD_LOGIC;
           rst1 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           fase1 : out STD_LOGIC_VECTOR (3 downto 0)
           );
end motor_passo;

architecture Behavioral of motor_passo is
	component motor is
		PORT (	clk, rst, s: in STD_LOGIC;
					fase: out STD_LOGIC_VECTOR(3 downto 0)
				);
	end component;
	
	component div_clock is
		generic ( 
		  N : integer := 19
		);
		port 	(
		  mclk, rst: in std_logic;
		  clk190 : out std_logic
		);	
	end component ;
	
	constant N : integer := 4;
	signal clk190: std_logic;
	
	BEGIN
		utt: div_clock
			 generic map (
				  N => N
			 )
			 port map (
				  mclk => clk1,
				  rst => rst1,
				  clk190 => clk190
			 );
		utt1:	motor
			port map (
				clk => clk190,
				rst => rst1,
				s => s1,
				fase => fase1
			);
			
END Behavioral;