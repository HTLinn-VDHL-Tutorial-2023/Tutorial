---
layout: default
parent: Kombinatorische Logik
title: Beispiel Programm
nav_order: 6
---
# Code mit Erklärung


Library IEEE wird importiert
```vhdl
library IEEE;
```

<br />
STD_LOGIC Teil wird genutzt

```vhdl
use IEEE.STD_LOGIC_1164.ALL;
```

<br />
In Entity kombinatorischelogik werden die Ein- und Ausgänge der Schaltung sowie die Variablen definiert.

```vhdl
entity kombinatorischelogik is
	Port ( BUT_H2 : in STD_LOGIC;
			 BUT_G3 : in STD_LOGIC;
			 BUT_F1 : in STD_LOGIC;
			 LED_J3 : out STD_LOGIC);
	signal LED_STATUS : bit;
end kombinatorischelogik;
```

<br />
In architecture Behavioral wird die Funktion der Schaltung definiert

```vhdl
architecture Behaviorial of kombinatorischelogik is
```

<br />
Unterteilbar in mehrere Processes, jeweils mit process und end process begonnen und beendet.

Process 1: wenn der Button BUT_F1 oder BUT_G3 gedrückt ist, wird die Variable LED_STATUS auf 1 gesetzt. (ODER_Gatter zwischen den beiden Buttons)

Process 2: wenn LED_STATUS 1 ist und der Button BUT_H2 gedrückt ist, wird die Led LED_J3 erst eingeschaltet.
```vhdl
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
```
Bei den Buttons ist darauf zu achten, dass sie beim drücken **0** zurückgeben, ungedrückt **1**.


### Hier Noch der Pin Planner

![Pinplanner-picture](../assets/pin_planner_kl.png)


Hier nochmal das ganze in Videoform, falls Sie nicht ganz folgen konnte.


<div style="width: 560px; height: 315px; float: none; clear: both; margin: 2px auto;">
  <embed
    src="https://www.youtube.com/embed/Gf3Ru180WhE?si=MtSJLCstFM2arcbm"
    wmode="transparent"
    type="video/mp4"
    width="100%" height="100%"
    allow="autoplay; encrypted-media; picture-in-picture"
    allowfullscreen
    title="Kombinatorische Logik"
  >
</div>