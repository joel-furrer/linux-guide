---
title: awk
sidebar_label: awk
sidebar_position: 6
---

# awk

## Purpose

The `awk` command processes text by splitting each line into fields and applying patterns and actions to those fields. It is commonly used for extracting columns of data and performing simple text-based calculations.

## Syntax

```bash
awk [options] 'program' [file...]
```

If no file is specified, `awk` reads from standard input.

## Important Options

```bash
awk -F
```

Specifies the field delimiter used to split each line into fields. The default delimiter is whitespace.

## Examples

Printing the first field of each line, using the default whitespace delimiter:

```bash
awk '{print $1}' file.txt
```

Printing the second field of each line in a comma-separated file:

```bash
awk -F "," '{print $2}' file.csv
```

### The Pattern-Action Model

An `awk` program is made up of one or more pattern-action pairs. For each line of input, `awk` checks whether the line matches the pattern, and if it does, runs the associated action.

```bash
awk '{print $1}' file.txt
```

In this example, there is no explicit pattern, so the action runs for every line. The action `{print $1}` prints the first field of that line.

`awk` automatically splits each line into fields based on the delimiter, referring to them as `$1`, `$2`, and so on, with `$0` representing the entire line.

Consider a file named `data.csv` with the following content:

```bash
name,age,city
alice,30,berlin
bob,25,vienna
```

Extracting the name and city columns:

```bash
awk -F "," '{print $1, $3}' data.csv
```

Output:

```bash
name city
alice berlin
bob vienna
```

If a line has fewer fields than requested, `awk` treats the missing field as empty rather than producing an error. If the specified file does not exist, `awk` reports an error.

:::note

`awk` is a complete text-processing language with many additional features, such as conditionals and built-in variables. This page covers only the basic field extraction needed for everyday use.

:::

## Related Commands

- `cut` – extract fixed columns or delimited fields from text.
- `grep` – search for lines matching a pattern, without extracting specific fields.
