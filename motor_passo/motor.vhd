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

entity motor is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           s : in STD_LOGIC;
           fase : out STD_LOGIC_VECTOR (3 downto 0)
           );
end motor;

architecture Behavioral of motor is
type state_type is (A, B, C, D);
signal current_state: state_type := A;

begin
passo_process: process(clk, rst, s)
	begin
		if rst='0' then current_state <= A;
		elsif (clk'event and clk='1') then
			case current_state is
				when A =>
					if s='1' then 
						current_state <= B;
					else current_state <= D;
					end if;
					fase <= "1000";
				when B =>
					if s='1' then 
						current_state <= C;
					else current_state <= A;
					end if;
					fase <= "0100";
				when C =>
					if s='1' then 
						current_state <= D;
					else current_state <= B;
					end if;
					fase <= "0010";
				when D =>
					if s='1' then 
						current_state <= A;
					else current_state <= C;
					end if;
					fase <= "0001";
				end case;
		end if;
	end process;

end Behavioral;


