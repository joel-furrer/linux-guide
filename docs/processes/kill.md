---
title: kill
sidebar_label: kill
sidebar_position: 7
---

# kill

## Purpose

The `kill` command sends a signal to a Process, most commonly to request that it stop running. Despite its name, `kill` is used to send any signal, not only ones that terminate a Process.

## Syntax

```bash
kill [options] PID
```

## Important Options

```bash
kill PID
```

Sends the default signal, `SIGTERM`, asking the Process to terminate gracefully.

```bash
kill -9 PID
```

Sends `SIGKILL`, forcing the Process to terminate immediately, without giving it a chance to clean up.

```bash
kill -SIGTERM PID
```

Explicitly sends `SIGTERM`, the same signal sent by default when no signal is specified.

## Examples

Asking a Process to terminate gracefully:

```bash
kill 1234
```

Forcing a Process to terminate immediately:

```bash
kill -9 1234
```

Explicitly specifying the termination signal by name:

```bash
kill -SIGTERM 1234
```

### Graceful vs Forced Termination

A graceful termination, requested with `SIGTERM`, allows the Process to perform cleanup tasks, such as saving data or releasing resources, before exiting. A forced termination, requested with `SIGKILL` (signal `9`), stops the Process immediately, without giving it any opportunity to clean up.

If the specified Process ID does not exist, `kill` reports an error and takes no action. If the User does not have permission to send a signal to the specified Process, `kill` also reports an error.

:::danger

Avoid using `kill -9` as a first option. Since `SIGKILL` does not allow the Process to clean up, it can lead to issues such as corrupted files or orphaned resources. Try a regular `kill` first, and reserve `-9` for processes that do not respond to a graceful termination request.

:::

## Related Commands

- `ps` – find the Process ID of the Process to terminate.
- `signals` – learn more about the signals that can be sent with `kill`.
- `jobs` – list background jobs, which can also be referenced when sending signals.
