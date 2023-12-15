---
layout: default
nav_order: 2
parent: Programmierbare Schaltkreise
title: FPGAs
---

# **FPGA (Field Programmable Gate Array)**

FPGAs sind elektronische Schaltkreise, die man mittels VHDL selbst mit Logik beschreiben kann.

Ein großer Unterschied zu normalen Mikroprozessoren ist, dass man das FPGA immer wieder mit neuen Schaltungen beschreiben kann. Bei einem normalen Mikroprozessor sind die Schaltungen nicht veränderbar. Daher benötigt das FPGA immer eine Konfigurationsdatei, ohne diese hat der IC keine Funktion. FPGAs sind die Nachfolger von PLDs (Programmable Logic Devices)

## **Anwendungen von FPGAs**

Anwendungen von FPGAs sind wegen der flexiblen Programmierbarkeit sehr weitreichend. Sie reichen von einfachen Schaltungen bestehend aus ein paar Logikgattern bis zu vollständigen Mikroprozessoren. Besonders für Anwendungen, in denen Schaltungen oftmals aktualisiert und erneuert werden, sind sie gut geeignet. Sie werden außerdem oft als Ersatz von nicht mehr produzierten ICs eingesetzt.

## **Aufbau eines FPGAs**

Die Grundstruktur eines FPGAs sind Felder (Arrays) von Basisblöcken. Diese Basisblöcke sind grundlegend alle gleich. Ein solcher Basisblock besteht aus einer einfachen programmierbaren Lookup-Tabelle (LUT) sowie einem 1Bit-Register (Flipflop). Zur Programmierung wird die gewünschte Wahrheitstabelle im SRAM-Speicher der LUT hinterlegt. Diese können miteinander verschaltet werden. Außerdem enthalten FPGAs auch INPUT/OUTPUT Blöcke, mit denen auf Ein- oder Ausgänge zugegriffen werden kann.

## **Programmierung des FPGA**

FPGAs werden in einer Hardwarebeschreibungssprache programmiert. Beispiele dafür sind VHDL (**V**ery High Speed Integrated Circuit **H**ardware **D**escription **L**anguage) oder Verilog. Diese VHDL-Datei wird dann von der Programmierungsumgebung in eine Konfigurationsdatei umgewandelt und auf den FPGA programmiert.

## **Unterschiede zu CPLDs**

CPLDs haben eine wesentlich einfachere innere Struktur, können daher aber nicht so individuell programmiert werden wie FPGAs.

CPLDs enthalten vergleichsweise wenige Flipflops, sie sind daher für solche Anwendungen nicht sehr gut geeignet.

FPGAs benötigen immer eine gewisse BootUp-Zeit, da die Konfiguration erst geladen werden muss, CPLDs sind direkt einsetzbar.