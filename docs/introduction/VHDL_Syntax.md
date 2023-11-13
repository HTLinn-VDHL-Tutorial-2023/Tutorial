# VHDL_Syntax

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
- Es können **ganze Ausdrücke** wie zb. *A or B* oder einfach **fixe Werte** zugewiesen werden
- Grundsätzlich werden **Variablen bei der Zuweisung** **nur kopiert** wodurch die ursprüngliche nicht verloren geht
- **WICHTIG:** Zuweisungen von **RECHTS NACH LINKS** nicht andersrum!
    
    z.B.: *A <= B --Variable B wird nach A kopiert*
    

### Variablen/Signaltypen:

| TYP | MÖGLICHE WERTE | VERWENDUNG |
| --- | --- | --- |
| boolean | true, false | logische Abfragen (if) |
| bit | 0, 1 | Entwurf |
| std_logic | 0, 1, Z, -, U, L, H, X, W | Entwurf & Simulation |

SYNTAX:

*signal <signalname>: typ;*

- Konstante Werte wie **bit** und **std_logic** müssen mit **Hochkomma ‘ ‘** eingeschlossen werden
- Beim Verknüpfen müssen die Variablen **gleichen Typs** sein

STD_LOGIC WERTE:

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

Wert Z:

- Wird Signalen zugewiesen
- Der sogenannte **„Tristate-Buffer“** welcher bei der Zuweisung in einer technischen Schaltung entsteht, wird bei der **Zuweisung** *‘Z‘* in den **hochohmigen Zustand** geschalten
- Sollte dem Buffer einer der Werte 1 oder 0 zugewiesen werden, bleibt er bzw schaltet er in den Gegentaktbetrieb
-