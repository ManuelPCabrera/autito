library ieee;
use ieee.std_logic_1164.all;

entity doblar is

	port(
		clk,df,reset	: in	std_logic;
	   di,dd	 : in	std_logic_vector(11 downto 0);
		M1I,M0I,M1D,M0D	 : out	std_logic
	);

end entity;

architecture rtl of doblar is

	-- Build an enumerated type for the state machine
	type state_type is (parado,der,izq);

	-- Register to hold the current state
	signal state   : state_type;
	signal dd: std_logic;
	signal di:std_logic;
	signal ic:std_logic;----iniciar contador doblar
	signal tc:std_logic;----termina contador doblar
	signal clear:std_logic;-------clear contador doblar
	
	begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then
			case state is
				when s0=>
					if input = '1' then
						state <= s1;
					else
						state <= s0;
					end if;
				when s1=>
					if input = '1' then
						state <= s2;
					else
						state <= s1;
					end if;
				when s2=>
					if input = '1' then
						state <= s3;
					else
						state <= s2;
					end if;
				when s3 =>
					if input = '1' then
						state <= s0;
					else
						state <= s3;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when s0 =>
				output <= "00";
			when s1 =>
				output <= "01";
			when s2 =>
				output <= "10";
			when s3 =>
				output <= "11";
		end case;
	end process;

end rtl;
