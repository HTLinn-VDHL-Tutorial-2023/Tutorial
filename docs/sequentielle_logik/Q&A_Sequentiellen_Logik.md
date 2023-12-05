---
layout: default
parent: Sequentielle Logik
title: Q&A Sequentielle Logik
nav_order: 2
---
# **Fragen zur Sequentiellen Logik:**

**Frage: Was charakterisiert sequenzielle Logik in VHDL im Vergleich zur kombinatorischen** **Logik?**

a) Betrachtung nur gegenwärtiger Eingaben

b) Berücksichtigung vorheriger Ereignisse und Schaltungszustände

c) Verwendung von lokalen Signalen

d) Inkrementierung von Zählern

**Antwort: b)**

**Frage: Was repräsentieren Taktflanken in VHDL?**

a) Zeitliche Abläufe

b) Zustandsübergänge

c) Lokale Variablen

d) Kombinatorische Logik

**Antwort: b)**

**Frage: Wozu dient die Finite State Machine (FSM) in sequenzieller Logik?**

a) Zufällige Zustandswechsel

b) Modellierung von Schaltungszuständen

c) Lokale Signaldeklaration

d) Fallende Kanten des Taktsignals

**Antwort: b)**

**Frage: Warum reagieren Prozesse in VHDL auf Taktflanken?**

a) Für zeitliche Abläufe

b) Synchronisierung von Zustandsübergängen

c) Lokale Variablen

d) Reduzierung von Logikgattern

**Antwort: b)**

**Frage: Welche Funktion hat das Reset-Signal in VHDL?**

a) Synchronisierung von Abläufen

b) Inkrementierung des Zählers

c) Setzen der Schaltung in einen definierten Anfangszustand

d) Modellierung von Zustandsübergängen

**Antwort: c)**

**Frage: Welche Rolle spielt die Simulation im VHDL-Entwicklungsprozess?**

a) Inkrementierung von Zuständen

b) Testen des Codes vor der Implementierung

c) Lokale Signaldeklaration

d) Reduzierung von Logikgattern

**Antwort: b)**

**Frage: Warum ist die Anpassung und Erweiterung des Codes wichtig in sequenzieller Logik mit VHDL?**

a) Für zeitliche Abläufe

b) Synchronisierung von Zustandsübergängen

c) Modellierung von Schaltungszuständen

d) Anpassung an spezifische Anforderungen

**Antwort: d)**

**Fragen zur Syntax:**

- **Wie macht man einen Kommentar in VHDL?**A: Mit doppeltem Bindestrich werden sie eingeleitet.
- **Wie lange gelten diese Kommentare dann?**A: Nur für die Zeile, in der die Einleitung steht.
- **In welcher Anordnung wird ein Zuweisungsbefehl (sprich, auf welcher Seite steht die zuzuweisende Variable) im Code realisiert?**
    
    A: Von rechts nach Links
    
- **Welche Signaltypen gibt es bei VHDL?**

A: boolean, bit, std_logic

- **Was ist ein Vektor? (Definition)**

A: Ein Array von Signalen gleichen Typs.

- **Welche zwei verschiedenen Deklarationsvarianten gibt es bei Zuweisungen in VHDL?**

A: to & downto (von unten nach oben & von oben nach unten)

- **Was steht ganz oben bei der Schaltungsbeschreibung?**

A: der Header

- **Was sind die VHDL Signalrichtungen und wie lauten ihre Schlüsselwörter im Code?**

A: Eingang = in; Ausgang = out; Bidirektional = inout

- **Wie lauten die Verknüpfungen in VHDL?**

A: AND; OR; NAND; NOR; NOT; XNOR; XOR

- **Wie lauten die Arithmetische Operatoren in VHDL?**

A: +,-, =, /=; <, <=, >, >=

**Fragen zu FPGA’s**

**Was ist der Hauptunterschied zwischen FPGAs und normalen Mikroprozessoren?**

a. FPGAs haben eine flexibel programmierbare Logik, während normale Mikroprozessoren dies nicht haben.

b. FPGAs haben eine fest verdrahtete Logik, während normale Mikroprozessoren flexibel programmierbar sind.

c. FPGAs und normale Mikroprozessoren sind in ihrer Funktionsweise identisch.

d. FPGAs haben eine einfachere Struktur im Vergleich zu normalen Mikroprozessoren.

**Antwort: a. FPGAs haben eine flexibel programmierbare Logik, während normale** **Mikroprozessoren dies nicht haben.**

**Was ist erforderlich, damit ein FPGA funktioniert?**

a. Ein Stromanschluss.

b. Eine Konfigurationsdatei.

c. Ein eingebauter Prozessor.

d. Ein externer Speicher.

**Antwort: b. Eine Konfigurationsdatei.**

**Was sind Anwendungen von FPGAs aufgrund ihrer flexiblen Programmierbarkeit?**

a. Nur für einfache Logikschaltungen.

b. Nur als Ersatz für nicht mehr produzierte ICs.

c. Von einfachen Logikschaltungen bis zu vollständigen Mikroprozessoren.

d. Nur für Anwendungen mit fest verdrahteten Schaltungen.

**Antwort: c. Von einfachen Logikschaltungen bis zu vollständigen Mikroprozessoren.**

**Welche Hardwarebeschreibungssprachen werden für die Programmierung von** **FPGAs verwendet?**

a. C++ und Java.

b. Python und Ruby.

c. VHDL und Verilog.

d. HTML und CSS.

**Antwort: c. VHDL und Verilog.**

**Was ist die grundlegende Struktur eines FPGA?**

a. Arrays von Basisblöcken.

b. Ein einziger großer Logikblock.

c. Nur programmierbare Lookup-Tabellen.

d. Nur Flipflops.

**Antwort: a. Arrays von Basisblöcken.**

**Was enthält ein Basisblock in einem FPGA?**

a. Nur programmierbare Lookup-Tabelle (LUT).

b. Nur 1Bit-Register (Flipflop).

c. Arrays von Flipflops.

d. Eine Kombination aus programmierbarer Lookup-Tabelle und 1Bit-Register.

**Antwort: d. Eine Kombination aus programmierbarer Lookup-Tabelle und 1Bit-Register.**

**Warum werden FPGAs oft als Ersatz für nicht mehr produzierte ICs eingesetzt?**

a. Aufgrund ihrer höheren Kosten.

b. Aufgrund ihrer einfacheren Struktur.

c. Aufgrund ihrer flexiblen Programmierbarkeit.

d. Aufgrund ihrer schnelleren Verarbeitungsgeschwindigkeit.

**Antwort: c. Aufgrund ihrer flexiblen Programmierbarkeit.**

**Welche Sprache wird verwendet, um CPLDs zu programmieren?**

a. VHDL.

b. Verilog.

c. Eine hardwareunabhängige Sprache.

d. Python.

**Antwort: c. Eine hardwareunabhängige Sprache.**

**Was ist ein Nachteil von CPLDs im Vergleich zu FPGAs?**

a. CPLDs haben eine aufwendigere Programmierung.

b. CPLDs haben eine einfachere innere Struktur.

c. CPLDs benötigen mehr Flipflops.

d. CPLDs haben eine längere BootUp-Zeit.

**Antwort: b. CPLDs haben eine einfachere innere Struktur.**

**Warum sind CPLDs besser für bestimmte Anwendungen geeignet?**

a. Aufgrund ihrer höheren Flexibilität.

b. Aufgrund ihrer einfacheren Programmierung.

c. Aufgrund ihrer schnelleren BootUp-Zeit.

d. Aufgrund ihrer höheren Anzahl von Flipflops.

**Antwort: c. Aufgrund ihrer schnelleren BootUp-Zeit.**

**Fragen Zu ASIC’S**

**Was ist ein ASIC (Application-Specific Integrated Circuit)?**

a. Ein universell programmierbarer Mikrochip.

b. Ein einmalig programmierter Mikrochip.

c. Ein Mikrochip, der für eine spezifische Aufgabe entworfen wurde.

d. Ein Mikrochip, der ausschließlich für Data-Center-Hardware entwickelt wurde.

**Antwort: c. Ein Mikrochip, der für eine spezifische Aufgabe entworfen wurde.**

**Welche Funktion hat ein PROM (Programmable Read-Only Memory)?**

a. Es ist ein nicht programmierbarer Speicher.

b. Es kann einmal programmiert werden und behält dann seinen Inhalt.

c. Es ist ein universell programmierbarer Speicher.

d. Es kann beliebig oft programmiert und gelöscht werden.

**Antwort: b. Es kann einmal programmiert werden und behält dann seinen Inhalt.**

**Was zeichnet PALs (Programmable Array Logic) aus?**

a. Nur das UND-Array ist programmierbar.

b. Nur das ODER-Array ist programmierbar.

c. Sowohl das UND- als auch das ODER-Array sind programmierbar.

d. PALs können nicht programmiert werden.

**Antwort: a. Nur das UND-Array ist programmierbar.**

**Was ist eine Weiterentwicklung der PALs?**

a. PROMs.

b. PLAs.

c. GALs.

d. EPROMs.

**Antwort: c. GALs (Generic Array Logic).**