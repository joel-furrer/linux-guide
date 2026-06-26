---
title: man
sidebar_label: man
sidebar_position: 4
---

# man

## Purpose

The `man` command displays the manual page for a command or Program, providing detailed documentation including its syntax, available options, and general usage. Manual pages are one of the most common ways to look up how a command works directly from the terminal.

## Syntax

```bash
man [section] command
```

## Important Options

```bash
man ls
```

Displays the manual page for the `ls` command.

```bash
man grep
```

Displays the manual page for the `grep` command.

## Examples

Viewing the manual page for a command:

```bash
man ls
```

Viewing the manual page for another command:

```bash
man grep
```

### Navigating Manual Pages

Manual pages are typically displayed using a pager, similar to `less`. While viewing a manual page, the following actions are commonly available:

- Pressing the Spacebar scrolls forward one screen.
- Typing `/term` and pressing Enter searches the page for the specified term.
- Pressing `q` exits the manual page and returns to the shell prompt.

Manual pages generally follow a consistent structure, including sections such as a name and short description, a synopsis showing command syntax, a detailed description, and a list of available options.

If no manual page exists for the specified command, `man` reports that no entry was found, rather than displaying an empty page.

:::tip

When unsure how to use an unfamiliar command, check its manual page first with `man command-name`, since manual pages typically document every available option in detail.

:::

## Related Commands

- `help` – view quick documentation for shell builtins, without opening a full manual page.
- `less` – the pager often used internally to display manual pages.
