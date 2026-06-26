---
title: ps
sidebar_label: ps
sidebar_position: 1
---

# ps

## Purpose

The `ps` command displays a snapshot of currently running processes. A Process is a running instance of a Program, and `ps` provides a static, point-in-time view of which processes exist on the system at the moment the command is run.

## Syntax

```bash
ps [options]
```

## Important Options

```bash
ps
```

Without any options, `ps` displays only the processes associated with the current terminal session, owned by the current User.

```bash
ps aux
```

Displays a detailed list of all processes running on the system, for every User, in a commonly used extended format.

```bash
ps -ef
```

Displays a full listing of all processes on the system, using a different formatting convention than `aux`, but covering similar information.

## Examples

Listing processes attached to the current terminal:

```bash
ps
```

Listing all processes on the system, including those owned by other users:

```bash
ps aux
```

Listing all processes in full-format notation:

```bash
ps -ef
```

### Understanding the Process Table

Output from `ps aux` typically includes columns such as:

```bash
USER       PID  TTY      TIME COMMAND
user      1234  pts/0    0:00 bash
user      1300  pts/0    0:00 ps aux
```

- `USER`: the User who owns the Process.
- `PID`: the Process ID, a unique number identifying the Process.
- `TTY`: the terminal associated with the Process, if any. Processes not attached to a terminal, such as background system processes, show a value such as `?`.
- `TIME`: the total amount of CPU time the Process has used since it started.
- `COMMAND` (or `CMD`): the command or Program that started the Process.

### User vs System Processes

Processes started directly by a User, such as a shell or a text editor, are generally easy to identify in the output, since they are associated with a terminal and owned by that User's account. System processes, often started during boot or running in the background, may be owned by other accounts and are typically not attached to any terminal.

If no processes match the criteria of the command, such as filtering by a non-existent User, `ps` produces an empty or near-empty result rather than an error.

:::note

`ps` shows a single snapshot at the moment it runs. It does not update automatically. Use `top` or `htop` for continuously updating, real-time process monitoring.

:::

## Related Commands

- `top` – monitor processes continuously in real time.
- `htop` – an interactive, user-friendly process monitor.
- `pstree` – display processes as a hierarchical tree.
