library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CI_4511 is
Port ( Ai, Bi, Ci, Di : in  STD_LOGIC;
       Ao, Bo, Co, Do, Eo, Fo, Go : out  STD_LOGIC
     );
end CI_4511;

architecture Behavioral of CI_4511 is
begin
	process(Ai, Bi, Ci, Di)	
	begin
		if (Ai = '1') and (Bi = '0') and (Ci = '0') and (Di = '0') then		
			Ao <= '0';
			Bo <= '1';
			Co <= '1';
			Do <= '0';
			Eo <= '0';
			Fo <= '0';
			Go <= '0';
		elsif (Ai = '0') and (Bi = '1') and (Ci = '0') and (Di = '0') then		
			Ao <= '1';
			Bo <= '1';
			Co <= '0';
			Do <= '1';
			Eo <= '1';
			Fo <= '0';
			Go <= '1';
		elsif (Ai = '1') and (Bi = '1') and (Ci = '0') and (Di = '0') then		
			Ao <= '1';
			Bo <= '1';
			Co <= '1';
			Do <= '1';
			Eo <= '0';
			Fo <= '0';
			Go <= '1';
		elsif (Ai = '0') and (Bi = '0') and (Ci = '1') and (Di = '0') then		
			Ao <= '0';
			Bo <= '1';
			Co <= '1';
			Do <= '0';
			Eo <= '0';
			Fo <= '1';
			Go <= '1';
		elsif (Ai = '1') and (Bi = '0') and (Ci = '1') and (Di = '0') then		
			Ao <= '1';
			Bo <= '0';
			Co <= '1';
			Do <= '1';
			Eo <= '0';
			Fo <= '1';
			Go <= '1';
		elsif (Ai = '0') and (Bi = '1') and (Ci = '1') and (Di = '0') then		
			Ao <= '0';
			Bo <= '0';
			Co <= '1';
			Do <= '1';
			Eo <= '1';
			Fo <= '1';
			Go <= '1';
		elsif (Ai = '1') and (Bi = '1') and (Ci = '1') and (Di = '0') then		
			Ao <= '1';
			Bo <= '1';
			Co <= '1';
			Do <= '0';
			Eo <= '0';
			Fo <= '0';
			Go <= '0';
		elsif (Ai = '0') and (Bi = '0') and (Ci = '0') and (Di = '1') then		
			Ao <= '1';
			Bo <= '1';
			Co <= '1';
			Do <= '1';
			Eo <= '1';
			Fo <= '1';
			Go <= '1';
		elsif (Ai = '1') and (Bi = '0') and (Ci = '0') and (Di = '1') then		
			Ao <= '1';
			Bo <= '1';
			Co <= '1';
			Do <= '0';
			Eo <= '0';
			Fo <= '0';
			Go <= '0';
		else		
			Ao <= '0';
			Bo <= '0';
			Co <= '0';
			Do <= '0';
			Eo <= '0';
			Fo <= '0';
			Go <= '0';
		end if;
	end process;
end Behavioral;