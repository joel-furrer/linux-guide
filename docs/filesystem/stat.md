---
title: stat
sidebar_label: stat
sidebar_position: 11
---

# stat

## Purpose

The `stat` command displays detailed metadata about a file, including its size, permissions, ownership, and timestamps. It provides more detailed information than a standard `ls` listing.

## Syntax

```bash
stat [options] file...
```

## Important Options

`stat` is most often used without options to display the full set of metadata for a file. Some systems support format options for displaying specific fields only, but these are less commonly needed for everyday use.

## Examples

Displaying metadata for a file:

```bash
stat notes.txt
```

Typical output:

```bash
  File: notes.txt
  Size: 1024            Blocks: 8          IO Block: 4096   regular file
Device: 802h/2050d      Inode: 1234567     Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/    user)   Gid: ( 1000/    user)
Access: 2026-06-25 10:00:00.000000000 +0000
Modify: 2026-06-25 09:45:00.000000000 +0000
Change: 2026-06-25 09:45:00.000000000 +0000
```

### Understanding the Output

- `Size`: the file size in bytes.
- `regular file`: the file type, which could also be a Directory or other special type.
- `Access (0644/-rw-r--r--)`: the file's permissions, shown both in numeric and symbolic form.
- `Uid` and `Gid`: the owning User and group.
- `Access`: the time the file was last read.
- `Modify`: the time the file's content was last changed.
- `Change`: the time the file's metadata, such as permissions, was last changed.

If the specified file does not exist, `stat` reports an error and exits with a non-zero status instead of producing output.

:::tip

Use `stat` instead of `ls -l` when more detailed timestamp or ownership information is needed, since `stat` reports access, modification, and change times separately.

:::

## Related Commands

- `ls` – list Directory contents, including basic metadata in long format.
- `file` – identify a file's type based on its content.
