library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity div_clock is
    generic ( 
        N : integer := 19
    );
    port (
        mclk : in std_logic;
        rst : in std_logic;
        clk190 : out std_logic
    );
end div_clock;


architecture Behavioral of div_clock is
  BEGIN
	count: PROCESS(mclk)
		VARIABLE cont: INTEGER RANGE 0 TO 50000000;
	BEGIN
		if rising_edge(mclk) then
			cont := cont + 1;
			IF (cont=50000000) then 
				clk190 <= '1';
				cont := 0;
			ELSE clk190 <= '0';
			END IF;
		end if;
	END PROCESS count;
	
end Behavioral;