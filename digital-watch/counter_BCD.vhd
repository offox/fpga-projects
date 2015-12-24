library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity counter_BCD is
   port( clock_enable: in std_logic;
 	 clock: in std_logic;
 	 reset: in std_logic;
 	 output: out std_logic_vector(0 to 3));
end counter_BCD;
 
architecture behavioral of counter_BCD is
   signal temp: std_logic_vector(0 to 3);
begin   
    process(clock, reset)
    begin
    if reset='1' then
        temp <= "0000";
    elsif(clock'event and clock='1') then
		if (clock_enable = '0') then
			if temp = "1010" then
			   temp <= "0000";
			else
			   temp <= temp + 1;
			end if;
		end if;
    end if;
    end process;
    output <= temp;
end behavioral;