---
title: mv
sidebar_label: mv
sidebar_position: 8
---

# mv

## Purpose

The `mv` command moves files and directories from one location to another. It is also used to rename files and directories, since renaming is treated as a move within the same Directory.

## Syntax

```bash
mv [options] source destination
```

When moving multiple files, the destination must be an existing Directory.

## Important Options

```bash
mv -i
```

Prompts for confirmation before overwriting an existing file at the destination.

```bash
mv -n
```

Prevents overwriting an existing file at the destination. If the destination already exists, the move is skipped without prompting.

## Examples

Renaming a file:

```bash
mv oldname.txt newname.txt
```

Moving a file into a Directory:

```bash
mv report.txt /archive/
```

Moving a Directory to a new location:

```bash
mv project/ /home/user/projects/project/
```

Moving with a confirmation prompt before overwriting:

```bash
mv -i report.txt /archive/report.txt
```

Moving without ever overwriting an existing file:

```bash
mv -n report.txt /archive/report.txt
```

Unlike `cp`, `mv` does not require a special option to move directories, since moving does not involve duplicating data in the same way that copying does. If the destination file already exists, `mv` overwrites it by default, unless `-i` or `-n` is used. If the source does not exist, `mv` reports an error and exits with a non-zero status.

:::tip

Use `mv -i` when working with important files, so that any accidental overwrite requires explicit confirmation.

:::

## Related Commands

- `cp` – copy files and directories.
- `rm` – remove files and directories.
