---
layout: default
parent: Sequentielle Logik
title: Beispiel Programm
nav_order: 6
---
# Code mit Erklärung
Dieses Demoprogramm handelt von sequenzieller Logik, genauer gesagt von einem RS-FlipFlop.



Von der Library IEEE nutzen wir diese 3 Bereiche.
```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
```

<br />
In entity werden, wie schon bei der kombinatorischen Logik, die Ein- und Ausgänge definiert. Achtung: Diese müssen auch im Pin-Planner korrekt eingestellt sein!

```vhdl
entity Sequentiellelogikdemo is
    Port ( R : in STD_LOGIC;
           S : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC;
           QN : out STD_LOGIC);
end Sequentiellelogikdemo;
```

<br />
In architecture Behaviorial wird die Funktion der Schaltung definiert.

```vhdl
architecture Behavioral of Sequentiellelogikdemo is
```

<br />
Am Beginn werden 2 Variablen (Signale) definiert, die später für den temporären Stand der Schaltung verwendet werden.

```vhdl
	signal Q_temp, QN_temp : STD_LOGIC;
```

<br />
In diesem Programm gibt es nur einen process, in welchem das gesamte RS-FipFlop definiert ist.

```vhdl
begin
    process (CLK)
    begin
```

<br />	
Das erste if-statement wird nur ausgeführt, wenn der Takt bei einer steigenden Flanke angelangt ist, das FlipFlop ist also Taktflankengesteuert.

```vhdl	
        if rising_edge(CLK) then
            if R = '1' and S = '0' then
                Q_temp <= '0';
                QN_temp <= '1';
```

<br />
In den restlichen if-statements wird nun die eigentliche Logik des FlipFlops definiert. 
Ist der Set-Eingang auf 1 gesetzt und der Reset-Eingang auf 0 gesetzt, dann ist der nicht negierte Ausgang 1, der negierte 0. 
Umgekehrt ist der negierte Ausgang 1 und der nicht negierte 0, wenn der Reset-Eingang auf 1, der Set-Ausgang auf 0 gesetzt ist. 
Wenn kein Button gredrückt ist, bleibt der vorhergehende Zustand erhalten. 
Der Zustand, dass beide Buttons genau gleichzeitig gedrückt sind, ist in der Realität nicht realisierbar, daher ist er in dem Programm nicht enthalten

```vhdl
            elsif R = '0' and S = '1' then
                Q_temp <= '1';
                QN_temp <= '0';
            else
                Q_temp <= Q_temp;
                QN_temp <= QN_temp;
            end if;
        end if;
    end process;
```

<br />
Nach dem eigentlichen process wird dann noch der Status der Variablen der Ausgänge auf die richtigen Ausgänge geschrieben.


```vhdl
    Q <= Q_temp;
    QN <= QN_temp;
end Behavioral;
```


Bei den Buttons ist darauf zu achten, dass sie beim drücken **0** zurückgeben, ungedrückt **1**.

<br />
###Hier Noch der Pin Planner

![Pinplanner-picture](../assets/pin_planner_sl.png)