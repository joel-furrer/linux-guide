---
title: cut
sidebar_label: cut
sidebar_position: 6
---

# cut

## Purpose

The `cut` command extracts specific sections from each line of a file, based on either character position or delimited fields. It is commonly used to pull out individual columns from structured text, such as CSV-like data.

## Syntax

```bash
cut [options] [file...]
```

If no file is specified, `cut` reads from standard input.

## Important Options

```bash
cut -d
```

Specifies the delimiter character used to separate fields on each line. The default delimiter is a tab character.

```bash
cut -f
```

Selects one or more fields, based on the delimiter, to extract from each line.

```bash
cut -c
```

Selects one or more character positions to extract from each line, regardless of any delimiter.

## Examples

Consider a file named `users.csv` with the following content:

```bash
name,age,city
alice,30,berlin
bob,25,vienna
```

Extracting the first field, using a comma as the delimiter:

```bash
cut -d "," -f 1 users.csv
```

Output:

```bash
name
alice
bob
```

Extracting the second and third fields:

```bash
cut -d "," -f 2,3 users.csv
```

Output:

```bash
age,city
30,berlin
25,vienna
```

Extracting a range of character positions from each line, regardless of delimiter:

```bash
cut -c 1-5 users.csv
```

If the specified field or character position does not exist on a given line, `cut` typically outputs an empty result for that line rather than producing an error. If the specified file does not exist, `cut` reports an error.

:::note

The default delimiter is a tab character. When working with comma-separated files, the delimiter must be specified explicitly using `-d ","`.

:::

## Related Commands

- `head` – display the first lines of a file.
- `cat` – display the full content of a file.
