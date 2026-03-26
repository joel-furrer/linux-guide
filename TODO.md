# Projekt-Zielstruktur und Roadmap

Diese Datei beschreibt den angestrebten Endzustand des Verzeichnisbaums für den Linux Guide sowie die technische Roadmap zur Fertigstellung.

## Finale Verzeichnisstruktur

Nach Abschluss aller Arbeiten wird die `docs/`-Struktur wie folgt aufgebaut sein:

```text
docs/
├── intro.md                     # Einstieg, Verwendung von 'man' und Konzept-Überblick
├── grundlagen/
│   ├── _category_.json          # Kategorie-Konfiguration (Position 2)
│   ├── navigation.md            # Navigation: pwd, cd, ls, mkdir, find
│   ├── dateien-loeschen.md      # Löschvorgänge: touch, rm, rmdir, Shell-Quoting
│   └── dateien-kopieren.md      # Transfer: cp, mv, Grundlagen zu passwd/shadow
├── system/
│   ├── _category_.json          # Kategorie-Konfiguration (Position 3)
│   ├── berechtigungen.md        # Sicherheit: sudo, root-User, Dateirechte
│   ├── umgebung.md              # Shell-Umgebung: set, export, echo, PATH, HOME
│   └── prozesse.md              # Monitoring: ps, top, date, script-Aufzeichnung
├── textverarbeitung/
│   ├── _category_.json          # Kategorie-Konfiguration (Position 4)
│   ├── filter-sortieren.md      # Analyse: grep, sort, cat, less, head, tail
│   ├── editoren.md              # Editoren: nano, vim, joe, gedit, kate
│   ├── streams-pipes.md         # Datenflüsse: Pipes (|) und Umleitungen (>, >>, <, 2>)
│   └── spalten.md               # Manipulation: cut und Spaltenbearbeitung
├── git/
│   ├── _category_.json          # Kategorie-Konfiguration (Position 5)
│   └── grundlagen.md            # Versionsverwaltung: init, add, commit, push, status
└── neovim/
    ├── _category_.json          # Kategorie-Konfiguration (Position 6)
    └── konfiguration.md         # Modern Editing: init.lua, Plugin-Management
```
