---
title: Arguments and Flags
sidebar_label: Arguments and Flags
sidebar_position: 2
---

# Arguments and Flags

## Overview

Most commands accept additional input beyond their name. This input is divided into arguments and options. This page explains the difference between them and how they are typically combined.

## Why It Matters

Understanding how to structure command arguments and options is necessary for using almost any command-line Program correctly. Misusing them is one of the most common sources of errors for new Users.

## Concept

### Positional Arguments

A positional argument is a value passed directly to a command, usually representing a file, Directory, or other target. Its meaning is determined by its position.

```bash
cp source.txt destination.txt
```

In this example, `source.txt` and `destination.txt` are positional arguments. The first is the file to copy, and the second is the destination.

### Short Options

A short option is a single letter preceded by a single dash. Short options usually enable or modify a specific behavior.

```bash
ls -a
```

Here, `-a` is a short option that tells `ls` to include hidden files in its output.

### Long Options

A long option is a full word or phrase preceded by two dashes. Long options are usually more descriptive than short options.

```bash
ls --all
```

This produces the same result as `ls -a`, but the long form is easier to read.

### Combining Short Options

Multiple short options can often be combined after a single dash.

```bash
ls -la
```

This is equivalent to running:

```bash
ls -l -a
```

Not all commands support combining options this way, so it is good practice to check a command's documentation if combined options do not behave as expected.

### Typical Command Syntax

A general pattern for command syntax looks like this:

```bash
command [options] [arguments]
```

Options are commonly placed before arguments, although many commands also accept them in other positions.

## Examples

Listing files with hidden files included, using a short option:

```bash
ls -a
```

Copying a file:

```bash
cp report.txt /backup/report.txt
```

Creating a Directory, including any missing parent directories, using a long option:

```bash
mkdir --parents project/src
```

Searching for a pattern in a file using a short option:

```bash
grep -i "error" logfile.txt
```

Combining short options to search recursively and ignore case:

```bash
grep -ri "error" /var/log
```

## Common Pitfalls

- Confusing arguments with options. Arguments are usually targets, such as files, while options change behavior.
- Assuming every command supports combined short options or long options. Always check the command's own documentation.
- Placing options after certain arguments, which some commands may interpret incorrectly.

:::tip

Most commands support `--help` to display a short summary of their available options.

:::
