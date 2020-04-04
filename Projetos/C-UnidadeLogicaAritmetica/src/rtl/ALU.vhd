-- Elementos de Sistemas
-- by Luciano Soares
-- ALU.vhd

-- Unidade Lógica Aritmética (ULA)
-- Recebe dois valores de 16bits e
-- calcula uma das seguintes funções:
-- X+y, x-y, y-x, 0, 1, -1, x, y, -x, -y,
-- X+1, y+1, x-1, y-1, x&y, x|y
-- De acordo com os 6 bits de entrada denotados:
-- zx, nx, zy, ny, f, no.
-- Também calcula duas saídas de 1 bit:
-- Se a saída == 0, zr é definida como 1, senão 0;
-- Se a saída <0, ng é definida como 1, senão 0.
-- a ULA opera sobre os valores, da seguinte forma:
-- se (zx == 1) então x = 0
-- se (nx == 1) então x =! X
-- se (zy == 1) então y = 0
-- se (ny == 1) então y =! Y
-- se (f == 1) então saída = x + y
-- se (f == 0) então saída = x & y
-- se (no == 1) então saída = !saída
-- se (out == 0) então zr = 1
-- se (out <0) então ng = 1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
	port (
			x,y:   in STD_LOGIC_VECTOR(15 downto 0); -- entradas de dados da ALU
			zx:    in STD_LOGIC;                     -- zera a entrada x
			nx:    in STD_LOGIC;                     -- inverte a entrada x
			zy:    in STD_LOGIC;                     -- zera a entrada y
			ny:    in STD_LOGIC;                     -- inverte a entrada y
			f:     in STD_LOGIC_VECTOR(1 downto 0);  -- se 0 calcula x & y, senão x + y
			no:    in STD_LOGIC;                     -- inverte o valor da saída
			zr:    out STD_LOGIC;                    -- setado se saída igual a zero
			ng:    out STD_LOGIC;                    -- setado se saída é negativa
			carry: out STD_LOGIC;
			saida: out STD_LOGIC_VECTOR(15 downto 0) -- saída de dados da ALU
	);
end entity;

architecture  rtl OF alu is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

	component zerador16 IS
		port(z   : in STD_LOGIC;
			 a   : in STD_LOGIC_VECTOR(15 downto 0);
			 y   : out STD_LOGIC_VECTOR(15 downto 0)
			);
	end component;

	component inversor16 is
		port(z   : in STD_LOGIC;
			 a   : in STD_LOGIC_VECTOR(15 downto 0);
			 y   : out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component Add16 is
		port(
			a   :  in STD_LOGIC_VECTOR(15 downto 0);
			b   :  in STD_LOGIC_VECTOR(15 downto 0);
			carry: out STD_LOGIC;
			q   : out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component And16 is
		port (
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component comparador16 is
		port(
			a   : in STD_LOGIC_VECTOR(15 downto 0);
			zr   : out STD_LOGIC;
			ng   : out STD_LOGIC
    );
	end component;

	component Mux16 is
		port (
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC;
			q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component Mux4Way16 is
		port ( 
				a:   in  STD_LOGIC_VECTOR(15 downto 0);
				b:   in  STD_LOGIC_VECTOR(15 downto 0);
				c:   in  STD_LOGIC_VECTOR(15 downto 0);
				d:   in  STD_LOGIC_VECTOR(15 downto 0);
				sel: in  STD_LOGIC_VECTOR(1 downto 0);
				q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

   SIGNAL zxout,zyout,nxout,nyout,andout,adderout,xorout,muxout,precomp: std_logic_vector(15 downto 0);
   SIGNAL carryout: std_logic;
begin

    -- Zera a entrada 'x' se 'zx' = '1'
	zeraX: zerador16 port map (zx, x, zxout);

	-- Zera a entrada 'y' se 'zy' = '1'
	zeraY: zerador16 port map (zy, y, zyout);

	-- Inverte o sinal da saida 'zxout' se 'nx' = '1'
	inverteX: inversor16 port map (nx, zxout, nxout);

	-- Inverte o sinal da saida 'zyout' se 'ny' = '1'
	inverteY: inversor16 port map (ny, zyout, nyout);

	-- Adiciona os sinais das saidas 'nxout' e 'nyout'
	addXY: Add16 port map (nxout, nyout, carryout, adderout);

	-- Faz o & das saidas 'nxout' e 'nyout'
	andXY: And16 port map (nxout, nyout, andout);

	-- Faz o XOR das saidas de 'nxout' e 'nyout'
	xorout <= nxout xor nyout;

	-- Seleciona uma das entradas (andout, adderout, xorout e zero) como sua saida
	multiplexador: Mux4Way16 port map (andout, adderout, xorout,"0000000000000000", f, muxout);

	-- Inverte o sinal de saida 'muxout' do multiplexador se 'no' = '1'
	inverteS: inversor16 port map (no, muxout, precomp);

	-- Analisa o resultado e se o mesmo for zero 'zr' = '1' e caso seja negativo 'ng' = '1'
	comparador: comparador16 port map (precomp, zr, ng);
	
	saida <= precomp;
	carry <= carryout;


end architecture;
