---
title: Wildcard Globbing
sidebar_label: Wildcard Globbing
sidebar_position: 3
---

# Wildcard Globbing

## Overview

Globbing is the process by which a shell expands wildcard patterns into matching file and Directory names before running a command. This page explains the available wildcard characters and how globbing differs from regular expressions.

## Why It Matters

Globbing allows a single command to operate on many files at once, without typing each file name individually. It is used constantly in everyday shell usage.

## Concept

### What Globbing Is

When a command includes a wildcard pattern, the shell expands that pattern into a list of matching file names before the command actually runs. The command itself never sees the original pattern, only the resulting list of names.

### The * Wildcard

The asterisk `*` matches any sequence of characters, including none.

```bash
ls *.txt
```

This matches every file in the current Directory whose name ends in `.txt`.

### The ? Wildcard

The question mark `?` matches exactly one character.

```bash
ls file?.txt
```

This matches `file1.txt` and `fileA.txt`, but not `file10.txt`, since `?` matches only a single character.

### Character Classes with []

Square brackets `[]` match any one of the characters listed inside them.

```bash
ls file[123].txt
```

This matches `file1.txt`, `file2.txt`, and `file3.txt`.

### Character Ranges

A range of characters can be specified inside square brackets using a dash.

```bash
ls file[1-3].txt
```

This produces the same result as the character class example above, matching `file1.txt` through `file3.txt`.

Letter ranges are also supported:

```bash
ls report[a-c].txt
```

This matches `reporta.txt`, `reportb.txt`, and `reportc.txt`.

### Hidden Files Behavior

By default, wildcard patterns do not match hidden files. A hidden file is one whose name begins with a dot.

```bash
ls *
```

This does not include hidden files such as `.bashrc`. To match hidden files explicitly, the pattern itself must include the leading dot.

```bash
ls .*
```

### Globbing vs Regular Expressions

Globbing and regular expressions both use special characters to match text, but they are not the same and are not interchangeable.

- Globbing is performed by the shell, before a command runs, and operates on file and Directory names.
- Regular expressions are typically interpreted by a specific Program, such as `grep`, and operate on text content rather than file names.

The same characters can also have different meanings. For example, `*` in globbing means "any sequence of characters," while `*` in a regular expression means "zero or more of the preceding character."

```bash
ls *.log
```

```bash
grep "a*b" file.txt
```

The first example is shell globbing, expanded before `ls` runs. The second example is a regular expression, interpreted by `grep` itself, where `*` applies only to the character `a`.

## Examples

Listing all Markdown files:

```bash
ls *.md
```

Listing files with a single-character suffix:

```bash
ls log?
```

Listing files numbered 1 through 5:

```bash
ls backup[1-5].tar
```

Removing all temporary files ending in `.tmp`:

```bash
rm *.tmp
```

Listing hidden configuration files in the home Directory:

```bash
ls ~/.*
```

## Common Pitfalls

- Assuming `*` matches hidden files. It does not, unless the pattern explicitly includes a leading dot.
- Confusing globbing patterns with regular expression syntax. The same characters can behave differently.
- Using a wildcard pattern that matches no files. Depending on the shell and its configuration, this may either pass the pattern through unchanged or produce an error.

:::warning

Always verify what a wildcard pattern matches with a command such as `ls` before using it with a destructive command such as `rm`.

:::
