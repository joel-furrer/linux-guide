---
title: du
sidebar_label: du
sidebar_position: 12
---

# du

## Purpose

The `du` command reports the disk usage of files and directories. It is commonly used to identify how much space a Directory and its contents occupy on disk.

## Syntax

```bash
du [options] [path]
```

If no path is given, `du` reports usage starting from the current Directory.

## Important Options

```bash
du -h
```

Displays sizes in a human-readable format, such as `1K` or `250M`, instead of the raw block count.

```bash
du -sh
```

Combines a summary total (`-s`) with human-readable output (`-h`), showing only the total size of the specified Directory instead of a detailed breakdown of every subdirectory.

## Examples

Displaying disk usage for the current Directory and all subdirectories:

```bash
du
```

Displaying disk usage in human-readable format:

```bash
du -h
```

Displaying only the total size of a specific Directory:

```bash
du -sh /var/log
```

Without `-s`, `du` lists the size of every subdirectory individually, which can produce a long output for directories with many nested folders. Adding `-s` reduces this to a single total.

If the specified path does not exist, `du` reports an error. If the User lacks permission to read certain files or directories, `du` typically reports an error for those specific items while still calculating sizes for the rest.

:::tip

Use `du -sh` on a specific Directory when only the total size is needed, rather than a detailed breakdown of every subdirectory.

:::

## Related Commands

- `ls` – list Directory contents.
- `stat` – display detailed metadata for a single file.
