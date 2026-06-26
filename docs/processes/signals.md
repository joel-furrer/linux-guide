---
title: Signals
sidebar_label: Signals
sidebar_position: 6
---

# Signals

## Purpose

A signal is a limited form of communication sent to a Process, typically used to notify it of an event or to request that it take a specific action, such as terminating. Signals are a fundamental mechanism for controlling processes on Unix-like systems.

## Syntax

```bash
kill -signal PID
```

Signals are most commonly sent using the `kill` command, specified either by name or by number.

## Important Options

```bash
kill -l
```

Lists the signal names and numbers available on the system.

## Examples

Listing available signals:

```bash
kill -l
```

### Common Signals

- `SIGTERM`: requests that a Process terminate gracefully. This is the default signal sent by `kill` when no signal is specified.
- `SIGKILL`: forces a Process to terminate immediately, without allowing it to clean up. This signal cannot be ignored or intercepted by the Process.
- `SIGINT`: sent when a User presses `Ctrl+C` in the terminal, requesting that the Process stop what it is doing.
- `SIGHUP`: originally signaled that a terminal connection had been closed. It is also commonly used today to ask a Process to reload its configuration.

Sending `SIGINT` to a running Process by pressing keys in the terminal:

```bash
Ctrl+C
```

Sending `SIGHUP` explicitly using `kill`:

```bash
kill -SIGHUP 1234
```

### How Signals Behave

Many signals, such as `SIGTERM` and `SIGINT`, can be intercepted by a Process, allowing it to respond in a custom way, such as saving data before exiting. Other signals, such as `SIGKILL`, cannot be intercepted, and always cause the operating system to stop the Process immediately.

If a signal is sent to a Process ID that does not exist, the sending command, such as `kill`, reports an error rather than the signal having any effect.

:::note

Signals can be specified either by name, such as `SIGTERM`, or by number, such as `15`. Both forms refer to the same signal and behave identically.

:::

## Related Commands

- `kill` – send a signal to a Process.
- `ps` – find the Process ID of the Process that should receive a signal.
