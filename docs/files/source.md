---
title: source
sidebar_label: source
sidebar_position: 7
---

# source

## Purpose

The `source` command reads and executes commands from a file within the current shell session, rather than starting a new Process to run them. It is commonly used to load shell configuration files or to apply environment changes defined in a script.

## Syntax

```bash
source file
```

The shorthand `.` can also be used in place of `source`.

```bash
. file
```

## Important Options

`source` does not typically require options for everyday use. Its behavior is determined entirely by the file being read.

## Examples

Sourcing a script using the `source` command:

```bash
source script.sh
```

Sourcing a script using the equivalent dot shorthand:

```bash
. script.sh
```

Reloading a shell configuration file after making changes:

```bash
source ~/.bashrc
```

### Running a Script vs Sourcing It

Running a script normally, such as with `./script.sh` or `bash script.sh`, starts a new Process. Any environment variables, aliases, or Directory changes made inside the script only affect that new Process and are discarded once the script finishes.

Sourcing a script with `source` or `.` executes its commands directly within the current shell session, without starting a new Process. This means any environment variables, aliases, or Directory changes made by the script persist in the current shell after it finishes.

```bash
source set-environment.sh
echo "$CONFIGURED_VARIABLE"
```

In this example, if `set-environment.sh` defines `CONFIGURED_VARIABLE`, that variable remains available in the current shell after the script has been sourced.

If the specified file does not exist, `source` reports an error. If the file contains invalid commands, `source` reports an error for those commands but may still apply any valid changes that were processed before the error occurred.

:::warning

Only source scripts from trusted sources. Since a sourced script runs directly in the current shell session, it has the same level of access as any command typed manually, including the ability to change environment variables and Directory location.

:::

## Related Commands

- `cd` – change the current working Directory, often set inside sourced configuration files.
- `cat` – view the content of a script before sourcing it.
