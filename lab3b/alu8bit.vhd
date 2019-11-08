
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL;  
USE ieee.std_logic_arith.ALL;  
USE ieee.std_logic_unsigned.ALL; 
ENTITY alu8bit IS 
PORT(
a      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);  
b     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);  
op     : IN STD_LOGIC_VECTOR( 2 DOWNTO 0);  
result   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);  
cout   : OUT STD_LOGIC;  
zero   : OUT STD_LOGIC);  
END alu8bit; 
ARCHITECTURE description OF alu8bit IS 

component bit8Adder is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			cin: in STD_LOGIC;
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0);
			carry: out STD_LOGIC);
end  component;

component bit8And is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end  component;

component bit8Inverse is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end  component;

component bit8Or is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			b: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end  component;

component bit8ROL is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end  component;

component bit8ROR is
	port (a: in STD_LOGIC_VECTOR (7 DOWNTO 0);
			result: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end  component;

component Multiplexer2to1 IS
		PORT (w0, w1	   :IN STD_LOGIC_VECTOR(7 downto 0);
			s 		   :IN STD_LOGIC;
			f		   :OUT STD_LOGIC_Vector(7 downto 0));
END component;

component Multiplexer8to1 IS
		PORT (w0, w1, w2, w3, w4,w5	   :IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			s 		   :IN STD_LOGIC_VECTOR(2 Downto 0);
			f		   :OUT STD_LOGIC_Vector (7 DOWNTO 0));
END component ;
		
signal andResult :std_LOGIC_VECTOR(7 downto 0);
signal orResult :std_LOGIC_VECTOR(7 downto 0);
signal adderResult :std_LOGIC_VECTOR(7 downto 0);
signal lslResult :std_LOGIC_VECTOR(7 downto 0);
signal lsrResult :std_LOGIC_VECTOR(7 downto 0);
signal bNegOrNot :std_LOGIC_VECTOR(7 downto 0);
signal bNot :std_LOGIC_VECTOR(7 downto 0);
signal check: std_LOGIC_VECTOR (7 downto 0);
		
BEGIN
	
	mux1:	Multiplexer8to1 port map(w0 =>andResult,
											w1 =>orResult,
											w2 => adderResult,
											w3 => adderResult,
											w4 => lslResult,
											w5 => lsrResult,
											s => op,
											f => check);
										
	adder1: bit8Adder port map(a => a,
										b =>bNegOrNot,
										cin => op(2),
										result => adderResult,
										carry => cout);

	and1: bit8And port map (a,b,andResult);
	or1: bit8Or port map (a,b,orResult);
	lsr1: bit8ROR port map(a,lsrResult);
	lsl1: bit8ROL port map(a,lslResult);
	
	negMux: Multiplexer2to1 port map (w0 =>b,
												w1 =>bNot,
												s => op(2),
												f => bnegOrNot);
									
	notber: bit8Inverse port map (b,bNot);
	
	process (check)
	begin
	result<=check;
				if check = "00000000" then
            zero <= '1';
				else
				zero<='0';
				end if;
	end process;
	
END description; 