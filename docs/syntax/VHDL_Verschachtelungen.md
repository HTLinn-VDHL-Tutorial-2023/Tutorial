---
layout: default
parent: Syntax
title: Verschachtelungen
nav_order: 8
---
# Hierarchische Verschachtelungen

## IF-Verschachtelungen:

Bedingte Verzweigungen in sequenziellen Anweisungsteilen können mit der **IF-ELSIF-ELSE** Anweisung folgendermaßen realisiert werden:

```vhdl
if <Bedingung_1_erfuellt> then
        .
        .     -- sequenzielle Anweisung
        .
elsif <Bedingung_2_erfuellt> then
        .
        .     -- sequenzielle Anweisung
        .
elsif <Bedingung_n_erfuellt> then
        .
        .     -- sequenzielle Anweisung
        .
else
        .
        .     -- sequenzielle Anweisung
        .
end if;
```

Grundsätzlich braucht man nur die **erste if-Abfrage** und das Ende, ***end if;***.

***elsif*** ist optional und kann mehrere Male verwendet werden.

Als letzte Bedingung wird ***else*** verwendet. Das kann **nur einmal** vorkommen.

Der Datentyp der Bedingungsabfragen darf nur vom Typ **BOOLEAN** sein bzw. eine **logische Vergleichsaussage (z.B.: *if s1=‘0‘*)**.

## SCHLEIFEN-Verschachtelungen:

In VHDL ermöglichen Schleifen die **wiederholte Ausführung von Anweisungen**. Es gibt drei Arten von Schleifen in VHDL: for-Schleifen, while-Schleifen und unbenannte Schleifen.

### while-Schleifen:

while-Schleifen werden so lange ausgeführt, wie eine bestimmte Bedingung wahr ist.


### for-Schleifen:

Die for-Schleifen in VHDL werden verwendet, um eine Anweisungsgruppe eine festgelegte Anzahl von Malen zu wiederholen.

### Unbenannte Schleifen: "loop"

Unbenannte Schleifen sind einfache Endlosschleifen ohne explizite Bedingung oder Zähler.

### BSP für FOR:

```vhdl
for <Schleifenindex> in <Untere_Grenze> to <Obere_Grenze> loop
    -- sequenzielle Anweisungen
end loop;
```

### BSP für WHILE:

```vhdl
while Bedingung loop
    -- sequenzielle Anweisungen
end loop;
```