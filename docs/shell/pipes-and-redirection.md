---
title: Pipes and Redirection
sidebar_label: Pipes and Redirection
sidebar_position: 4
---

# Pipes and Redirection

## Overview

Commands in a shell read input and produce output through standard channels. This page explains those channels and how their data can be redirected or connected between commands using pipes.

## Why It Matters

Redirection and pipes allow commands to be combined and automated, which is one of the most powerful aspects of working in a shell. Understanding these mechanisms is essential for writing effective commands and scripts.

## Concept

### Standard Input, Output, and Error

Every command has access to three standard data streams:

- Standard input (stdin) is where a command reads input from, by default the keyboard.
- Standard output (stdout) is where a command writes normal output, by default the terminal.
- Standard error (stderr) is where a command writes error messages, by default also the terminal.

### File Descriptors

Each standard stream is identified internally by a file descriptor:

- File descriptor `0` represents stdin.
- File descriptor `1` represents stdout.
- File descriptor `2` represents stderr.

These numbers are used when redirecting streams explicitly.

### Redirecting Input

The `<` operator redirects stdin from a file instead of the keyboard.

```bash
sort < names.txt
```

This sends the contents of `names.txt` to `sort` as input.

### Redirecting Output

The `>` operator redirects stdout to a file, overwriting it if it already exists.

```bash
ls > filelist.txt
```

The `>>` operator appends to a file instead of overwriting it.

```bash
echo "new entry" >> filelist.txt
```

### Redirecting Errors

The `2>` operator redirects stderr to a file.

```bash
ls /nonexistent 2> errors.txt
```

This sends any error messages produced by the command to `errors.txt`, while normal output still goes to the terminal.

### Pipes

A pipe, written as `|`, connects the stdout of one command directly to the stdin of another command, without using a file.

```bash
ls | grep ".txt"
```

This sends the output of `ls` directly into `grep`, which filters it for lines containing `.txt`.

### Combining Pipes and Redirection

Pipes and redirection can be combined in a single command.

```bash
ls /var/log | grep "error" > error-lines.txt
```

This filters the output of `ls` for lines containing "error" and saves the result to a file.

## Examples

Saving command output to a file:

```bash
date > current-date.txt
```

Appending output to an existing file:

```bash
echo "Backup completed" >> backup-log.txt
```

Redirecting error messages separately from normal output:

```bash
find / -name "*.conf" 2> find-errors.txt
```

Filtering output through a pipe:

```bash
ps aux | grep "ssh"
```

Combining a pipe with output redirection:

```bash
ps aux | grep "ssh" > ssh-processes.txt
```

## Common Pitfalls

- Using `>` when `>>` was intended, which overwrites a file instead of appending to it.
- Forgetting that `2>` only redirects stderr, while normal output still goes to the terminal unless redirected separately.
- Assuming a pipe sends both stdout and stderr to the next command. By default, a pipe only carries stdout.

:::warning

Redirecting output with `>` overwrites the target file without warning. Use `>>` if the existing content needs to be preserved.

:::
