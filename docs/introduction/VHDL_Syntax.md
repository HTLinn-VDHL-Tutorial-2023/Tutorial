---
layout: default
parent: Einführung
title: Syntax
nav_order: 2
---

# VHDL-SYNTAX

## Syntax Grundlagen

### Namensregeln:

- Es wird in VHDL **NICHT** zwischen Groß- Kleinschreibung unterschieden
- Namen **MÜSSEN** mit Buchstaben beginnen
- Und es dürfen **keine Schlüsselworte** als Namen verwendet werden

### Kommentare im Code:

- Kommentare im Code werden mit **doppeltem Bindestrich** eingeleitet
- Sie gelten bis zum **Ende der Zeile**

### Zuweisung von Signalen an Variablen und umgekehrt:

- Zuweisungen werden mit dem Zeichen **=>** bzw**. <=** gemacht
- Es können **ganze Ausdrücke** wie z.B. *A or B* oder einfach **fixe Werte** zugewiesen werden
- Grundsätzlich werden **Variablen bei der Zuweisung** **nur kopiert** wodurch die ursprüngliche nicht verloren geht
- **WICHTIG:** Zuweisungen von **RECHTS NACH LINKS** nicht andersrum!
    
    z.B.: *A <= B --Variable B wird nach A kopiert*
    

### Variablen/Signaltypen:

| TYP | MÖGLICHE WERTE | VERWENDUNG |
| --- | --- | --- |
| boolean | true, false | logische Abfragen (if) |
| bit | 0, 1 | Entwurf |
| std_logic | 0, 1, Z, -, U, L, H, X, W | Entwurf & Simulation |

### SYNTAX:

```vhdl
*signal <signalname>: typ;*
```

- Konstante Werte wie **bit** und **std_logic** müssen mit **Hochkomma ‘ ‘** eingeschlossen werden
- Beim Verknüpfen müssen die Variablen **gleichen Typs** sein

## Detaillierte Syntax

### STD_LOGIC WERTE:

| WERT | BEDEUTUNG | VERWENDUNG |
| --- | --- | --- |
| 0 | “starke” log. Null | Synthese, Simulation (wie 0 im Typ bit), technisch Push/Pull |
| 1 | „starke“ log. Eins | Synthese, Simulation (wie 1 im Typ bit), technisch Push/Pull |
| Z | hochohmig | Synthese, Simulation, technisch Tristate-Buffer, z.b. Bus |
| - | egal | Synthese, der Wert ist egal; speziell bei Wertetabellen |
| U | unbekannt | Simulation, der Wert ist nicht bekannt |
| L | Konflikt | Simulation, Erkennung von 0 gegen 1 - Treiberkonflikten |
| H | „schwache“ 0 | Synthese, technisch open source (offener Emitter) |
| X | „schwache“ 1 | Synthese, technisch open drain (offener Kollektor) |
| W | „schwaches“ X | Simulation, Erkennung von L gegen H - Treiberkonflikten |

### Wert ‚Z‘:

- Wird Signalen zugewiesen
- Der sogenannte **„Tristate-Buffer“** welcher bei der Zuweisung in einer technischen Schaltung entsteht, wird bei der **Zuweisung** *‘Z‘* in den **hochohmigen Zustand** geschalten
- Sollte dem Buffer einer der Werte 1 oder 0 zugewiesen werden, bleibt er bzw schaltet er in den Gegentaktbetrieb
- Falls es in der Zielschaltung, z.B. FGPA oder CPLD, **keinen Tristate Buffer** gibt, kann diese Methode **NICHT** verwendet werden

### Wert ‚-‘:

- Es wird **zufällig** entweder 1 oder 0 zugewiesen
- Was schlussendlich zugewiesen wurde können Sie nicht wissen
- Sprich diese Zuweisung wird verwendet, wenn Ihnen **egal** ist **welchen Wert** die Variable/das Signal hat
- **Abfrage** dieses Wertes führt in der Synthese-/Simulationsumgebung zu **keinem Ergebnis**

### Vektoren:

- Ist ein **Array von Signalen gleichen Typs**
- **Laufindex** hat den Datentyp **INTEGER**
- Command: *array*kann beliebige Felder definieren
- Für die Datentypen **bit** und **std_logic** sollten die **vordefinierten Typen** verwendet werden.
    
    Mit ihnen können **Berechnungen und Vergleiche** durchgeführt werden.
    

### ***SYNTAX:***

```vhdl
*signal <signalnamen>: typ( <lower> to <upper>);
signal <signalnamen>: typ( <upper> downto <lower>);*
```

- Die **einzelnen Signale** des Vektors bilden sich aus **Signalnamen + Index in runden Klammern**
- Mit Vektoren ist es einfach **Operationen auf mehrere oder alle Signale** eines Arrays auszuführen

### BEISPIELE FÜR ZUWEISUNGEN:

- Situation: Sie haben ein Array mit dem Namen ‚c‘ deklariert und wollen diesem diverse Werte zuweisen. Zusätzlich haben Sie noch 2 Arrays mit den Namen ‚a‘ und ‚b‘ dessen Werte Sie auch in das Array ‚c‘ schreiben können.

| signal a,b,c: bit_vector(0 to 3);
--3 Vektoren (4 Stellen) gleichzeitig deklariert
--Vektoren haben den Datentyp bit | DEKLARATION |  |  |  |
| --- | --- | --- | --- | --- |
| Ziel | VHDL-Kommando |  |  |  |
| c(0) | c(1) | c(2) | c(3) |  |
| a(0) or b(0) | a(1) or b(1) | a(2) or b(2) | a(3) or b(3) | c <= a or b; |
| 1 | 0 | 0 | 0 | c <= (‘1‘,‘0‘,‘0‘,‘0‘); |
| 1 | 0 | 0 | 0 | c <= “1000“; |
| 1 | 0 | 1 | 0 | c <= x“A“; |
| a(0) | 0 | 0 | 1 | c <= a(0) & “001“; |
| unverändert | 1 | 1 | unverändert | c(1 to 2) <= “11“; |
| a(0) | a(1) | 1 | b(0) | c <= a(0 to 1) & ‘1‘ & b(0); |
- Bei der Zuweisung konstanter Werte währe es auch möglich **dezimale Eingaben als oktale bzw. hex Werte** in das Array zu schreiben
- Es können auch **Arrays an entsprechend viele Signale/Variablen zugewiesen** werden.
    
    Diese müssen dann **in Klammer** und durch **Beistriche getrennt** angeschrieben sein.
    

### WEITERE BEISPIELE:

- Situation: Sie haben einen Vektor namens ‚c‘. Sie wollen diesem Vektor diverse Werte im Hex und Oktalsystem zuweisen. Auch wollen Sie allen Einzelsignalen des Vektors ‚c‘ einen Fixwert zuweisen.

| DEKLARATION | signal c: bit_vector(0 to 7);
--Vektor hat insgesamt 8 Stellen und den Datentyp bit |
| --- | --- |
| VHDL-Kommando | Beschreibung |
| c <= o“3“; | Der Wert „310“ wird als Oktale Ziffer in den Vektor geschrieben |
| c <= x“4“; | Der Wert „410“ wird als Hex Ziffer in den Vektor geschrieben |
| c <= (others => ‘0‘); | Allen Stellen des Vektors wird der Fixwert ‚0‘ zugewiesen
Beachte: Zuweisung erfolgt hier von LINKS NACH RECHTS |
- Die **Anordnung der Einzelsignale** erfolgt im Vektor von **LINKS NACH RECHTS**

### DEKLARATIONSVARIANTEN:

- Es gibt 2 verschiedene Varianten:

| VHDL-Kommando | Beschreibung |
| --- | --- |
| signal x: std_logic_vector(0 to 3); | Hier werden dem Vektor 4 Stellen in der Reihenfolge von unten nach oben zugeteilt |
| signal y: std_logic_vector(3 downto 0); | Hier auch, jedoch von oben nach unten |
- Dies hat Relevanz, wenn der Vektor nicht als Array, sondern als **Dualzahl** interpretiert wird

## Schaltungsbeschreibung

### Header:

Im Header werden die **Definitionen** für die darauffolgende Schaltung angelegt.

### BEISPIEL:

```vhdl
*Library ieee; -- die verwendete Bibliothek
use ieee.std_logic_1164.all; -- die Definition der Grundtypen und Werte
use ieee.std_logic_unsigned.all; -- die Definition einer unsigned-Arithmetik*
```

### Schnittstelle:

- Hier wird der **Name des Blocks**, der die Schaltung repräsentiert definiert, sowie alle Signale, die dort angeschlossen sind
- Es kann mit der **Deklaration einer Funktion in „C“** verglichen werden
- Es gibt **Eingangs-, Ausgangssignale sowie Signale, die die Richtung** wechseln

### SIGNALRICHTUNGEN:

| Signalrichtung | VHDL-Schlüsselwort | Bemerkung |
| --- | --- | --- |
| Eingang | in | Kann nur gelesen werde (Quelle) |
| Ausgang | out | Kann nur geschrieben werden (Ziel) |
| Bidirektional | inout | Kann sowohl gelesen als auch beschrieben werden |

### SYNTAX:

```vhdl
***entity** <blockname> **isport**
(
<signalnamen>: <richtung> <typ>; -- bei weiteren Signalen: ‘;‘
<signalnamen>: <richtung> <typ> -- beim letzten Signal KEIN ‘;‘
);**end**;*
```

- Die entity muss den **EXAKT gleichen Namen wie im Schaltplan** haben (gilt genauso für Variablen)

## Die Funktion – *Architecture*:

- **Beschreibung der Funktion** des definierten Blocks
- Es kann **mehrere Funktionsbeschreibungen** für eine Entity geben

### SYNTAX:

```vhdl
***architecture** <beschreibungsname> of <blockname> is
-- hier können lokale Signale deklariert werden**begin**
-- hier steht die Funktionsbeschreibung (nebenläufig)**end**;*
```

## Anweisungen:

### Einfache Verknüpfungen:

| Schlüsselwort | Operation | Bemerkung |
| --- | --- | --- |
| not | Negation | hat Vorrang vor allen anderen Operatoren |
| and | und | Bei „Serienschaltung“ kann die Klammerung entfallen, ’a and b and c’ ist zulässig |
| or | oder |  |
| nand | negiertes und | „Serienschaltung“ ohne Klammerung ist nicht zulässig, ’a nor b nor c’ ist also verboten! |
| nor | negiertes oder |  |
| xor | Antivalenz (exklusiv oder) |  |
| xnor | Äquivalenz (neg. xor) |  |

### Arithmetische Operatoren:

| Schlüsselwort | Operation | Bemerkung |
| --- | --- | --- |
| + | Addition |  |
| - | Subtraktion |  |
| = | Gleich | unabhängig vom Typ, geht ohne Arithmetikpackage |
| /= | Ungleich | erzeugt, wie der Vergleich auf Gleichheit, einen booleschen Wert (Typ boolean) Anwendung in Abfragen wie if/elsif/when |
| < | Kleiner |  |
| <= | Kleiner gleich |  |
| > | Größer |  |
| >= | Größer gleich |  |

### with/select:

### SYNTAX:

```vhdl
***with** <auswahlsignal> **select**
ergebnis <= <Verknüpfung_1> **when** <auswahlwert_1>,
<Verknüpfung_1> **when** <auswahlwert_1>,
<Verknüpfung_n> **when others**;*
```

### when/else:

### SYNTAX:

```vhdl
*<ergebnis> <= <Verknüpfung_1> **when** <Bedingung_1>
					**else** <Verknüpfung_2> **when** <Bedingung_2>
					**else** <Verknüpfung_n>;*
```

- **with/select** und **when/else** sind **NUR IN NEBENLÄUFIGEN UMGEBUNGEN** zulässig *(siehe VHDL-Grundlagen)*

### if/then:

### SYNTAX:

```vhdl
***if** <Bedingung_1> **then** <Sequenzielle Anweisungen 1>;
**elsif** <Bedingung_2> **then** <Sequenzielle Anweisungen 2>;
**elsif** <Bedingung_3> **then** <Sequenzielle Anweisungen 3>;
**else** <Sequenzielle Anweisungen n>;
**end if;***
```

### case/is:

### SYNTAX:

```vhdl
***case** <testsignal> is
		**when** <Wert_1> => <Sequentielle Anweisungen 1>;
		**when** <Wert_2> => <Sequentielle Anweisungen 2>;
		**when** <Wert_3> => <Sequentielle Anweisungen 3>;
		**when others** => <Sequentielle Anweisungen n>;
**end case;***
```