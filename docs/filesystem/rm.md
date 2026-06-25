---
title: rm
sidebar_label: rm
sidebar_position: 9
---

# rm

## Purpose

The `rm` command removes files and directories. Removed files are generally not sent to a recoverable location, which makes `rm` one of the most important commands to use carefully.

## Syntax

```bash
rm [options] file...
```

## Important Options

```bash
rm -r
```

Removes directories and their contents recursively. Without this option, `rm` cannot remove a Directory.

```bash
rm -f
```

Forces removal without prompting for confirmation, and suppresses error messages for files that do not exist.

```bash
rm -rf
```

Combines both options above to recursively remove a Directory and all of its contents without any confirmation prompts.

## Examples

Removing a single file:

```bash
rm notes.txt
```

Removing multiple files at once:

```bash
rm file1.txt file2.txt
```

Removing a Directory and its contents:

```bash
rm -r old-project/
```

Forcibly removing a Directory without confirmation:

```bash
rm -rf old-project/
```

If the file or Directory does not exist, `rm` reports an error and exits with a non-zero status, unless `-f` is used, in which case the missing file is silently ignored.

:::danger

The `rm -rf` combination removes a Directory and everything inside it permanently, without moving anything to a trash or recovery location. There is typically no confirmation prompt and no built-in way to undo this action. Always double-check the target path, especially when using wildcards or absolute paths, before running this command.

:::

## Related Commands

- `cp` – copy files and directories.
- `mv` – move or rename files and directories.
- `mkdir` – create directories.
