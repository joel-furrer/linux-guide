---
title: journalctl
sidebar_label: journalctl
sidebar_position: 2
---

# journalctl

## Purpose

The `journalctl` command displays logs collected by systemd's logging system, known as the journal. It is used to inspect system events, troubleshoot service failures, and monitor log output in real time.

## Syntax

```bash
journalctl [options]
```

## Important Options

```bash
journalctl
```

Displays the full journal, starting with the oldest available entries, typically opened in a pager for navigation.

```bash
journalctl -u nginx
```

Filters the journal to show only entries related to the specified unit.

```bash
journalctl -f
```

Continuously displays new log entries as they are written, similar to `tail -f` for a log file.

```bash
journalctl -xe
```

Displays the end of the journal with additional explanatory information for log entries, useful when investigating a recent error.

## Examples

Viewing the full system journal:

```bash
journalctl
```

Viewing logs for a specific service:

```bash
journalctl -u nginx
```

Monitoring logs in real time:

```bash
journalctl -f
```

Viewing recent log entries with extra context, useful after a failure:

```bash
journalctl -xe
```

### Filtering Logs by Service

Since the journal collects log entries from many sources at once, filtering by unit with `-u` is one of the most common ways to focus on a specific service.

```bash
journalctl -u nginx -f
```

This combines filtering and real-time monitoring, showing only new entries related to `nginx` as they occur.

### Log Persistence

Depending on the system's configuration, journal entries may be stored only in memory and cleared on reboot, or stored persistently on disk and retained across reboots. Persistent storage allows logs from before the most recent boot to still be reviewed.

If no log entries match the specified filter, `journalctl` produces no output rather than an error. If an invalid unit name is given, `journalctl` may still run but simply show no matching entries.

:::tip

Use `journalctl -u service-name --since today` to narrow results to recent entries for a specific service, which can make troubleshooting faster on systems with a large journal.

:::

## Related Commands

- `systemctl` – control and check the status of the service whose logs are being reviewed.
- `services` – understand the unit that journalctl entries are associated with.
