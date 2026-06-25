---
title: tree
sidebar_label: tree
sidebar_position: 4
---

# tree

## Purpose

The `tree` command displays the contents of a Directory as a visual, hierarchical structure. This makes it easier to understand how files and subdirectories are organized compared to a standard `ls` listing.

## Syntax

```bash
tree [options] [path]
```

If no path is given, `tree` displays the structure of the current Directory.

## Important Options

```bash
tree -L 2
```

Limits the depth of the displayed structure to the specified number of levels. In this example, only two levels of subdirectories are shown.

## Examples

Displaying the full Directory structure recursively:

```bash
tree
```

Typical output:

```bash
.
├── docs
│   ├── filesystem
│   └── shell
└── src
    └── pages
```

Limiting the output to two levels deep:

```bash
tree -L 2
```

Displaying the structure of a specific Directory:

```bash
tree /etc
```

If the specified path does not exist, `tree` reports an error. For very large directories, the output can be long, so limiting the depth with `-L` is often useful.

:::note

The `tree` command is not always installed by default on every system. It may need to be installed separately using the system's package manager before it can be used.

:::

## Related Commands

- `ls` – list Directory contents in a flat, non-hierarchical format.
- `du` – display disk usage for a Directory.
