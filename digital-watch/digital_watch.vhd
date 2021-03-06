library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--top module(full adder) entity declaration
entity digital_watch is
port ( --Ai, Bi, Ci, Di : in std_logic;
		variabkey :	in std_logic;
      hour_dec : out std_logic_vector(6 downto 0);
		hour_uni : out std_logic_vector(6 downto 0);
		min_dec : out std_logic_vector(6 downto 0);
		min_uni : out std_logic_vector(6 downto 0));
end digital_watch;
 --top module architecture declaration.
architecture behavior of digital_watch is
--signal s1,c1,c2 : std_logic:='0';
signal Ai, Bi, Ci, Di : std_logic:='0';
attribute altera_chip_pin_lc of hour_dec : signal is "Ao, Bo, Co, Do, Eo, Fo, Go"; 
begin
--instantiate and do port map for the first half adder.
	process (key)
	begin 
		if (key = '0') then
			Ai <= '0';
			Bi <= '1';
		else	
			Ai <= '1';
			Bi <= '0';
		end if;
	end process;
HA1 : entity work.CI_4511 port map(Ai, Bi, Ci, Di, Ao, Bo, Co, Do, Eo, Fo, Go);
--instantiate and do port map for the second half adder.
end;