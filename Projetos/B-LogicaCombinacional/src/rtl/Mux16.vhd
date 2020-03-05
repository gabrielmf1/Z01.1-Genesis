library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0); -- entrada 16 bits
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC; --seletor
			q:   out STD_LOGIC_VECTOR(15 downto 0)); --saida
end entity;

architecture arch of Mux16 is
begin
	q <= a when (sel = '0') else b;

end architecture;
