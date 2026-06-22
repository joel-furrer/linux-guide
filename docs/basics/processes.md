---
title: Processes
sidebar_label: Processes
sidebar_position: 9
---

# Processes

## Overview

A process is a running instance of a program. While a program is simply executable code stored on disk, a process is that code actively loaded into memory and executed by the operating system. Understanding how processes are created, identified, and managed is fundamental to working effectively with any Linux or Unix system.

## Why It Matters

Processes are the foundation of everything that happens on a running system. Every command executed, every service running in the background, and every application open on the desktop exists as one or more processes. Being able to monitor and manage processes allows you to:

- Identify which programs are consuming system resources.
- Stop unresponsive or unwanted processes.
- Run long-running tasks without blocking your terminal session.
- Diagnose performance issues and unexpected system behavior.

## Concept

### From Program to Process

A program is static executable code stored on disk. When that program is executed, the operating system creates a process: it allocates memory, sets up an execution context, and begins running the program's instructions. A single program can be run multiple times simultaneously, resulting in multiple distinct processes, each with its own state and resources.

### Process Identifiers (PIDs)

Every process is assigned a unique numeric identifier called a PID (Process ID) at the time it is created. The PID allows the operating system, and system administrators, to refer to a specific process unambiguously.

A related concept is the **PPID** (Parent Process ID), which identifies the process that created the current process. Almost every process on the system is created by another process, forming a hierarchical tree of processes that traces back to an initial process started when the system boots.

### Foreground and Background Processes

When a command is run in a terminal, it normally runs in the **foreground**, meaning it occupies the terminal session until it finishes, and the user cannot enter further commands until it completes.

A process can instead be run in the **background**, allowing the user to continue using the terminal for other tasks while the process executes. This is particularly useful for long-running tasks, such as downloads, backups, or compilations.

Background processes can later be brought back to the foreground, and foreground processes can be sent to the background, using job control features of the shell.

### Process States

A process can exist in several states during its lifetime, including:

- **Running**: Actively executing on the CPU, or ready to do so.
- **Sleeping**: Waiting for an event, such as input or a resource becoming available.
- **Stopped**: Paused, typically by a signal, and not currently executing.
- **Zombie**: A process that has finished executing but still has an entry in the process table, usually waiting for its parent process to acknowledge its completion.

### Signals

Processes can be controlled by sending them signals, which are notifications that request a specific action. Common signals include requests to terminate gracefully, terminate immediately, or pause execution.

## Examples

### Viewing Running Processes

Display a snapshot of all processes currently running on the system, including their PIDs:

```bash
ps aux
```

Display an interactive, continuously updating view of processes, sorted by resource usage:

```bash
top
```

:::tip

The `htop` command provides a more user-friendly, color-coded alternative to `top`, including scrollable process lists and easier sorting. It is often not installed by default and may need to be added through the system's package manager.

:::

### Running a Process in the Background

Append an ampersand (`&`) to a command to run it in the background:

```bash
long-running-task &
```

The shell immediately returns control, and prints the PID of the background process:

```
[1] 4821
```

### Listing and Managing Jobs

View the jobs running in the current shell session:

```bash
jobs
```

Bring a background job back to the foreground:

```bash
fg %1
```

Send a foreground process to the background by first pausing it with `Ctrl+Z`, then resuming it in the background:

```bash
bg %1
```

### Stopping a Process

Terminate a process gracefully by PID, allowing it to clean up before exiting:

```bash
kill 4821
```

Forcefully terminate a process that does not respond to a normal termination request:

```bash
kill -9 4821
```

Terminate all processes matching a given name:

```bash
pkill firefox
```

:::warning

Forcefully terminating a process with `kill -9` does not give the process a chance to save data or release resources cleanly. Use it only when a normal termination request has failed.

:::

### Finding a Process by Name

Search for processes matching a specific name:

```bash
pgrep nginx
```

Combine `ps` with `grep` to view detailed information about matching processes:

```bash
ps aux | grep nginx
```

## Common Pitfalls

- **Closing a terminal with a foreground process still running**: This typically terminates the process along with the terminal session, unless it has been explicitly detached using tools designed for that purpose.
- **Confusing PID with PPID**: The PID identifies a process itself, while the PPID identifies its parent; confusing the two can lead to managing the wrong process.
- **Overusing kill -9**: Forceful termination should be a last resort, since it can leave temporary files, locks, or shared resources in an inconsistent state.
- **Assuming a background process keeps running after logout**: By default, background processes started in an interactive shell session may be terminated when that session ends, unless explicitly protected from this behavior.
