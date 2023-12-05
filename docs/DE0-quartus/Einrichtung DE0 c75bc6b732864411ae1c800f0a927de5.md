# Einrichtung DE0

In diesem Abschnitt geht es um die Einrichtung des DE0-Boards in Quartus und um das Erstellen eines Projekts, das korrekt für das DE0-Board eingestellt ist.

Für die Verwendung des DE0-Boards muss als erstens der USB-Blaster Treiber installiert werden, ohne diesen Treiber funktioniert die Programmierung des Boards nicht. Der Treiber befindet sich bereits im altera-Installationsverzeichnis, muss aber erst installiert werden.

Hierzu geht man in die Systemsteuerung des Computers, dann auf Geräte und Drucker. Hier solle unter Andere Geräte der USB-Blaster angezeigt werden.

Nach einem Doppelklick auf den USB-Blaster öffnen sich die Eigenschaften des Gerätes. Darin klickt man oben auf „Hardware“, dann unten auf „Eigenschaften“. Es öffnet sich erneut ein Fenster mit Eigenschaften des Geräts. Darin klickt man oben auf „Treiber“, dann auf „Treiber aktualisieren“. Danach klickt man auf „Treiber installieren“, es öffnet sich ein neues Fenster, in diesem Fenster wählt man „auf meinem Computer suchen“ aus. Man gibt nun folgenden Pfad ein

Speicherort des altera-Ordners\13.1\quartus\drivers\

Die Versionsnummer kann unterschiedlich sein!

Der Treiber wird nun installiert, und das DE0-Board kann nun programmiert werden.

Als nächster Schritt muss ein Projekt erstellt werden. Aich hierbei ist auf die korrekten Einstellungen zu achten. Wenn man Quartus startet, wird standardmäßig folgendes angezeigt:

Hier klickt man auf „New Project Wizard“

Im folgenden Fenster wird kurz erklärt, was der Wizard macht. Hier einfach mit Next weitergehen.

Als nächstens kann man den Speicherort sowie den Namen des Projekts eingeben. Dann weiter mit Next.

Im nächsten Fenster kann man extra-Dateien wie etwa libraries einfügen. Dann weiter mit Next.

Im nächsten Schritt muss man nun die Hardware, auf der das Programm laufen sollte. Die Einstellungen für das DE0-Board sind folgende:

Im letzten Schritt können Dinge wie das Simulationsprogramm eingestellt werden.

Als letztes wird eine Zusammenfassung der Einstellungen angezeigt, diese sollte man auf Fehler überprüfen.

Nun wurde das Projekt erfolgreich erstellt und man kann mit dem Programmieren beginnen.