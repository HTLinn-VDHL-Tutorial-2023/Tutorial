library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kombinatorischelogik is
	Port ( BUT_H2 : in STD_LOGIC;
			 BUT_G3 : in STD_LOGIC;
			 BUT_F1 : in STD_LOGIC;
			 LED_J3 : out STD_LOGIC);
	signal LED_STATUS : bit;
end kombinatorischelogik;

architecture Behaviorial of kombinatorischelogik is
begin
	process (BUT_F1, BUT_G3)
	begin
		
		if (BUT_F1 = '0' or BUT_G3 = '0') then
			LED_STATUS <= '1';
		else
			LED_STATUS <= '0';
		end if;
	end process;
	
	process (BUT_H2, LED_STATUS)
	begin
		if (BUT_H2 = '0' and LED_STATUS = '1') then
			LED_J3 <= '1';
		else
			LED_J3 <= '0';
		end if;
	end process;
		
end Behaviorial;