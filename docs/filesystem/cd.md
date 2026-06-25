---
title: cd
sidebar_label: cd
sidebar_position: 2
---

# cd

## Purpose

The `cd` command changes the current working Directory of the shell. It is a shell builtin, meaning it is implemented directly inside the shell rather than existing as a separate Program on disk.

## Syntax

```bash
cd [path]
```

If no path is given, `cd` changes to the User's home Directory.

## Important Options

`cd` does not commonly take options. Instead, its behavior is controlled through the path argument and a small number of special arguments described below.

## Examples

Changing to the home Directory:

```bash
cd
```

Changing to the parent Directory using a relative path:

```bash
cd ..
```

Changing to the home Directory explicitly:

```bash
cd ~
```

Changing back to the previous Directory:

```bash
cd -
```

Changing to an absolute path:

```bash
cd /etc
```

A relative path is interpreted starting from the current Directory, such as `cd ..`. An absolute path always starts from the root Directory `/`, such as `cd /etc`, regardless of the current location.

If the target Directory exists and the User has permission to access it, `cd` succeeds silently and changes the shell's current location. If the Directory does not exist, or the User lacks permission, `cd` reports an error and the current Directory remains unchanged.

:::tip

Use `cd -` to quickly switch back and forth between two directories without retyping their full paths.

:::

## Related Commands

- `pwd` – print the current working Directory.
- `ls` – list the contents of a Directory.
