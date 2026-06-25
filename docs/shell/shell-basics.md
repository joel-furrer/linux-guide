---
title: Shell Basics
sidebar_label: Shell Basics
sidebar_position: 1
---

# Shell Basics

## Overview

This page explains how a User interacts with a shell on a day-to-day basis. It covers the prompt, the structure of a typical command, how the shell reports success or failure, and how to reuse previous commands through command history.

## Why It Matters

Before exploring more advanced shell features, it is important to understand the basic mechanics of typing and running commands. These fundamentals apply regardless of which shell is being used.

## Concept

### The Prompt

When a shell is ready to accept input, it displays a prompt. The prompt is a short piece of text, often ending in `$` or `#`, that indicates the shell is waiting for a command.

A prompt might look like this:

```bash
user@hostname:~$
```

The exact appearance of the prompt depends on the shell and its configuration, but its purpose is always the same: to signal that the shell is ready.

### Entering Commands

A command is typed after the prompt and executed when the Enter key is pressed. The shell reads the input, interprets it, and runs the corresponding Program or builtin.

### Command Structure

A typical command is made up of three parts:

```bash
command argument --option
```

- The command is the name of the Program or builtin to run.
- Arguments are additional values passed to the command, such as file names.
- Options (also called flags) modify how the command behaves.

A detailed explanation of arguments and options is available on the Arguments and Flags page.

### Exit Status

When a command finishes running, it returns an exit status to the shell. An exit status of `0` indicates success. Any other value indicates that an error occurred.

The exit status of the most recently executed command can be checked as follows:

```bash
echo $?
```

### Command History

Most shells keep a record of previously executed commands. This history allows a User to reuse earlier commands without retyping them.

A common way to view command history is:

```bash
history
```

Pressing the Up Arrow key recalls the previous command, and pressing it repeatedly moves further back through the history.

### Basic Workflow

A typical shell session follows a repeating pattern:

1. The shell displays a prompt.
2. The User types a command and presses Enter.
3. The shell executes the command.
4. The command produces output, an exit status, or both.
5. The shell displays a new prompt.

## Examples

Running a simple command:

```bash
whoami
```

Running a command with an argument:

```bash
ls /home
```

Checking whether the previous command succeeded:

```bash
ls /home
echo $?
```

Viewing recent command history:

```bash
history
```

## Common Pitfalls

- Forgetting to check the exit status after a command, which can hide errors in scripts or automated tasks.
- Assuming a command succeeded because it produced no error message. Some commands fail silently.
- Confusing arguments with options. Arguments are values for the command to act on, while options change the command's behavior.

:::tip

Run `echo $?` immediately after a command to check whether it completed successfully, since the exit status only reflects the most recent command.

:::
