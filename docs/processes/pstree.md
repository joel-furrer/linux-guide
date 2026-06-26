---
title: pstree
sidebar_label: pstree
sidebar_position: 2
---

# pstree

## Purpose

The `pstree` command displays running processes as a hierarchical tree, showing the parent-child relationships between them. This makes it easier to understand which Process started which other Process, compared to the flat listing produced by `ps`.

## Syntax

```bash
pstree [options] [PID]
```

If no Process ID is specified, `pstree` displays the tree starting from the first Process on the system.

## Important Options

`pstree` is most commonly used without options to display the full Process tree for the system.

## Examples

Displaying the full Process tree:

```bash
pstree
```

Typical output:

```bash
systemd─┬─sshd───bash───pstree
        ├─cron
        └─nginx─┬─nginx
                └─nginx
```

### Parent-Child Relationships

Every Process, except the very first one, is started by another Process, known as its parent. `pstree` visualizes this relationship by indenting child processes underneath their parent, showing how processes branch out from a small number of starting points.

### The PID 1 Concept

The first Process started when the system boots is assigned Process ID 1. This Process, often `systemd` or `init` depending on the system, has no parent of its own and serves as the ancestor of every other Process running on the system. In the example output above, `systemd` represents this starting point.

If a specified Process ID does not exist, `pstree` reports an error or produces no output, depending on the system.

:::tip

Use `pstree` when trying to understand which Process started another, such as identifying which service is responsible for a group of related processes.

:::

## Related Commands

- `ps` – display a flat list of running processes.
- `top` – monitor processes continuously in real time.
