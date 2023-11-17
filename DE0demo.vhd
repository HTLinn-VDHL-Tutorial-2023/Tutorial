library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DE0demo is
    Port ( SW_J6 : in  STD_LOGIC;
           SW_H5 : in  STD_LOGIC;
           LED_B1 : out STD_LOGIC;
			  LED_B2 : out STD_LOGIC;
			  LED_C2 : out STD_LOGIC;
			  LED_C1 : out STD_LOGIC;
			  LED_E1 : out STD_LOGIC;
			  LED_F2 : out STD_LOGIC;
			  LED_H1 : out STD_LOGIC;
			  LED_J3 : out STD_LOGIC;
			  LED_J2 : out STD_LOGIC;
			  LED_J1 : out STD_LOGIC);
end DE0demo;

architecture Behavioral of DE0demo is
begin
    process (SW_J6, SW_H5)
    begin
        if (SW_J6 = '1' and SW_H5 = '1') then
            LED_B1 <= '1';
				LED_B2 <= '1';
				LED_C2 <= '1';
				LED_C1 <= '1';
				LED_E1 <= '1';
				LED_F2 <= '1';
				LED_H1 <= '1';
				LED_J3 <= '1';
				LED_J2 <= '1';
				LED_J1 <= '1';
        else
            LED_B1 <= '0';
				LED_B2 <= '0';
				LED_C2 <= '0';
				LED_C1 <= '0';
				LED_E1 <= '0';
				LED_F2 <= '0';
				LED_H1 <= '0';
				LED_J3 <= '0';
				LED_J2 <= '0';
				LED_J1 <= '0';
        end if;
    end process;
end Behavioral;