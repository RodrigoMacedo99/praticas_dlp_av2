library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM_MEF is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           duty : in STD_LOGIC_VECTOR (2 downto 0);
           pwm_out : out STD_LOGIC);
end PWM_MEF;

architecture Behavioral of PWM_MEF is
type State_Type is (init,PRIMEIRO,SEGUNDO,TERCEIRO,QUARTO,QUINTO,SEXTO,SETIMO);
signal state, next_state : State_Type;
signal onoff: STD_LOGIC_vector(6 downto 0):="0000000";
signal sinal2: STD_LOGIC_vector(6 downto 0):="0000000";
begin
 
 process (clk, rst, duty)
    begin
        if rst = '0' then
            state <= init;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
        if state = SETIMO and clk='0' then
            state <= next_state;

		  end if;
    end process;

process(state,onoff)
    begin
    CASE state is  
        when init=>
        pwm_out<='0';
        onoff<=sinal2;
        next_state<=PRIMEIRO;
        when PRIMEIRO=>
            onoff<=sinal2;
            if onoff(6)='1' then
                pwm_out<='1';
            else
                pwm_out<='0';
            END IF;
            next_state<=SEGUNDO;
        when SEGUNDO=>
            if onoff(5)='1' then
                pwm_out<='1';
            else
                pwm_out<='0';
                END IF;
            next_state<=TERCEIRO;
        when TERCEIRO=>
            if onoff(4)='1' then
                pwm_out<='1';
            else
                pwm_out<='0';
                END IF;
            next_state<=QUARTO;
        when QUARTO=>
            if onoff(3)='1' then
                pwm_out<='1';
            else
                pwm_out<='0';
                END IF;
            next_state<=QUINTO;
        when QUINTO=>
            if onoff(2)='1' then
                pwm_out<='1';
            else
                pwm_out<='0';
                END IF;
            next_state<=SEXTO;
        when SEXTO=>
            if onoff(1)='1' then
                pwm_out<='1';
            else
                pwm_out<='0';
                END IF;
            next_state<=SETIMO;
        when SETIMO=>
            if onoff(0)='1' then
                pwm_out<='1';
            else
                pwm_out<='0';
                END IF;
            next_state<=init;
                 
    end CASE;
end process;

process(duty,state)
    begin
        CASE duty is
            when "001"=>
                sinal2 <="0000001";
            when "010"=>
                sinal2 <="0000011";
            when "011"=>
                sinal2 <="0000111";
            when "100"=>
                sinal2 <="0001111";
            when "101"=>
                sinal2 <="0011111";
            when "110"=>
                sinal2 <="0111111";
            when "111"=>
                sinal2 <="1111111";
            when others=>
                sinal2<=(others=>'0');
        end case;
    end process;
	 end Behavioral;