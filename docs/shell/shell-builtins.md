---
title: Shell Builtins
sidebar_label: Shell Builtins
sidebar_position: 6
---

# Shell Builtins

## Overview

A builtin is a command that is implemented directly inside the shell, rather than existing as a separate Program on disk. This page explains what builtins are, how they differ from external programs, and introduces some of the most commonly used builtins.

## Why It Matters

Builtins are used constantly during normal shell usage. Knowing which commands are builtins, and why that distinction matters, helps explain certain behaviors that are not obvious when only working with external programs.

## Concept

### What Builtins Are

A builtin command is part of the shell itself. When a User runs a builtin, the shell executes it directly, without starting a new Process.

### Builtins vs External Programs

An external program is a separate Program stored on disk. When a User runs an external program, the shell starts a new Process to execute it.

The `type` command shows whether a given command is a builtin or an external program:

```bash
type cd
```

```bash
type ls
```

The first command typically reports a builtin, while the second typically reports an external program located in a directory such as `/usr/bin`.

This distinction matters for a few reasons:

- Builtins do not require creating a new Process, which makes them faster to execute.
- Some builtins, such as `cd`, must be builtins because they need to change the state of the current shell session itself. An external program cannot do this, since it would only affect its own Process.

## Examples

### cd

Changes the current working directory.

```bash
cd /var/log
```

### pwd

Prints the current working Directory.

```bash
pwd
```

### echo

Prints text to the terminal.

```bash
echo "Hello, world"
```

### alias

Creates a shortcut for a command or sequence of commands.

```bash
alias ll="ls -l"
```

### source

Reads and executes commands from a file in the current shell session.

```bash
source ~/.bashrc
```

### exit

Ends the current shell session.

```bash
exit
```

### history

Displays a list of previously executed commands.

```bash
history
```

## Common Pitfalls

- Assuming every command is a builtin. Many frequently used commands, such as `ls` and `grep`, are external programs.
- Forgetting that changes made by `cd` only apply to the current shell session, not to other open sessions.
- Using `source` and expecting it to start a new Process. It executes commands directly in the current session.

:::note

The set of available builtins can vary between shells. The examples on this page apply to bash and most bash-compatible shells.

:::
