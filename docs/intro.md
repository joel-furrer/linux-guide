---
sidebar_position: 1
---
# Willkommen zum Linux Guide

Hier findest du eine Übersicht der wichtigsten Befehle.

## Files / Ordner erstellen / löschen
- `mkdir` = Ordner erstellen
    - `rmdir` = ordner löschen
    - `mkdir -m` = set file mode
    - `mkdir -p` = make parent directories
    - `mkdir -v` = print message
- `touch` = Textdatei erstellen
    - `rm datei_name` = datei löschen
- `echo` = Datei erstellen mit text echo Hello World > text.txt
- `/ >>` =  inhalte einfügen
- `mv` = Daten in einem anderen Ordner verschieben
    - Beispiel; ``

## Files bearbeiten / verwalten
- `nano` , `vim`= Inhalte von Textdateien anschauen und bearbeiten.
    - Beispiel: `sudo vim datei.txt`
- `cat` = Anzeigen lassen was alles in einer Datei drinnen ist.
    - Beispiel: `cat datei.txt`
- `find . -name Datei_name` = Dateien mit einem bestimmten Namen suchen.
- `grep "gesuchtes_wort" Datei_name` = In einer Datei, ein Wort suchen.

## Benutzer- und Gruppenverwaltung
- `useradd` = User hinzufügen
    - Beispiel: `sudo useradd neuertyp`
- `groupadd` = Gruppe Hinzufügen
    - Beispiel: `sudo groupadd team_admin`
- `usermod` = User modifizieren / ändern (z. B. Gruppen wechseln, Home-Verzeichnis ändern)
- `passwd` = Passwort ändern (für den eigenen oder einen anderen User)
- `id` = User- und Gruppen-IDs anzeigen 
- `whoami` = Wer bin ich, zeigt welcher benutzt wird.
