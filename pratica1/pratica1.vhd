LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY pratica1 IS
	PORT(
		clk: IN STD_LOGIC;
		S: OUT STD_LOGIC_VECTOR(0 TO 2)
	);

END pratica1;

ARCHITECTURE behave OF pratica1 IS
	TYPE STATE_TYPE IS (S0, S1, S2, S3, S4, S5);
	
	SIGNAL y: STATE_TYPE;
	BEGIN 
		state_machine: PROCESS (clk)
		VARIABLE Z: STD_LOGIC_VECTOR(0 TO 3);
		BEGIN
			IF (clk'EVENT AND clk = '1') THEN
				
				CASE y IS
					WHEN S0 => -- next state and output
						y <= S1;
						S <= "010";
					WHEN S1 =>
						y <= S2;
						S <= "011";
					WHEN S2 =>
						y <= S3;
						S <= "100";
					WHEN S3 =>
						y <= S4;
						S <= "101";
					WHEN S4 =>
						y <= S5;
						S <= "110";
					WHEN S5 =>
						y <= S0;
						S <= "001";
				END CASE;
			
			END IF;
		END PROCESS state_machine;

END behave;