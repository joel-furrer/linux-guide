---
title: export
sidebar_label: export
sidebar_position: 2
---

# export

## Purpose

The `export` command marks a shell variable so that it becomes part of the environment passed to any child Process started from the current shell. Without exporting a variable, it remains local to the shell and is not visible to programs the shell starts.

## Syntax

```bash
export [variable=value]
```

## Important Options

```bash
export VAR=value
```

Creates or updates a variable named `VAR` and marks it for export, making it part of the environment for any Process started afterward.

```bash
export PATH=$PATH:/new/path
```

Updates the existing `PATH` variable by appending a new Directory to it, then re-exports the updated value.

## Examples

Setting and exporting a new variable:

```bash
export GREETING="Hello"
```

Using the exported variable in a command run from the same shell:

```bash
echo $GREETING
```

Adding a new Directory to the existing `PATH` variable:

```bash
export PATH=$PATH:/opt/myapp/bin
```

### Making Variables Available to Child Processes

A variable that has been set but not exported, such as with a plain assignment like `GREETING="Hello"`, exists only within the current shell and is not passed to any Program the shell starts. Using `export` makes the variable part of the environment, so that any child Process, such as a script or another Program, can read its value.

```bash
GREETING="Hello"
bash -c 'echo $GREETING'
```

```bash
export GREETING="Hello"
bash -c 'echo $GREETING'
```

In the first example, the new shell started by `bash -c` does not see `GREETING`, since it was never exported. In the second example, after exporting, the new shell does see the variable, since it was inherited as part of the environment.

If `export` is used without an assignment, it marks an already existing variable for export without changing its value. If the named variable does not exist, this has no effect until the variable is later assigned a value.

:::tip

Use `export` for variables that need to be visible to scripts or Programs started from the shell, and plain assignment for variables only needed within the current shell session.

:::

## Related Commands

- `environment` – understand the concept of environment variables and how processes inherit them.
- `set` – view and configure shell variables and options more broadly.
