---
title: head
sidebar_label: head
sidebar_position: 4
---

# head

## Purpose

The `head` command displays the first lines of a file. It is commonly used to quickly preview the beginning of a file without viewing its entire content.

## Syntax

```bash
head [options] [file...]
```

If no file is specified, `head` reads from standard input.

## Important Options

```bash
head -n
```

Specifies the number of lines to display. By default, `head` displays the first 10 lines of a file.

## Examples

Displaying the first 10 lines of a file, using the default behavior:

```bash
head file.txt
```

Displaying a specific number of lines:

```bash
head -n 10 file.txt
```

Displaying just the first three lines:

```bash
head -n 3 file.txt
```

Previewing the beginning of the output of another command through a pipe:

```bash
ls -l /var/log | head -n 5
```

If the file contains fewer lines than the requested count, `head` displays all available lines without reporting an error. If the specified file does not exist, `head` reports an error instead of producing output.

:::tip

Use `head` to quickly preview large files, such as logs or data exports, without loading their entire content.

:::

## Related Commands

- `tail` – display the last lines of a file.
- `cat` – display the full content of a file.
- `less` – view file content interactively.
