---
title: grep
sidebar_label: grep
sidebar_position: 1
---

# grep

## Purpose

The `grep` command searches the content of files for lines that match a given pattern. It is one of the most commonly used tools for filtering text and finding specific information inside files or command output.

## Syntax

```bash
grep [options] pattern [file...]
```

If no file is specified, `grep` reads from standard input, which makes it useful when combined with pipes.

## Important Options

```bash
grep -i
```

Performs a case-insensitive search, matching text regardless of uppercase or lowercase letters.

```bash
grep -r
```

Searches recursively through a Directory and all of its subdirectories, checking every file for matches.

## Examples

Searching for a simple pattern in a file:

```bash
grep "error" file.txt
```

Searching without regard to letter case:

```bash
grep -i "error" file.txt
```

Searching recursively through a Directory:

```bash
grep -r "error" /var/log
```

### Basic Pattern Matching

`grep` reads a file line by line and prints any line that contains a match for the given pattern. By default, the pattern is interpreted as a basic regular expression, which supports simple matching beyond exact text, such as matching the start or end of a line. For most everyday searches, a plain word or phrase is enough.

### Filtering Output with grep

`grep` is frequently combined with other commands through a pipe to filter their output.

```bash
ps aux | grep "ssh"
```

In this example, `grep` does not search a file. Instead, it filters the standard output produced by `ps`, printing only the lines that contain `ssh`.

If `grep` finds at least one match, it prints the matching lines and exits successfully. If no match is found, `grep` produces no output and exits with a non-zero status, which can be used in scripts to check whether a pattern was found.

:::tip

Use `grep -i` when the exact letter case of the search term is uncertain, since text in files and logs is not always consistently capitalized.

:::

## Related Commands

- `egrep` – search using extended regular expressions.
- `fgrep` – search using fixed strings, without regular expression interpretation.
- `find` – search for files by name or attributes, rather than searching file content.
