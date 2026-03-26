---
title: Netzwerk Grundlagen
sidebar_label: Grundlagen
sidebar_position: 1
---

# Netzwerk Grundlagen

Die Diagnose und Konfiguration von Netzwerkverbindungen erfolgt über spezialisierte Kommandozeilen-Tools.

## IP-Konfiguration

### Adressen anzeigen (ip)
Der Standardbefehl für moderne Linux-Systeme zur Verwaltung von Netzwerkschnittstellen.

```bash
# Zeigt IP-Adressen für alle Interfaces
ip addr show
```

## Erreichbarkeit und Diagnose

### Verbindungstest (ping)
Prüft die Erreichbarkeit eines Hosts über das ICMP-Protokoll.

```bash
# Prüft die Verbindung zu einem Server
ping -c 4 google.com
```

### DNS-Abfrage (dig)
Wird verwendet, um DNS-Einträge von Domains abzufragen.

```bash
dig linux-guide.org
```

## Aktive Verbindungen

### Sockets und Ports (ss)
Zeigt detaillierte Statistiken über offene Netzwerk-Sockets an.

```bash
# Zeigt alle hörenden TCP-Ports (-t: TCP, -u: UDP, -l: Listen, -n: Numeric)
ss -tuln
```

:::tip SSH-Zugriff
Um eine sichere Verbindung zu einem Remote-Server aufzubauen, nutzt du:
ssh benutzer@ip-adresse
:::
