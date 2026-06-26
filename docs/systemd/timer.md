---
title: Timer
sidebar_label: Timer
sidebar_position: 5
---

# Timer

## Purpose

A timer in systemd triggers a corresponding service unit to run at a scheduled time or interval. Timers provide a systemd-native alternative to cron for scheduling recurring or delayed tasks.

## Syntax

```bash
systemctl [command] timer-name.timer
```

## Important Options

```bash
systemctl list-timers
```

Displays a list of currently active timers, along with their next scheduled run time.

```bash
systemctl start mytimer.timer
```

Starts a timer immediately, activating its scheduling so that it begins triggering its associated service according to its defined schedule.

## Examples

Listing active timers:

```bash
systemctl list-timers
```

Starting a timer:

```bash
systemctl start mytimer.timer
```

### Timer Units and Service Units

A timer unit, ending in `.timer`, does not perform any work directly. Instead, it defines a schedule, and when that schedule is reached, it triggers an associated service unit, typically sharing the same base name, to run.

For example, a timer named `backup.timer` is typically associated with a service named `backup.service`. The timer itself only manages scheduling, while `backup.service` defines what actually happens when triggered.

A simplified timer unit might look like this:

```ini
[Unit]
Description=Run backup daily

[Timer]
OnCalendar=daily

[Install]
WantedBy=timers.target
```

### Timers as an Alternative to cron

cron is a traditional Unix tool for scheduling recurring tasks, configured through crontab files. systemd timers serve a similar purpose but integrate directly with systemd, allowing scheduled tasks to benefit from the same logging, dependency management, and status reporting as other systemd units.

If the specified timer does not exist, `systemctl` reports an error. If the associated service unit referenced by a timer does not exist, the timer may start without error, but its associated job fails when triggered.

:::note

A timer only schedules when its associated service should run. The actual work is always defined in the corresponding service unit, not in the timer itself.

:::

## Related Commands

- `systemctl` – start, stop, and inspect timer units.
- `services` – understand the service unit triggered by a timer.
- `journalctl` – review logs produced when a timer-triggered service runs.
