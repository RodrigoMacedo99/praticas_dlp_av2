LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY pratica1 IS
	PORT(
		clk1: IN STD_LOGIC;
		Suni: OUT STD_LOGIC_VECTOR (6 downto 0)
	);

END pratica1;

ARCHITECTURE behave OF pratica1 IS
	
	component counter is
    Port ( clk: in STD_LOGIC;
           S: out STD_LOGIC_VECTOR (2 downto 0)
			  );
	end component;
	
	component div_clock is
    generic ( 
        N : integer := 19
    );
    port (
        mclk : in std_logic;
        clk190 : out std_logic
    );
	end component ;
	
	component encoder is
    Port ( hex : in STD_LOGIC_VECTOR (2 downto 0);
           a_to_g : out STD_LOGIC_VECTOR (6 downto 0)
           );
	end component;
	
	constant N : integer := 3;
	
	signal clk190 : std_logic;

   signal digit : STD_LOGIC_VECTOR (2 downto 0);
	
	BEGIN 
		utt: div_clock
			 generic map (
				  N => N
			 )
			 port map (
				  mclk => clk1,
				  clk190 => clk190
			 );

		count: counter 
			 port map ( clk => clk190,
					  S => digit
					  );
		display: encoder
			 port map ( hex => digit,
					  a_to_g => Suni
					  );

END behave;