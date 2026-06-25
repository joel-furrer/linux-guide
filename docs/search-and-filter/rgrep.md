---
title: rgrep
sidebar_label: rgrep
sidebar_position: 4
---

# rgrep

## Purpose

The `rgrep` command searches file content recursively through a Directory and all of its subdirectories. It provides the same recursive behavior as `grep -r`, available as its own command name.

## Syntax

```bash
rgrep [options] pattern [directory...]
```

If no Directory is specified, `rgrep` searches the current working Directory.

## Important Options

`rgrep` accepts the same options as `grep`, since it behaves as a variant of `grep` with recursive searching enabled by default.

## Examples

Searching for a pattern recursively in the current Directory:

```bash
rgrep "TODO" .
```

Searching for a pattern recursively in a specific Directory:

```bash
rgrep "error" /var/log
```

### Understanding Recursion

Recursive searching means that `rgrep` does not stop at the files located directly inside the specified Directory. Instead, it also looks inside every subdirectory, and every subdirectory within those, continuing until all nested directories have been checked.

For a Directory structure such as:

```bash
logs/
├── app.log
└── archive/
    └── old-app.log
```

Running the following command checks both `app.log` and `archive/old-app.log`:

```bash
rgrep "error" logs/
```

`rgrep` is equivalent to running `grep` with the `-r` option:

```bash
grep -r "error" logs/
```

If no match is found anywhere in the Directory tree, `rgrep` produces no output and exits with a non-zero status.

:::note

`rgrep` may not be available on every system, since it is not provided everywhere as a separate command. `grep -r` achieves the same result and is more universally available.

:::

## Related Commands

- `grep` – search file content without recursion by default.
- `find` – search for files by name or attributes, rather than searching file content.
