---
title: Input and Output
sidebar_label: Input and Output
sidebar_position: 11
---

# Input and Output

## Overview

Every program started on a Unix-like system automatically receives three data streams:

1. **Standard Input (`stdin`)**  
   The stream from which a program reads data.

2. **Standard Output (`stdout`)**  
   The stream used to send normal program output.

3. **Standard Error (`stderr`)**  
   The stream used to send error messages.

Example:

```bash
echo "Linux is cool"
```

Output:

```text
Linux is cool
```

If a command fails, the error message is typically written to `stderr`:

```bash
invalidcommand
```

Output:

```text
fish: Unknown command: invalidcommand
```

:::note

Unix treats these streams like files. Because of this, they can be redirected to files, devices, or other programs.

:::

## Why It Matters

Most Unix and Linux tools communicate through these three standard streams.

Understanding how they work allows you to:

- Save command output to files
- Separate normal output from error messages
- Read input from files instead of the keyboard
- Connect multiple commands together using pipes
- Build efficient command-line workflows

## Concept

### File Descriptors

Internally, Unix identifies the standard streams using file descriptors.

| File Descriptor | Stream |
|----------------|---------|
| `0` | Standard Input (`stdin`) |
| `1` | Standard Output (`stdout`) |
| `2` | Standard Error (`stderr`) |

### Redirection

Redirection changes where a stream reads data from or writes data to.

| Operator | Description |
|-----------|-------------|
| `>` | Redirect `stdout` and overwrite the target file |
| `>>` | Redirect `stdout` and append to the target file |
| `<` | Read input from a file instead of the keyboard |
| `2>` | Redirect `stderr` |
| `2>>` | Append `stderr` to a file |

### Pipes

The pipe operator (`|`) connects the `stdout` of one program directly to the `stdin` of another.

This allows multiple programs to process data in sequence.

:::tip

Pipes are one of the most powerful concepts in Unix because they allow small programs to work together as building blocks.

:::

## Examples

### Redirect Output to a File

Save the output of `<ls -l>` to a file:

```bash
ls -l > files.txt
```

### Append Output to a File

Add a new line to an existing log file:

```bash
echo "Process completed successfully" >> log.txt
```

### Redirect Input from a File

Provide a file as input to a program:

```bash
sort < names.txt
```

### Separate Output and Errors

Save normal output and error messages to different files:

```bash
./backup.sh > success.log 2> errors.log
```

### Combine Commands with a Pipe

Display only lines containing the word "error":

```bash
cat system.log | grep error
```

## Common Pitfalls ( Optional )

### Confusing `stdout` and `stderr`

Not all output is written to the same stream.

A command may appear to display everything in the terminal, but normal output and error messages are often sent through different streams.

### Accidentally Overwriting Files

The `>` operator replaces the entire contents of a file.

:::warning

Using `>` on an existing file permanently removes its previous contents.

Use `>>` if you want to preserve existing data.

:::

### Expecting Pipes to Transfer Errors

By default, pipes only forward `stdout`.

Error messages sent to `stderr` do not pass through the pipe unless explicitly redirected.

Example:

```bash
command 2>&1 | another-command
```

This redirects `stderr` to `stdout` before creating the pipe.
