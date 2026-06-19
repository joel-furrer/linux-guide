---
title: Shells
sidebar_label: Shells
sidebar_position: 4
---

# Shells

## Overview

A shell is a program that provides a command-line interface (CLI) between a User and the operating system.

The shell reads commands entered by the User, interprets them, and starts programs or executes built-in commands.

Common shells on Unix and Linux systems include:

- Bourne Shell (sh)
- Bourne Again Shell (bash)
- Korn Shell (ksh)
- TENEX C Shell (tcsh)
- Z Shell (zsh)
- Friendly Interactive Shell (fish)

Most Linux distributions use `bash` or `zsh` as the default shell.

## Why It Matters

The shell is one of the most important tools in Unix and Linux systems.

It allows Users to:

- Navigate the file system
- Manage files and directorys
- Start and control processes
- Automate tasks with scripts
- Manage system resources
- Combine commands into powerful workflows

Understanding the shell is essential for system administration, software development, and troubleshooting.

:::note

Many administrative and development tasks can be performed faster from the command line than through graphical applications.

:::

## Concept

The shell acts as an interpreter between the User and the operating system.

A typical workflow is:

1. The User enters a command.
2. The shell parses the command.
3. The shell locates the requested program.
4. The shell starts a new process when required.
5. Output is displayed in the terminal.

Example:

```bash
pwd
```

The shell executes the `pwd` program and displays the current working directory.

### Shell Components

A shell typically provides:

- Command execution
- Environment variables
- Input and output redirection
- Pipes
- Command history
- Aliases
- Scripting capabilities
- Job control

### Environment Variables

Environment variables store configuration values that programs can access.

Example:

```bash
echo $HOME
```

This displays the home directory of the current User.

### Pipes

Pipes allow the output of one command to become the input of another command.

Example:

```bash
ls -a | grep ".conf"
```

This sends the output of `ls` to `grep`.

### Redirection

Redirection changes where input or output is read from or written to.

Example:

```bash
ls -a > files.txt
```

The command output is written into a file.

:::tip

Pipes and redirection are fundamental concepts that enable efficient command-line workflows.

:::

### Shell Scripts

A shell script is a text file containing shell commands.

Example:

```bash
#!/bin/bash

echo "Hello World"
```

Scripts are commonly used for automation and system administration tasks.

## Examples

### Determine the Current Shell

```bash
echo $SHELL
```

### Display Available Shells

```bash
cat /etc/shells
```

### Start a New Bash Session

```bash
bash
```

### Start a New Z Shell Session

```bash
zsh
```

### Create an Alias

```bash
alias ll='ls -al'
```

### Execute a Shell Script

```bash
chmod +x script.sh
./script.sh
```

## Common Pitfalls

### Confusing the Terminal and the Shell

A terminal is the application used to interact with the shell.

The shell is the program that interprets commands.

### Assuming All Shells Behave the Same

Different shells may support different syntax, features, and configuration files.

For example:

- Bash uses `.bashrc`
- Zsh uses `.zshrc`

### Overwriting Files with Redirection

The following command replaces the contents of an existing file:

```bash
echo "data" > file.txt
```

:::warning

Always verify redirection targets before executing commands that modify files.

:::

### Running Untrusted Shell Scripts

Shell scripts can execute arbitrary commands.

:::danger

Never execute scripts from untrusted sources without reviewing their contents first.

:::
