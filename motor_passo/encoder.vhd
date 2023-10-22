library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder is
    Port ( hex : in STD_LOGIC_VECTOR (2 downto 0);
           a_to_g : out STD_LOGIC_VECTOR (6 downto 0)
           );
end encoder;

architecture Behavioral of encoder is

begin
process (hex)
    begin
      case hex is
      when "000" => a_to_g <="1000000"; -- 0 -- NB: O = ON , 1 = OFF
      when "001" => a_to_g <="1111001"; -- 1
      when "010" => a_to_g <="0100100"; -- 2
      when "011" => a_to_g <="0110000"; -- 3 
      when "100" => a_to_g <="0011001"; -- 4
      when "101" => a_to_g <="0010010"; -- 5
      when "110" => a_to_g <="0000010"; -- 6 
      when "111" => a_to_g <="1111000"; -- 7
      when others => a_to_g <="0001110"; -- F
    end case;    
  end process;

end Behavioral;