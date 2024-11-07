library ieee;
use ieee.std_logic_1164.all;

entity doblar is

	port(
		clk,df,reset	: in	std_logic;
	   di,dd	 : in	std_logic_vector(11 downto 0);
		M1I,M0I,M1D,M0D,Envio1,Envio0	 : out	std_logic
	);

end entity;

architecture rtl of doblar is

	-- Build an enumerated type for the state machine
	type state_type is (parado,der,izq,reversa);

	-- Register to hold the current state
	signal state   : state_type;
	signal dd: std_logic;
	signal di:std_logic;
	signal ic:std_logic;----iniciar contador doblar
	signal tc1:std_logic;----termina contador doblar 90
	signal tc2:std_logic;----termina contador doblar 180
	signal clc:std_logic;-------clear contador doblar
	signal cclk:std_logic;-------clock contador reducido a 50khz
	
	begin
tc1<= s0;----------------------------------------------------------------------
	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then
			case state is
				when parado=>
					if (df='1' and di='1') then
						if (dd='1') then
							state<= reversa;
						else
							state<= der;
						end if;
					else
						state <= izq;
					end if;
				when der=>
					if tc1='0' then
						state <= der;
					else
						state <= ;---------------------------------------agregar adelante
					end if;
				when izq=>
					if tc1='0' then
						state <= izq;
					else
						state <= ;-------------------------------------agregar adelante
					end if;
				when reversa =>
					if tc2='0' then
						state <= reversa;
					else
						state <= ;---------agregar adelante
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when parado =>
				M1I<= '0';M0I<= '0';M1D<= '0';M0D<= '0';
				ic<= '0';clc<= '1';
				envio0<= '0';envio1<= '0';
			when izq =>
				M1I<= '0';M0I<= '1';M1D<= '1';M0D<= '0';
				ic<= '1';clc<= '0';
				envio0<= '1';envio1<= '0';
			when der =>
				M1I<= '1';M0I<= '0';M1D<= '0';M0D<= '1';
				ic<= '1';clc<= '0';
				envio0<= '0';envio1<= '1';
			when reversa =>
				M1I<= '1';M0I<= '0';M1D<= '0';M0D<= '1';
				ic<= '1';clc<= '0';
				envio0<= '1';envio1<= '1';

			end case;
	end process;

end rtl;
