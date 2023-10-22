LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY counter IS
	PORT(
		clk: IN STD_LOGIC;
		S: OUT STD_LOGIC_VECTOR (2 downto 0)
	);

END counter;

ARCHITECTURE behave OF counter IS
	TYPE STATE_TYPE IS (S0, S1, S2, S3, S4, S5);
	
	SIGNAL y: STATE_TYPE;
	BEGIN 
		state_machine: PROCESS (clk)
		VARIABLE Z: STD_LOGIC_VECTOR(0 TO 3);
		BEGIN
			IF rising_edge(clk) THEN
				
				CASE y IS
					WHEN S0 => -- next state and output
						y <= S1;
						S <= "000";
					WHEN S1 =>
						y <= S2;
						S <= "001";
					WHEN S2 =>
						y <= S3;
						S <= "010";
					WHEN S3 =>
						y <= S4;
						S <= "011";
					WHEN S4 =>
						y <= S5;
						S <= "100";
					WHEN S5 =>
						y <= S0;
						S <= "101";
				END CASE;
			
			END IF;
		END PROCESS state_machine;

END behave;