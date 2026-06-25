---
title: find
sidebar_label: find
sidebar_position: 5
---

# find

## Purpose

The `find` command searches for files and directories based on attributes such as name, type, or modification time. Unlike `grep`, which searches inside the content of files, `find` searches for the files themselves.

## Syntax

```bash
find [path] [options]
```

If no path is specified, `find` searches starting from the current Directory.

## Important Options

```bash
find . -name "*.txt"
```

Searches for files and directories whose name matches the given pattern.

```bash
find /var/log -type f
```

Limits the search to regular files only, excluding directories and other special types.

```bash
find . -type d
```

Limits the search to directories only.

## Examples

Finding all files ending in `.txt` in the current Directory and its subdirectories:

```bash
find . -name "*.txt"
```

Finding all regular files inside a specific Directory:

```bash
find /var/log -type f
```

Finding all directories inside the current Directory:

```bash
find . -type d
```

### Searching by Modification Time

`find` can also locate files based on when they were last modified, which is useful for tasks such as identifying recently changed files.

```bash
find /var/log -mtime -1
```

This finds files inside `/var/log` that were modified within the last day.

### Difference Between find and grep

`find` and `grep` are often used together, but they serve different purposes:

- `find` searches for files and directories themselves, based on attributes such as name, type, size, or modification time. It does not look at the content inside files unless explicitly told to.
- `grep` searches inside the content of files, looking for lines that match a text pattern. It does not consider file names or other file attributes.

These tools can be combined, for example to search file content only within files found by `find`:

```bash
find . -name "*.log" -exec grep "error" {} \;
```

If `find` does not locate any matching files or directories, it produces no output and exits successfully, since finding zero results is not treated as an error condition.

:::tip

Use `find` when looking for a file by its name, type, or modification time, and use `grep` when looking for specific text inside files.

:::

## Related Commands

- `grep` – search inside file content for matching lines.
- `du` – display disk usage for files and directories located with `find`.
