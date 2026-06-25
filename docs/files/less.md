---
title: less
sidebar_label: less
sidebar_position: 2
---

# less

## Purpose

The `less` command displays the content of a file interactively, one screen at a time. It allows a User to navigate, search, and scroll through a file without loading the entire content into the terminal at once.

## Syntax

```bash
less [options] file
```

## Important Options

`less` is most often launched without options, since most of its functionality is controlled through interactive keys after the file is open, rather than through command-line options.

The following keys are commonly used while inside `less`:

- `/` followed by a search term: searches forward for matching text in the file.
- `n`: jumps to the next match after a search has been performed.
- `q`: quits `less` and returns to the shell prompt.

## Examples

Opening a file for interactive viewing:

```bash
less file.txt
```

Once the file is open, the following actions are available:

- Pressing the Down Arrow key, or `j`, scrolls forward one line.
- Pressing the Up Arrow key, or `k`, scrolls backward one line.
- Pressing the Spacebar scrolls forward one full screen.
- Typing `/error` and pressing Enter searches forward for the text `error`.
- Pressing `n` after a search moves to the next occurrence of the search term.
- Pressing `q` exits `less` and returns to the shell.

`less` loads the file progressively as the User scrolls, rather than reading the entire file into memory at once. This allows it to handle very large files efficiently.

If the specified file does not exist, `less` reports an error and exits immediately instead of opening an empty view.

:::tip

Use `less` instead of `cat` when viewing files that are too large to fit on a single screen, since `less` allows scrolling and searching without printing the entire file at once.

:::

## Related Commands

- `more` – a simpler pager with fewer navigation features.
- `cat` – display the full content of a file at once.
- `tail` – display the last lines of a file, optionally in real time.
