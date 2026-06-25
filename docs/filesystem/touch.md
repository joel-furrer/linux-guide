---
title: touch
sidebar_label: touch
sidebar_position: 6
---

# touch

## Purpose

The `touch` command creates new empty files and updates the timestamps of existing files. It is commonly used to quickly create placeholder files or to refresh a file's modification time.

## Syntax

```bash
touch [options] file...
```

Multiple file names can be specified at once.

## Important Options

`touch` is most often used without options for simple file creation. Some systems support additional options for setting specific timestamps, but these are less commonly needed in everyday usage.

## Examples

Creating a new empty file:

```bash
touch file.txt
```

Creating multiple empty files at once:

```bash
touch file1.txt file2.txt
```

Updating the timestamp of an existing file without changing its contents:

```bash
touch existing-file.txt
```

If the file does not exist, `touch` creates it as an empty file. If the file already exists, `touch` updates its last modified timestamp to the current time without altering its content.

:::note

If the specified Directory does not exist, `touch` reports an error rather than creating the Directory automatically. Use `mkdir` first to create any missing directories.

:::

## Related Commands

- `mkdir` – create directories.
- `stat` – display detailed metadata, including timestamps, for a file.
