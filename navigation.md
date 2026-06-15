# Navigieren im Linux Dateisystem

Hier werden die wichtigsten Befehle für das Navigieren im Linux Betriebssystem beschrieben sein.

- `ls` = alle Dateien anzeigen
    - `ls -a` = versteckte Dateien anzeigen
    - `ls -l` = Zeigt eine detaillierte Liste mit Dateirechten, Eigentümer, Grösse und Änderungsdatum an.
- `cd` = Verzeichnis wechseln
    - `cd ~` = Home Verzeichnis
    - `cd ..` = Verzeichnis zurück
- `whoami` =  Momentaner User anzeigen lassen
- `pwd` = Pfad anzeigen
    - `pwd -L` = mit symlinks
    - `pwd -P` = alle symlinks auflösen
- `clear` = Bildschirm reinigen
- `.\datei_name` = Datei ausführen
- `find` = Dateien und Ordner suchen
    - Beispiel: `find [path] [options] [expression]`


## Symlinks
**Was sind Symlinks?**
- Ein Shortcut der zu einem anderen Inhaltsverzeichnis zeigt.
- **Hardlink**
    - Wie ein Pointer in C der auf etwas anderes zeigt.
    - Geht aber nur innerhalb des Verzeichnis.
