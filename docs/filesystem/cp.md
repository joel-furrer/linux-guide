---
title: cp
sidebar_label: cp
sidebar_position: 7
---

# cp

## Purpose

The `cp` command copies files and directories from one location to another. The original file remains unchanged after the copy is made.

## Syntax

```bash
cp [options] source destination
```

When copying multiple files, the destination must be an existing Directory.

## Important Options

```bash
cp -r
```

Copies directories recursively, including all of their contents. This option is required when copying a Directory, since `cp` does not copy directories by default.

```bash
cp -a
```

Copies files and directories while preserving attributes such as permissions, ownership, and timestamps. This option also copies recursively.

```bash
cp -i
```

Prompts for confirmation before overwriting an existing file at the destination.

## Examples

Copying a single file:

```bash
cp report.txt backup-report.txt
```

Copying a file into a Directory:

```bash
cp report.txt /backup/
```

Copying a Directory and all of its contents:

```bash
cp -r project/ project-backup/
```

Copying a Directory while preserving permissions, ownership, and timestamps:

```bash
cp -a project/ project-backup/
```

Copying with a confirmation prompt before overwriting:

```bash
cp -i report.txt /backup/report.txt
```

If the destination file already exists, `cp` overwrites it by default without warning, unless `-i` is used. If the source file does not exist, or the Directory was not copied recursively, `cp` reports an error and exits with a non-zero status.

:::warning

Copying a Directory without `-r` fails. Attempting to copy a Directory without this option results in an error stating that the source is a Directory.

:::

## Related Commands

- `mv` – move or rename files and directories.
- `rm` – remove files and directories.
- `tar-and-archives` – create archives of multiple files and directories.
