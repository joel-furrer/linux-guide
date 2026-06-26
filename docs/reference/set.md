---
title: set
sidebar_label: set
sidebar_position: 6
---

# set

## Purpose

The `set` command displays or configures shell options and variables, controlling aspects of the shell's behavior. It is commonly used inside scripts to enable specific debugging or safety behaviors.

## Syntax

```bash
set [options]
```

## Important Options

```bash
set
```

Displays a list of all currently set shell variables.

```bash
set -x
```

Enables a mode where the shell prints each command before executing it, which is useful for understanding what a script is actually doing as it runs.

```bash
set -e
```

Enables a mode where the shell immediately stops executing a script as soon as any command in it fails, rather than continuing to the next line.

## Examples

Displaying all current shell variables:

```bash
set
```

Enabling command tracing for debugging:

```bash
set -x
echo "This command will be shown before it runs"
```

Enabling immediate exit on error inside a script:

```bash
#!/bin/bash
set -e
cp missing-file.txt /backup/
echo "This line will not run if the previous command failed"
```

### Debugging Mode with set -x

When `set -x` is active, the shell prints each command, along with the values of any variables used in it, immediately before running that command. This makes it much easier to follow what a script is doing step by step, particularly when troubleshooting unexpected behavior.

```bash
set -x
name="example"
echo "Hello, $name"
```

Typical output includes both the traced command and its actual result:

```bash
+ name=example
+ echo 'Hello, example'
Hello, example
```

### Controlling Shell Behavior with set -e

By default, a shell script continues running subsequent commands even after one fails. Enabling `set -e` changes this behavior, causing the script to stop immediately if any command exits with a non-zero status, which can help prevent a script from continuing after an unexpected failure.

If an unsupported option is passed to `set`, the shell reports an error and the option has no effect.

:::tip

Add `set -e` near the top of scripts that should stop immediately on the first error, which helps prevent a script from continuing to run with unexpected or missing results.

:::

## Related Commands

- `script` – understand how shell scripts are structured and executed.
- `export` – make a variable available to child processes, separate from the options controlled by `set`.
