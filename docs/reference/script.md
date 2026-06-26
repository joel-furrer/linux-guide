---
title: Shell Scripts
sidebar_label: Shell Scripts
sidebar_position: 5
---

# Shell Scripts

## Purpose

A shell script is a file containing a sequence of shell commands, saved so that they can be executed together as a single unit. This page explains how shell scripts are executed and the role of the shebang line.

## Syntax

```bash
./script.sh
bash script.sh
```

## Important Options

```bash
./script.sh
```

Executes the script directly, relying on the shebang line at the top of the file to determine which interpreter should run it. This requires the file to have execute permission.

```bash
bash script.sh
```

Executes the script by explicitly passing it to `bash` as an argument, which does not require the script file itself to have execute permission.

## Examples

Running a script directly:

```bash
./script.sh
```

Running a script by passing it explicitly to bash:

```bash
bash script.sh
```

### The Shebang Line

A shell script commonly begins with a shebang line, such as:

```bash
#!/bin/bash
```

This line tells the system which interpreter should be used to execute the rest of the file when it is run directly, as with `./script.sh`. Without a shebang line, running a script directly may fail or use an unintended interpreter, depending on the system's defaults.

### Executable Permission Requirement

Running a script directly, using `./script.sh`, requires the file to have execute permission. Without it, the system refuses to run the file directly, even if the shebang line is correct.

```bash
chmod +x script.sh
./script.sh
```

Running a script by explicitly passing it to an interpreter, such as `bash script.sh`, does not require execute permission, since `bash` itself is being run, with the script file simply provided as input.

If the script file does not exist, both methods report an error. If the script contains a command that fails partway through, the script continues to the next line by default, unless it has been written to stop on errors.

:::note

The `set` command can change a script's behavior in useful ways, such as causing it to stop immediately when a command fails. See the dedicated `set` page for details.

:::

## Related Commands

- `chmod` – grant execute permission to a script file.
- `set` – configure shell options that affect script behavior, such as stopping on errors.
