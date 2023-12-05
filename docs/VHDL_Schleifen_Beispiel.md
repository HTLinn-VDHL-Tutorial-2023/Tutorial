# VHDL-Schleifen: Codebeispiel

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LoopExample is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC);
end LoopExample;

architecture Behavioral of LoopExample is
begin
    process(clk, rst)
    begin
        if rst = '1' then
            -- Reset-Zustand
            null;
        elsif rising_edge(clk) then
            -- Hier beginnt die Schleife
            for i in 0 to 9 loop
                -- Gib den aktuellen Zählerwert auf der Konsole aus
                report "Counter Value: " & integer'image(i);
            end loop;
            -- Hier endet die Schleife
        end if;
    end process;
end Behavioral;
```