---
title: tail
sidebar_label: tail
sidebar_position: 5
---

# tail

## Purpose

The `tail` command displays the last lines of a file. It is commonly used to inspect recent entries in a file, such as the most recent lines of a log file, and can also monitor a file for new content as it is written.

## Syntax

```bash
tail [options] [file...]
```

If no file is specified, `tail` reads from standard input.

## Important Options

```bash
tail -n
```

Specifies the number of lines to display. By default, `tail` displays the last 10 lines of a file.

```bash
tail -f
```

Continuously monitors the file for new content and displays new lines as they are added, instead of exiting after the initial output.

## Examples

Displaying the last 10 lines of a file, using the default behavior:

```bash
tail file.txt
```

Displaying a specific number of lines:

```bash
tail -n 20 file.txt
```

Continuously monitoring a file for new lines as they are written:

```bash
tail -f file.txt
```

### Real-Time Log Monitoring

The `-f` option is especially useful for watching a log file while a Program is actively writing to it. After displaying the existing last lines, `tail -f` keeps running and prints each new line as soon as it is added to the file.

```bash
tail -f /var/log/syslog
```

This command continues running until it is manually stopped, typically by pressing `Ctrl+C`.

If the file contains fewer lines than the requested count, `tail` displays all available lines. If the specified file does not exist, `tail` reports an error. When using `-f`, if the file is deleted or rotated by another Process while being monitored, `tail` may stop receiving new content depending on the system and options used.

:::tip

Use `tail -f` to watch a log file in real time while reproducing an issue, instead of repeatedly reopening the file to check for new entries.

:::

## Related Commands

- `head` – display the first lines of a file.
- `cat` – display the full content of a file.
- `less` – view file content interactively, with the ability to jump to the end of the file.
