---
title: umask
sidebar_label: umask
sidebar_position: 5
---

# umask

## Purpose

The `umask` command displays or sets the default permission mask applied to newly created files and directories. This mask determines which permissions are removed from the system's default settings when a new file is created.

## Syntax

```bash
umask [mode]
```

Running `umask` without an argument displays the current mask. Providing a numeric mode sets a new mask for the current shell session.

## Important Options

```bash
umask
```

Displays the current mask value.

```bash
umask 022
```

Sets the mask to `022`, a commonly used default that removes write permission for the Group and others on new files.

## Examples

Displaying the current mask:

```bash
umask
```

Typical output:

```bash
0022
```

Setting a new mask for the current shell session:

```bash
umask 022
```

### How Permissions Are Calculated

When a new file or Directory is created, the system starts with a baseline set of permissions and then subtracts the values specified by the mask. Files typically start with a baseline of `666` (read and write for everyone), while directories typically start with `777` (read, write, and execute for everyone), since directories need execute permission to be entered.

With a mask of `022`, the value `022` is subtracted from the baseline:

- For files: `666` minus `022` results in `644`, meaning the owner can read and write, while the Group and others can only read.
- For directories: `777` minus `022` results in `755`, meaning the owner has full access, while the Group and others can read and enter the Directory but not write to it.

A change made with `umask` only affects the current shell session and any processes started from it. It does not change the permissions of files that already exist.

:::note

`umask` affects only newly created files and directories. Use `chmod` to change the permissions of files that already exist.

:::

## Related Commands

- `chmod` – change the permissions of an existing file or Directory.
- `chown` – change the owner and Group of a file or Directory.
