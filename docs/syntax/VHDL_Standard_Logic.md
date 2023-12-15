---
layout: default
parent: Syntax
title: Standard Logic
nav_order: 7
---

# VHDL Standard Logic (std_logic)

## Einführung:

In VHDL (VHSIC Hardware Description Language), STD_LOGIC ist ein Datentyp, der speziell **für die Modellierung von Signalen in digitalen Schaltungen** verwendet wird.

Der Name, STD_LOGIC steht für "standard logic" und **repräsentiert einen digitalen Signalzustand.**

STD_LOGIC wird oft für die Modellierung von Signalen in digitalen Schaltungen, wie zum Beispiel **Eingangs- und Ausgangssignalen von Logikgattern oder Flip-Flops**, verwendet.

Man kann **logische Operationen direkt** auf Signale vom Typ STD_LOGIC **anwenden**, was die Beschreibung und Simulation digitaler Schaltungen erleichtert.

### CODEBEISPIEL:

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Beispiel ist
    Port ( Eingang : in STD_LOGIC;
           Ausgang : out STD_LOGIC );
end Beispiel;

architecture Verhalten of Beispiel is
begin
    Prozess1: process(Eingang)
    begin
        if (Eingang = '1') then
            Ausgang <= '0';
        else
            Ausgang <= '1';
        end if;
    end process Prozess1;
end Verhalten;
```

In diesem Beispiel wird das Ausgangssignal **‚Ausgang‘** auf den invertierten Wert des Eingangssignals **‚Eingang‘** gesetzt.

## Allgemeine Anwendungen mit Beispielen:

### Digitale Schaltungen modellieren:

Der STD_LOGIC-Typ wird in VHDL verwendet, um digitale Signale zu modellieren, die in Schaltungen wie Logikgattern, Flip-Flops, Multiplexern und anderen digitalen Bausteinen auftreten.

```vhdl
*signal my_signal: STD_LOGIC;*
```

### Hardware-Beschreibungssprache (HDL):

VHDL ist eine HDL, die verwendet wird, um digitale Schaltungen zu beschreiben. Der STD_LOGIC-Typ ermöglicht eine präzise Modellierung von Signalen mit verschiedenen Zuständen wie logischem Null, logischem Eins, High Impedance usw.

### Entwurf und Simulation von Schaltungen:

Mit STD_LOGIC können Sie digitale Schaltungen entwerfen und simulieren, bevor Sie sie auf einem FPGA oder ASIC implementieren. Dies ermöglicht eine effektive Überprüfung des Schaltungsverhaltens und die Fehlerbehebung vor der physischen Implementierung.

```vhdl
entity Beispiel is
    Port ( Eingang : in STD_LOGIC;
           Ausgang : out STD_LOGIC );
end Beispiel;

architecture Verhalten of Beispiel is
begin
    Ausgang <= not Eingang after 5 ns; -- Simuliert eine Invertierung mit einer Verzögerung
von 5 ns
end Verhalten;
```

### Verhalten von Logikgattern beschreiben:

Sie können STD_LOGIC verwenden, um das Verhalten von Logikgattern zu beschreiben, indem Sie logische Operationen auf Signale dieses Typs anwenden. Zum Beispiel können Sie AND-, OR- oder NOT-Operationen auf STD_LOGIC-Signale anwenden.

```vhdl
signal A, B, Ergebnis: STD_LOGIC;

-- OR-Gatter
Ergebnis <= A or B;

-- AND-Gatter
Ergebnis <= A and B;

-- NOT-Gatter
Ergebnis <= not A;
```

### Interprozesskommunikation:

STD_LOGIC wird häufig verwendet, um Signale zwischen verschiedenen Prozessen in einem VHDL-Design zu übertragen. Dies erleichtert die Kommunikation zwischen verschiedenen Teilen eines Designs.

```vhdl
*signal Signal1, Signal2: STD_LOGIC;*
```

### Überwachung von Zuständen:

Durch die Verwendung von verschiedenen Zuständen wie 'U' (undefiniert) oder 'Z' (High Impedance) können Sie den Zustand von Signalen präzise modellieren und überwachen, was wichtig ist, um potenzielle Probleme in Ihrer Schaltung zu erkennen.

```vhdl
signal Zustand: STD_LOGIC := 'U'; -- Undefinierter Zustand

process (clk)
begin
    if rising_edge(clk) then
        if (Eingang = '1') then
            Zustand <= '0';
        else
            Zustand <= '1';
        end if;
    end if;
end process;
```

Insgesamt erleichtert der STD_LOGIC-Typ in VHDL die Modellierung von digitalen Signalen in komplexen Schaltungsentwürfen und trägt zur Genauigkeit und Verständlichkeit von HDL-beschriebenen Designs bei.