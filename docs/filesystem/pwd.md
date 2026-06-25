---
title: pwd
sidebar_label: pwd
sidebar_position: 1
---

# pwd

## Purpose

The `pwd` command prints the current working Directory, which is the location in the file system where the shell is currently positioned. This is one of the most basic ways for a User to confirm where they are before running other commands.

## Syntax

```bash
pwd [options]
```

## Important Options

`pwd` is typically used without any options. The following options are available on most systems:

```bash
pwd -L
```

Prints the logical path, resolving any symbolic links in the current path. This is the default behavior on most systems.

```bash
pwd -P
```

Prints the physical path, resolving symbolic links to their actual target locations.

## Examples

Printing the current working Directory:

```bash
pwd
```

Typical output:

```bash
/home/user/projects
```

Using `pwd` after changing Directory to confirm the new location:

```bash
cd /var/log
pwd
```

If the Directory exists and is accessible, `pwd` succeeds and prints the path. If the current Directory has been removed while the shell is still positioned in it, `pwd` may report an error instead of a path.

:::tip

Run `pwd` whenever a script or command produces unexpected results involving relative paths. Confirming the current Directory is often the fastest way to diagnose the issue.

:::

## Related Commands

- `cd` – change the current working Directory.
- `ls` – list the contents of a Directory.
