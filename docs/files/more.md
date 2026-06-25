---
title: more
sidebar_label: more
sidebar_position: 3
---

# more

## Purpose

The `more` command displays the content of a file one screen at a time. It is a simpler pager than `less`, offering basic forward navigation through a file.

## Syntax

```bash
more [options] file
```

## Important Options

`more` is most often launched without options, since its navigation is controlled through interactive keys after the file is open.

## Examples

Opening a file for screen-by-screen viewing:

```bash
more file.txt
```

Once the file is open, the following actions are commonly available:

- Pressing the Spacebar scrolls forward one full screen.
- Pressing Enter scrolls forward one line.
- Pressing `q` quits `more` and returns to the shell prompt.

### Difference from less

`more` and `less` serve a similar purpose, but `less` provides more capabilities:

- `more` generally only allows scrolling forward through a file, while `less` allows scrolling both forward and backward freely.
- `less` supports more flexible searching, including jumping between matches with keys such as `n`. The searching capabilities available in `more` are more limited and can vary between systems.
- `less` does not need to read the entire file before displaying it, while some implementations of `more` may behave less efficiently with very large files.

If the specified file does not exist, `more` reports an error and exits immediately. If the file is shorter than one screen, `more` displays the entire content and exits without requiring further interaction.

:::note

In most cases, `less` is the preferred choice for interactive file viewing due to its more flexible navigation. `more` remains useful on minimal systems where `less` may not be installed.

:::

## Related Commands

- `less` – a more capable pager with backward scrolling and flexible search.
- `cat` – display the full content of a file at once.
