---
title: Dateisystem Grundlagen
sidebar_label: Grundlagen
sidebar_position: 2
---

# Dateisystem Grundlagen

Unter Linux wird alles als Datei behandelt (*Everything is a file*). Hier findest du grundlegende Befehle zur Untersuchung von Dateien.

## Datei-Informationen

### Dateityp bestimmen (file)
Da Dateiendungen unter Linux optional sind, hilft dieser Befehl, den tatsächlichen Inhalt zu identifizieren.

```bash
file dateiname
```

### Festplattenbelegung (df)
Zeigt an, wie viel Speicherplatz auf den montierten Dateisystemen noch verfügbar ist.

```bash
# In menschlich lesbarem Format
df -h
```

### Speicherverbrauch von Ordnern (du)
Analysiert den belegten Speicherplatz von Verzeichnissen.

```bash
# Zusammenfassung für das aktuelle Verzeichnis
du -sh .
```

## Dateiinhalte lesen

### Inhalt ausgeben (cat)
Gibt den gesamten Inhalt einer Datei direkt im Terminal aus.

```bash
cat /etc/hostname
```

### Seitenweises Lesen (less)
Ermöglicht das Scrollen durch große Dateien. Beenden mit q.

```bash
less /var/log/syslog
```
