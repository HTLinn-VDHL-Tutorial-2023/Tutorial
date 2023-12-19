---
layout: default
parent: Sequentielle Logik
title: Sequentielle Logik
nav_order: 1
---


# Sequenzielle Logik mit VHDL

## Einleitung

Sequenzielle Logik in VHDL ermöglicht die **Beschreibung von Schaltungen**, die Zustandsabhängigkeiten und zeitliche Abläufe berücksichtigen. Im Gegensatz zur **kombinatorischen Logik, die nur gegenwärtige Eingaben** betrachtet, behält die **sequenzielle Logik den Zustand der Schaltung im Gedächtnis** und **berücksichtigt vorherige Ereignisse**.

Zentrales Element hierbei ist die **Finite State Machine (FSM)**, die als abstrakte Maschine fungiert und durch Zustände, Zustandsübergänge und Aktionen definiert wird. In VHDL wird **sequenzielle Logik durch Prozesse dargestellt**, die auf Taktflanken reagieren und den Zustand der FSM aktualisieren.

Im folgenden Tutorial werden die grundlegenden Schritte zur Umsetzung sequenzieller Logik in VHDL anhand eines **einfachen 2-Bit-Zählers** erläutert. Dieser Code kann als Ausgangspunkt dienen, um komplexe sequenzielle Logikschaltungen in VHDL zu entwickeln und zu verstehen.

## Schritterklärungen

### SYNTAX:

```vhdl
process <empfindlichkeitsliste>
	-- hier können lokale Signale oder Variablen deklariert werden
begin
	-- hier ist eine sequenzielle Umgebung
end process;
```

### 1. Finite State Machines (FSM):

### Was ist das:

Eine abstrakte Maschine, die sich in einem von endlich vielen Zuständen befindet.

### Warum:

Sequenzielle Logik verwendet Finite State Machines, um Schaltungszustände zu modellieren. Das ist besonders nützlich für Anwendungen mit Zustandsabhängigkeiten, wie beispielsweise Zähler, Steuerungen und Speicher.

### 2. Taktflanken und Prozesse:

### Was ist das:

Taktflanken beziehen sich auf steigende- oder fallende Kanten des Taktsignals. Prozesse sind Codeblöcke in VHDL, die auf diese Kanten reagieren.

### Warum:

Durch Reaktion auf Taktflanken werden Zustandsübergänge synchronisiert. Prozesse ermöglichen die Modellierung zeitlicher Abläufe und Zustandsänderungen.

### 3. Zustandsübergänge und Logik:

### Was ist das:

Zustandsübergänge sind Wechsel zwischen verschiedenen Zuständen. Logik bestimmt, wie diese Übergänge abhängig von Eingaben erfolgen.

### Warum:

Diese Elemente ermöglichen die Beschreibung von Abläufen und Entscheidungen in digitalen Schaltungen.

### 4. 2-Bit-Zähler Beispiel:

### Was ist das:

Ein einfaches Beispiel für sequenzielle Logik, das einen Zähler mit verschiedenen Zuständen darstellt.

### Warum:

Das Beispiel veranschaulicht, wie Zustände und Zustandsübergänge in VHDL für praktische Anwendungen wie Zähler implementiert werden können.

### CODE:

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TwoBitCounter is
    Port ( clk : in STD_LOGIC;       -- Takteingang
           rst : in STD_LOGIC;       -- Reset-Eingang
           count : out STD_LOGIC_VECTOR(1 downto 0));  -- 2-Bit-Zählerausgang
end TwoBitCounter;

architecture Behavioral of TwoBitCounter is
    type state_type is (S0, S1, S2, S3);  -- Definiere die Zustände
    signal current_state, next_state : state_type;  -- Aktueller und nächster Zustand
    signal count_reg : STD_LOGIC_VECTOR(1 downto 0) := "00";  -- 2-Bit-Zählerregister
begin

    process (clk, rst)
    begin
        if rst = '1' then
            current_state <= S0;      -- Setze Zustand auf den Anfangszustand bei Reset
            count_reg <= "00";        -- Setze Zähler auf den Anfangswert bei Reset
        elsif rising_edge(clk) then
            current_state <= next_state;  -- Aktualisiere den Zustand bei ansteigender Taktflanke
            count_reg <= count_reg + 1;   -- Inkrementier den Zähler bei ansteigender Taktflanke
        end if;
    end process;

    process (current_state)
    begin
        case current_state is
            when S0 =>
                next_state <= S1;    -- Übergang zum nächsten Zustand S1
            when S1 =>
                next_state <= S2;    -- Übergang zum nächsten Zustand S2
            when S2 =>
                next_state <= S3;    -- Übergang zum nächsten Zustand S3
            when S3 =>
                next_state <= S0;    -- Übergang zum Anfangszustand S0
        end case;
    end process;

    count <= count_reg;  -- Ausgabe des 2-Bit-Zählerstandes

end Behavioral;DE:
```

### 5. Takt und Reset Signale:

### Was ist das:

Takt ist ein periodisches Signal, oft der Herzschlag der Schaltung. Reset setzt die Schaltung in einen definierten Anfangszustand.

### Warum:

Takt ist entscheidend für synchronisierte Abläufe, während Reset einen klaren Startpunkt für die Schaltung festlegt.

### 6. Simulation und Testbench:

### Was ist das:

Simulation ermöglicht das Testen von VHDL-Code, um das Verhalten der Schaltung vor der Implementierung zu überprüfen.

### Warum:

Durch Simulation können Entwickler sicherstellen, dass die Schaltung gemäß den Erwartungen funktioniert, bevor sie auf Hardware übertragen wird.

### 7. Anpassung und Erweiterung:

### Was ist das:

Die Möglichkeit, den Code basierend auf spezifischen Anforderungen zu ändern und zu erweitern.

### Warum:

Dies ermöglicht die Anpassung der sequenziellen Logik für verschiedene Anwendungen, von einfachen Zählern bis zu komplexen Steuerungssystemen.