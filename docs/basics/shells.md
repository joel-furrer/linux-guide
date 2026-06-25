---
title: Shells
sidebar_label: Shells
sidebar_position: 4
---

# What Is a Shell?

## Overview

A shell is a program that lets a User interact with an operating system by typing commands. When a User opens a terminal application, the terminal starts a shell, and the shell becomes the interface between the User and the rest of the system.

This page introduces what a shell is and how it relates to the terminal, the User, and the operating system. Detailed shell usage, including builtins, redirection, and scripting, is covered in the Shell section of this documentation.

## Why It Matters

Almost every interaction with a Linux or Unix system, whether performed manually or through automation, passes through a shell at some point. Understanding what a shell is, and how it differs from a terminal, is a necessary foundation before learning how to use one effectively.

## Concept

### Shell, Terminal, User, and Operating System

These four elements work together, but each has a distinct role:

- The User is an account identified by a UID. The User is who issues commands.
- The terminal is the application or device that provides a text-based window for input and output. The terminal itself does not interpret commands.
- The shell is a Program that reads the commands typed by the User, interprets them, and asks the operating system to carry them out.
- The operating system manages the system's resources, such as memory, storage, and Processes, and performs the actions the shell requests on the User's behalf.

In short, the User types into the terminal, the terminal passes that input to the shell, and the shell communicates with the operating system.

### Terminal vs Shell

The terminal and the shell are often confused, but they are not the same thing.

- The terminal is a window or device that displays text and accepts keyboard input.
- The shell is the Program running inside the terminal that actually understands and executes commands.

A terminal can run different shells, and a shell does not require a graphical terminal to run, since it can also operate over a remote connection or inside a script.

### Common Shells

Several shells are commonly used on Linux and Unix systems. Each has its own behavior, features, and syntax, although they share many basic concepts.

- sh: The original Unix shell specification. Many other shells aim to be compatible with it.
- bash: The Bourne Again Shell. It is one of the most widely used shells and is the default on many Linux distributions.
- zsh: A shell that extends sh-compatible features with additional customization options.
- fish: A shell designed around user-friendly defaults, such as automatic suggestions.
- ksh: The Korn Shell, which introduced several features later adopted by other shells.

The choice of shell affects available features and minor syntax differences, but the fundamental concept of typing and executing commands remains the same across all of them.

## Examples

The following examples show simple interactions with a shell. They are intentionally minimal, since the goal here is only to illustrate what a shell does.

Checking the name of the current shell:

```bash
echo $SHELL
```

Running a basic command in the shell:

```bash
pwd
```

Each command typed at the prompt is read, interpreted, and executed by the shell.

## Common Pitfalls

- Assuming the terminal and the shell are the same thing. The terminal only displays text; the shell interprets commands.
- Assuming all shells behave identically. Basic commands work similarly across shells, but scripting syntax can differ significantly.
- Expecting shell scripting concepts, such as pipes or globbing, to be explained on this page. Those topics are covered in the Shell section.

:::tip

See the Shell section of this documentation for details on prompts, builtins, redirection, and other operational topics.

:::
