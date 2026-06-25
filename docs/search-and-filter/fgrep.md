---
title: fgrep
sidebar_label: fgrep
sidebar_position: 3
---

# fgrep

## Purpose

The `fgrep` command searches file content for lines matching a pattern, treating the pattern as a fixed string rather than a regular expression. This means special characters in the pattern are matched literally.

## Syntax

```bash
fgrep [options] pattern [file...]
```

## Important Options

`fgrep` accepts the same options as `grep`, since it behaves as a variant of `grep` with fixed-string matching enabled by default.

## Examples

Searching for a literal string:

```bash
fgrep "error" file.txt
```

Searching case-insensitively for an exact phrase:

```bash
fgrep -i "exact text" file.txt
```

### No Regular Expression Interpretation

Because `fgrep` treats the pattern as a literal string, characters that normally have special meaning in a regular expression, such as `.` or `*`, are matched exactly as typed.

```bash
fgrep "192.168.1.1" logfile.txt
```

In this example, the dots are matched as literal periods. With regular `grep`, a `.` would instead match any single character, which could lead to unintended matches.

### Performance Advantages

Since `fgrep` does not need to interpret regular expression syntax, it can be faster than `grep` or `egrep` when searching for plain text, particularly across large files or many files. This makes it a reasonable choice when the search pattern does not require any pattern-matching features.

`fgrep` is equivalent to running `grep` with the `-F` option:

```bash
grep -F "error" file.txt
```

If no match is found, `fgrep` produces no output and exits with a non-zero status, the same as `grep`.

:::tip

Use `fgrep`, or `grep -F`, when searching for text that contains characters such as `.`, `*`, or `[`, and those characters should be matched literally rather than interpreted as regular expression syntax.

:::

## Related Commands

- `grep` – search using basic regular expressions by default.
- `egrep` – search using extended regular expressions.
