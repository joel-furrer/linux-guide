---
title: Environment Variables
sidebar_label: Environment Variables
sidebar_position: 5
---

# Environment Variables

## Overview

Environment variables are named values that are stored in the shell's environment and made available to processes running within that session. They are used to configure the behavior of programs, store system information, and pass settings between the shell and the processes it launches.

## Why It Matters

Environment variables are used throughout Linux and Unix systems to control how programs behave without modifying their code. They are essential for:

- Locating executable programs through variables such as `PATH`.
- Configuring applications, such as setting a default text editor or language locale.
- Passing information between scripts and the programs they invoke.
- Customizing a user's shell session, such as the prompt format or command history behavior.

A solid understanding of environment variables is necessary for effective shell usage, scripting, and troubleshooting "command not found" or configuration-related issues.

## Concept

### What an Environment Variable Is

An environment variable is a key-value pair stored in the environment of a process. When a process creates a child process, the child inherits a copy of the parent's environment variables. This is how shell settings, such as `PATH`, propagate from a shell session to every command executed within it.

By convention, environment variable names are written in uppercase letters, such as `HOME`, `PATH`, or `LANG`, though this is a convention rather than a strict requirement.

### Shell Variables vs. Environment Variables

It is important to distinguish between two related concepts:

- **Shell variables** (sometimes called local variables) exist only within the current shell session and are not passed to child processes.
- **Environment variables** are shell variables that have been marked for export, meaning they are passed to every child process started from that shell.

A shell variable becomes an environment variable once it has been exported using the `export` command.

### Scope: Local vs. Global

The terms "local" and "global" are often used informally to describe variable scope:

- A variable defined without exporting it is effectively **local** to the current shell session; it disappears when that shell exits and is never visible to child processes.
- An exported variable behaves more like a **global** setting from the perspective of child processes, since every process started from that shell session inherits it.

However, this inheritance only flows downward, from parent to child. A child process can modify its own copy of an inherited variable, but this change does not propagate back to the parent shell.

### The PATH Variable

`PATH` is one of the most important environment variables on any Unix-like system. It contains a list of directories, separated by colons, that the shell searches through when looking for an executable program to run.

When a command is entered without specifying its full path, the shell searches each directory listed in `PATH`, in order, until it finds an executable file matching that command name. If no match is found in any of these directories, the shell reports that the command was not found.

:::note

If a directory is not included in `PATH`, programs located there must be run using their full or relative path, such as `./script.sh`, rather than just their name.

:::

### Persistence of Environment Variables

Environment variables set directly in a terminal session only persist for the duration of that session. To make variables persist across sessions, they are typically defined in shell configuration files, such as `~/.bashrc` or `~/.profile`, which are read automatically when a new shell session starts.

## Examples

### Viewing Environment Variables

Display all environment variables currently set in the session:

```bash
printenv
```

Display the value of a specific variable:

```bash
echo "$HOME"
```

Display the current value of `PATH`:

```bash
echo "$PATH"
```

Example output:

```
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

### Creating a Shell Variable

Define a variable that exists only in the current shell session:

```bash
GREETING="Hello"
```

This variable can be used within the current shell, but is not visible to any program or script launched from it.

### Exporting a Variable

Make a variable available to child processes by exporting it:

```bash
export GREETING="Hello"
```

A variable can also be exported after being defined separately:

```bash
GREETING="Hello"
export GREETING
```

### Modifying PATH

Add a new directory to the existing `PATH`, preserving the directories already present:

```bash
export PATH="$PATH:/opt/myapp/bin"
```

:::tip

Always include the existing value of `PATH` (`$PATH`) when modifying it. Overwriting `PATH` entirely, without preserving its previous content, can make essential system commands temporarily unreachable in that session.

:::

### Making Variables Persistent

Add an export statement to the user's shell configuration file so it is applied automatically in future sessions:

```bash
echo 'export PATH="$PATH:/opt/myapp/bin"' >> ~/.bashrc
```

Apply the changes to the current session without starting a new one:

```bash
source ~/.bashrc
```

### Removing a Variable

Unset a variable, removing it from the current session entirely:

```bash
unset GREETING
```

## Common Pitfalls

- **Overwriting PATH instead of appending to it**: Setting `PATH` without including `$PATH` can make common commands unavailable until a new session is started.
- **Forgetting to export a variable**: A variable defined without `export` will not be visible to scripts or programs launched from the shell, even though it works correctly within the shell itself.
- **Editing the wrong configuration file**: Different shells and login methods read different configuration files; a variable added to the wrong file may not be loaded in every session type.
- **Assuming changes apply immediately everywhere**: Editing a shell configuration file does not affect sessions that are already running; those sessions must either be restarted or reload the file manually.
