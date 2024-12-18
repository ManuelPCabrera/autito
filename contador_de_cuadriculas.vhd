library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador_de_cuadriculas is --CONTADOR DE CUANTAS CUADRICULAS CRUZÓ!!!!!!
    port (
        sensor : in std_logic;         -- entrada del sensor desp del antirebote (1 para blanco, 0 para negro)
        clock  : in std_logic;
        a3, a2, a1, a0 : out std_logic; -- bits más significativos de la cuenta (seria en decimal) para el 7 segmentos
        b3, b2, b1, b0 : out std_logic  -- bits menos significativos de la cuenta (seria en decimal) para el 7 segmentos
    );
end contador_de_cuadriculas;

architecture Behavioral of contador_de_cuadriculas is
	 signal unidades : std_logic_vector(3 downto 0) := (others => '0'); -- contador de unidades
    signal decenas  : std_logic_vector(3 downto 0) := (others => '0'); -- contador de decenas
    signal sensor_ant : std_logic := '0'; -- valor anterior.
begin
    process(clock)
    begin
        if rising_edge(clock) then --detecta flanco positivo de 0 a 1
            if sensor = '1' and sensor_ant = '0' then
                if unidades > "1001" then  -- si llega a 10 en unidades o mas(por algun error o no se), se reinicia y suma uno a la decena, en caso de no tener 9 decenas
                    unidades <= "0000";
                    if decenas > "1001" then  -- si llega a 10 decenas o mas (por algun error o no se) se reinicia a 0
                        decenas <= "0000";
                    else
                        decenas <= decenas + 1;
                    end if;
                else
                    unidades <= unidades + 1;
                end if;
            end if;
            sensor_ant <= sensor;

            a3 <= decenas(3);
            a2 <= decenas(2);
            a1 <= decenas(1);
            a0 <= decenas(0);--- a es el array de las decenas(el mas significativo)
            b3 <= unidades(3);
            b2 <= unidades(2);
            b1 <= unidades(1);
            b0 <= unidades(0); ---b es el array de las decenas(el menos significativo)
        end if;
    end process;
end Behavioral;