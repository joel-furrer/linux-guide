---
title: mkdir
sidebar_label: mkdir
sidebar_position: 5
---

# mkdir

## Purpose

The `mkdir` command creates new directories. It is commonly used when setting up a project structure or organizing files into separate locations.

## Syntax

```bash
mkdir [options] directory...
```

Multiple Directory names can be specified at once.

## Important Options

```bash
mkdir -p
```

Creates parent directories as needed. Without this option, `mkdir` fails if any parent Directory in the specified path does not already exist.

## Examples

Creating a single Directory:

```bash
mkdir project
```

Creating multiple directories at once:

```bash
mkdir src tests docs
```

Creating a nested Directory structure in one command:

```bash
mkdir -p project/src/utils
```

Without `-p`, the following command fails if `project` does not already exist:

```bash
mkdir project/src
```

If the target Directory already exists, `mkdir` reports an error and exits with a non-zero status, unless `-p` is used, in which case existing directories are silently left unchanged.

:::tip

Use `mkdir -p` when creating nested directories in a single command, since it avoids errors caused by missing parent directories.

:::

## Related Commands

- `cd` – change the current working Directory.
- `rm` – remove files and directories.
- `tree` – display a Directory structure recursively.
