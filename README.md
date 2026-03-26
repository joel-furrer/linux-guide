# Linux Guide und Terminal Fundamentals

Ein strukturierter Leitfaden für die effiziente Nutzung der Linux-Kommandozeile. Dieses Projekt basiert auf den Lerninhalten des Moduls 305 und bietet eine technische Dokumentation der wichtigsten Befehle, Workflows und Werkzeuge wie Git und Neovim.

## Übersicht

Dieses Projekt ist eine interaktive Dokumentation, erstellt mit Docusaurus. Es dient als zentrale Wissensdatenbank für folgende Themenbereiche:

* **Dateisystem-Operationen:** Navigation, Manipulation und Verwaltung von Verzeichnisstrukturen.
* **System-Administration:** Verwaltung von Benutzerrechten, Umgebungsvariablen und Prozessen.
* **Textverarbeitung:** Einsatz von Filtern, Streams, Pipes und Editoren.
* **Versionsverwaltung und Editoren:** Grundlagen von Git sowie die Konfiguration von Neovim.

## Installation und lokale Entwicklung

Das Projekt nutzt Bun als Runtime und Paketmanager. Für Nutzer von NixOS ist eine entsprechende Flake-Konfiguration vorhanden.

### Voraussetzungen
Stellen Sie sicher, dass `bun` (oder alternativ `npm`) auf dem System installiert ist.

### Installationsschritte
1. **Repository klonen:**
   ```bash
   git clone https://github.com/joel-furrer/linux-guide.git
   cd linux-guide
   ```

2. **Abhängigkeiten installieren:**
   ```bash
   bun install
   ```

3. **Entwicklungsserver starten:**
   ```bash
   bun start
   ```
   Die Dokumentation ist anschließend unter `http://localhost:3000` verfügbar.

## Projektstruktur

* `docs/`: Markdown-Dateien der Dokumentation, unterteilt in thematische Kategorien.
* `src/`: Quellcode für Custom Components und das Seitenlayout.
* `static/`: Statische Assets wie Grafiken, Favicons und Logos.

## Inhaltliche Schwerpunkte (Modul 305)

Der Guide behandelt unter anderem folgende technische Aspekte:

* **Navigation:** `pwd`, `ls`, `cd`, `mkdir`, `touch`.
* **Dateimanagement:** `cp`, `mv`, `rm`, `find`.
* **Berechtigungen:** `sudo`, `chown`, `chmod`, `/etc/shadow`.
* **Umgebungskonfiguration:** `export`, `PATH`, `alias`.
* **Textanalyse:** `grep`, `sort`, `cut`, `cat`, `less`.
* **Datenströme:** Standard-Streams (STDIN/OUT/ERR) und Verkettung mittels `|`.

## Technischer Stack

* **Framework:** Docusaurus v3 (React-basiert)
* **Runtime:** Bun
* **Programmiersprache:** TypeScript
* **Styling:** CSS Modules
* **Deployment:** GitHub Pages

## Autor

**Joel Furrer**
* GitHub: [joel-furrer](https://github.com/joel-furrer)

---
*Diese Dokumentation wurde für Ausbildungszwecke erstellt und wird kontinuierlich gepflegt.*
