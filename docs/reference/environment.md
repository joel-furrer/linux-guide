---
title: Environment Variables
sidebar_label: Environment Variables
sidebar_position: 1
---

# Environment Variables

## Purpose

Environment variables are named values stored in the shell's environment, used to configure the behavior of the shell itself and any Programs started from it. This page explains the concept of environment variables and how to view them.

## Syntax

```bash
env
printenv [variable]
```

## Important Options

```bash
env
```

Displays all environment variables currently set in the shell session.

```bash
printenv
```

Displays all environment variables, similar to `env`. When given a specific variable name, `printenv` displays only the value of that variable.

## Examples

Displaying all environment variables:

```bash
env
```

Typical output includes entries such as:

```bash
HOME=/home/user
PATH=/usr/local/bin:/usr/bin:/bin
SHELL=/bin/bash
```

Displaying all environment variables using `printenv`:

```bash
printenv
```

Displaying the value of a single variable:

```bash
printenv PATH
```

### What Environment Variables Are

An environment variable is a name paired with a value, such as `PATH` holding a list of directories the shell searches when looking for a command to run. These variables provide configuration information that Programs can read when they start, without needing to be told the same information through command-line arguments every time.

### How Processes Inherit Environment Variables

When a shell starts a new Process, such as running a command, that Process receives a copy of the shell's current environment variables. This means a Program can read variables such as `HOME` or `PATH` without those values being passed explicitly as arguments. However, changes a child Process makes to its own copy of the environment do not affect the parent shell's environment, since each Process has its own separate copy.

If a referenced variable does not exist, `printenv variable-name` produces no output and exits with a non-zero status, rather than reporting an error message.

:::note

Environment variables set only within the current shell session are not automatically available in new terminal sessions. Persistent variables are typically defined in shell configuration files, such as `~/.bashrc`.

:::

## Related Commands

- `export` – make a shell variable available to child processes as an environment variable.
- `set` – view and configure shell variables and options, including those not exported to child processes.
