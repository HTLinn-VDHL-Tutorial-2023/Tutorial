---
layout: default
parent: Kombinatorische Logik
title: Kombinatorische Logik
nav_order: 1
---
# Kombinatorische Logik Erklärt

## Definition:

*Kombinatorische* Logik Schaltungen *sind speicherlose digitale Logikschaltungen, deren Ausgabe zu jedem Zeitpunkt nur von der Kombination ihrer Eingänge abhängt*.

## Grundsatz:

**Gegensatz zu sequenziellen Logikschaltungen**, deren Ausgänge sowohl von ihren aktuellen Eingängen als auch von ihrem vorherigen Ausgangszustand abhängig sind, was ihnen eine Art Memory gibt. Die **Ausgänge von *K*ombinationslogik*s*chaltungen** werden nur durch **die logische Funktion ihres aktuellen Eingangszustandes**, **logisch “0” oder logisch “1”**, zu einem bestimmten Zeitpunkt bestimmt.

Das Ergebnis ist, dass **Kombinationslogikschaltungen keine Rückkopplung** haben und **jede Änderung** der an ihren Eingängen anliegenden Signale **sofort am Ausgang wirksam** wird. Mit anderen Worten, in einer kombinatorischen Logikschaltung ist **der Ausgang immer von der Kombination seiner Eingänge abhängig**. Daher ist eine kombinatorische Schaltung **speicherlos**.

Ändert sich also der Zustand eines seiner Eingänge von 0 auf 1 oder 1 auf 0, so wird auch der resultierende Ausgang, da standardmäßig Kombinationslogikschaltungen **“keine Speicher”, “Timing”** oder **“Feedbackschleifen”** in ihrem Design haben.

Kombinatorische Logikschaltungen bestehen aus **NAND-, NOR- oder NOT-Gattern**, die zu komplexeren Schaltkreisen “kombiniert” oder miteinander verbunden werden. Diese Logikgatter sind die **Bausteine der kombinatorischen Logikschaltungen**.

Kombinatorische Logikschaltungen können sehr einfach oder sehr kompliziert sein und jede Kombinationsschaltung kann **nur mit NAND- und NOR-Gattern** realisiert werden, da diese als **“universelle” Gatter** eingestuft werden.

Die drei wichtigsten Möglichkeiten, die Funktion einer kombinatorischen Logikschaltung festzulegen, sind:

### Boolsche Algebra

Diese bildet den algebraischen Ausdruck, der die Funktion der Logikschaltung für jede Eingangsvariable entweder True oder False zeigt, was zu einem logischen “1”-Ausgang führt.

### Warheitstabelle

Eine Wahrheitstabelle definiert die Funktion eines Logikgatters, indem sie eine übersichtliche Liste liefert, die alle Ausgabezustände in tabellarischer Form für jede mögliche Kombination von Eingangsvariablen anzeigt, auf die das Gatter stoßen könnte.

### Logikdiagramm / ”Blockschaltbild”

Dies ist eine grafische Darstellung einer Logikschaltung, die die Verdrahtung und Anschlüsse jedes einzelnen Logikgatters zeigt, dargestellt durch ein spezifisches grafisches Symbol, das die Logikschaltung implementiert. Kann in der Elektronik mit einem einfachen Blockschaltbild verglichen werden.

