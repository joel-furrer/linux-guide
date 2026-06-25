---
title: ls
sidebar_label: ls
sidebar_position: 3
---

# ls

## Purpose

The `ls` command lists the contents of a Directory. It is one of the most frequently used commands for navigating and inspecting the file system.

## Syntax

```bash
ls [options] [path]
```

If no path is given, `ls` lists the contents of the current working Directory.

## Important Options

```bash
ls -a
```

Lists all entries, including hidden files. A hidden file is one whose name begins with a dot.

```bash
ls -l
```

Displays output in long format, showing detailed information about each entry.

```bash
ls -la
```

Combines both options above, showing all entries, including hidden files, in long format.

```bash
ls -h
```

Displays file sizes in a human-readable format, such as `1K` or `2M`, instead of the exact byte count. This option is commonly combined with `-l`.

## Examples

Listing the contents of the current Directory:

```bash
ls
```

Listing all files, including hidden ones:

```bash
ls -a
```

Listing files in long format with human-readable sizes:

```bash
ls -lh
```

### Understanding Long Format Output

Running `ls -l` produces output similar to the following:

```bash
-rw-r--r-- 1 user user 1024 Jun 25 10:15 notes.txt
```

Each column has a specific meaning:

- `-rw-r--r--`: the file type and permissions. The first character indicates the type (`-` for a regular file, `d` for a Directory). The remaining characters represent read, write, and execute permissions for the owner, group, and others.
- `1`: the number of hard links to the file.
- `user user`: the owning User and group.
- `1024`: the file size in bytes.
- `Jun 25 10:15`: the date and time the file was last modified.
- `notes.txt`: the file name.

If the specified path does not exist, `ls` reports an error and exits with a non-zero status instead of producing a listing.

:::note

Hidden files are not shown by default. Use `-a` to include them in the output.

:::

## Related Commands

- `cd` – change the current working Directory.
- `tree` – display a Directory structure recursively.
- `stat` – display detailed metadata for a single file.
