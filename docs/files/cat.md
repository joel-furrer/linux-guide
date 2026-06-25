---
title: cat
sidebar_label: cat
sidebar_position: 1
---

# cat

## Purpose

The `cat` command displays the contents of one or more files on standard output. It is also commonly used to concatenate multiple files together, which is where its name originates.

## Syntax

```bash
cat [options] file...
```

## Important Options

`cat` is most often used without options for simple viewing or concatenation. Some systems support options for numbering lines or showing non-printable characters, but these are not required for everyday use.

## Examples

Displaying the contents of a single file:

```bash
cat file.txt
```

Displaying the contents of multiple files, one after another:

```bash
cat file1.txt file2.txt
```

When multiple files are given, `cat` reads each one in order and writes its content to standard output, with no separator between them. This effectively joins the files together in the output.

Combining files into a new file using redirection:

```bash
cat file1.txt file2.txt > combined.txt
```

`cat` reads the entire content of a file and writes it to standard output as a single stream. It does not pause or wait for input once a file has been fully read, which makes it suitable for quickly viewing small files or feeding their content into another command through a pipe.

If a specified file does not exist, `cat` reports an error for that file and continues processing any remaining files. If no files are specified, `cat` reads from standard input instead.

:::warning

`cat` is not well suited for viewing large files, since it prints the entire content at once without any way to pause or navigate. Use `less` for viewing large files interactively.

:::

## Related Commands

- `less` – view file content interactively, one screen at a time.
- `head` – display the first lines of a file.
- `tail` – display the last lines of a file.
