library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity digital_watch is
port (key :	in std_logic;
      hour_dec : out std_logic_vector(6 downto 0);
		hour_uni : out std_logic_vector(6 downto 0);
		min_dec : out std_logic_vector(6 downto 0);
		min_uni : out std_logic_vector(6 downto 0));
end digital_watch;

architecture struct of digital_watch is
		component CI_4511 is 
		port (
		intput : in std_logic_vector(3 downto 0) := (others => '1'); 
		output : out std_logic_vector(6 downto 0) := (others => '1')
		);
		--Ai: in std_logic; 
		--		Bi: in std_logic; 
		--		Ci: in std_logic; 
		--		Di: in std_logic;
		--		Ao: out std_logic; 
		--		Bo: out std_logic; 
		--		Co: out std_logic; 
		--		Do: out std_logic; 
		--		Eo: out std_logic; 
		--		Fo: out std_logic; 
		--		Go: out std_logic
		--);
		end component;
		
begin 
	HA1: CI_4511 port map (output=>min_uni);

end struct;

architecture behavior of digital_watch is
begin
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
end;