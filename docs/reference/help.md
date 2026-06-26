---
title: help
sidebar_label: help
sidebar_position: 3
---

# help

## Purpose

The `help` command displays brief documentation for shell builtins, directly from within the shell itself. It is useful for quickly checking the syntax or options of a builtin without leaving the terminal session.

## Syntax

```bash
help [builtin-name]
```

If no builtin name is given, `help` lists all available builtins along with a short usage summary for each.

## Important Options

`help` does not require options. Its behavior depends only on whether a specific builtin name is provided.

## Examples

Listing all available builtins with short descriptions:

```bash
help
```

Viewing detailed help for a specific builtin:

```bash
help cd
```

Typical output for `help cd` includes a brief description of `cd`, along with a summary of its accepted arguments.

### Difference from man

`help` only covers shell builtins, the commands implemented directly inside the shell itself, such as `cd` or `export`. It does not provide documentation for external programs, such as `ls` or `grep`, since those are separate programs documented through their own manual pages rather than the shell's built-in help system. For documentation on external programs, `man` is used instead.

```bash
help cd
man ls
```

If the specified name is not a recognized builtin, `help` reports that no help topic matches, rather than displaying unrelated information.

:::note

`help` is specific to the shell being used, such as bash. The exact set of builtins and the format of their descriptions can vary between different shells.

:::

## Related Commands

- `man` – view detailed manual pages for external programs and many builtins.
- `shell-builtins` – an overview of common shell builtin commands.
