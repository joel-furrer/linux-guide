---
title: Navigation
sidebar_label: Navigation
sidebar_position: 1
---

# Navigation im Dateisystem

Die Fähigkeit, sich effizient im Verzeichnisbaum zu bewegen, ist die Grundlage für die Arbeit mit der Linux-Shell.

## Grundbefehle

### Aktuelles Verzeichnis anzeigen (pwd)
Gibt den vollständigen Pfad des Verzeichnisses aus, in dem du dich gerade befindest (*Print Working Directory*).

```bash
pwd
```

### Verzeichnisinhalt auflisten (ls)
Zeigt Dateien und Unterverzeichnisse an.

```bash
# Einfache Liste
ls

# Detailansicht (Rechte, Größe, Datum)
ls -l

# Auch versteckte Dateien anzeigen (Punkt-Dateien)
ls -la

# Menschlich lesbare Dateigrößen (KB, MB, GB)
ls -lh
```

### Verzeichnis wechseln (cd)
Wechselt in ein anderes Verzeichnis (*Change Directory*).

```bash
# In einen Unterordner wechseln
cd dokumente

# In das Home-Verzeichnis springen
cd ~

# Eine Ebene höher gehen
cd ..

# Zum vorherigen Verzeichnis zurückkehren
cd -
```

:::info Tipp
Nutze die **Tab-Taste**, um Pfadnamen automatisch zu vervollständigen. Das spart Zeit und verhindert Tippfehler.
:::
