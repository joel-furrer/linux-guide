---
title: jobs
sidebar_label: jobs
sidebar_position: 5
---

# jobs

## Purpose

The `jobs` command lists the jobs currently managed by the shell, such as commands running in the background. Job control allows a User to start a command, move it to the background, and later check on or resume it, all within the same shell session.

## Syntax

```bash
jobs [options]
```

## Important Options

`jobs` is most commonly used without options to display a simple list of current jobs.

## Examples

Starting a command in the background using `&`:

```bash
sleep 100 &
```

Listing current jobs in the shell session:

```bash
jobs
```

Typical output:

```bash
[1]+  Running                 sleep 100 &
```

Bringing a background job back to the foreground using `fg`:

```bash
fg %1
```

Resuming a stopped job in the background using `bg`:

```bash
bg %1
```

### Job IDs vs Process IDs

Each job listed by `jobs` is assigned a job ID, shown in brackets, such as `[1]`. This job ID is specific to the current shell session and is different from the Process ID (PID) assigned by the operating system. Job IDs are referenced using a percent sign, such as `%1`, when used with commands like `fg` or `bg`, while a PID is used with commands like `kill`.

If there are no background or stopped jobs in the current shell session, `jobs` produces no output rather than an error.

:::note

Job control applies only within the shell session where the job was started. Jobs are not visible to `jobs` in a different terminal or shell session, even if the underlying Process is still running.

:::

## Related Commands

- `ps` – display a snapshot of all running processes, not limited to the current shell session.
- `kill` – send a signal to a Process, which can also be referenced using its job ID.
