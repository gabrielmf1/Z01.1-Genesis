--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		CLOCK_50 : in  std_logic;
		SW       : in  std_logic_vector(9 downto 0);
		HEX0		: out std_logic_vector(6 downto 0);
		HEX1		: out std_logic_vector(6 downto 0);
		HEX2		: out std_logic_vector(6 downto 0);		
		LEDR     : out std_logic_vector(9 downto 0)
	);
end entity; 

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------
	signal SEG0: std_logic_vector(3 downto 0);
	signal SEG1: std_logic_vector(3 downto 0);
	signal SEG2: std_logic_vector(3 downto 0);
	
---------------
-- implementacao
---------------
begin

   u1 : work.binarioToBcd port map(clk   => CLOCK_50,
                                   reset => '0',
                                   binary_in => SW,
                                   bcd0  => SEG0,
                                   bcd1  => SEG1,
                                   bcd2  => SEG2,
                                   bcd3  => open,
                                   bcd4  => open);

        HEX0 <= "1000000" when (SEG0 = "0000") else 
        "1111001" when (SEG0="0001") else
        "0100100" when (SEG0="0010") else
        "0110000" when (SEG0="0011") else
        "0011001" when (SEG0="0100") else
        "0010010" when (SEG0="0101") else
        "0000010" when (SEG0="0110") else
        "1111000" when (SEG0="0111") else
        "0000000" when (SEG0="1000") else
        "0010000" when (SEG0="1001");
		  
		  
        HEX1 <= "1000000" when (SEG1= "0000") else 
        "1111001" when (SEG1="0001") else
        "0100100" when (SEG1="0010") else
        "0110000" when (SEG1="0011") else
        "0011001" when (SEG1="0100") else
        "0010010" when (SEG1="0101") else
        "0000010" when (SEG1="0110") else
        "1111000" when (SEG1="0111") else
        "0000000" when (SEG1="1000") else
        "0010000" when (SEG1="1001");
		  
		  
        HEX2 <= "1000000" when (SEG2 = "0000") else 
        "1111001" when (SEG2="0001") else
        "0100100" when (SEG2="0010") else
        "0110000" when (SEG2="0011") else
        "0011001" when (SEG2="0100") else
        "0010010" when (SEG2="0101") else
        "0000010" when (SEG2="0110") else
        "1111000" when (SEG2="0111") else
        "0000000" when (SEG2="1000") else
        "0010000" when (SEG2="1001");
		  
		  

end rtl;
