library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4Way is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(1 downto 0);
			q:   out STD_LOGIC);
end entity;

architecture arch of Mux4Way is
begin

		q <= (not sel(1) and not sel(0) and a) or (not sel(1) and sel(0) and b) or (sel(1) and not sel(0) and c) or (sel(1) and sel(0) and d);

end architecture;
