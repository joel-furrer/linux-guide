---
title: htop
sidebar_label: htop
sidebar_position: 4
---

# htop

## Purpose

The `htop` command provides an interactive, real-time view of running processes, similar to `top`, but with a more user-friendly interface. It typically includes color-coded resource usage, easier scrolling, and simpler controls for managing processes directly from the display.

## Syntax

```bash
htop [options]
```

## Important Options

`htop` is most commonly launched without any options, since most of its functionality is accessed through on-screen menus and interactive keys.

## Examples

Starting the interactive process monitor:

```bash
htop
```

Once running, `htop` displays a continuously updating list of processes, along with per-core CPU usage bars and overall memory usage, typically presented in a more readable layout than `top`.

### Improvements Over top

`htop` offers several conveniences not always available in `top`:

- Processes can usually be selected with arrow keys and acted on directly, such as terminating them, without typing a Process ID manually.
- The interface often includes clearly labeled function keys at the bottom of the screen for common actions.
- Scrolling through a long process list is generally easier, since `htop` supports both vertical and horizontal scrolling.

Quitting `htop` is done by pressing `q`, the same as `top`.

If very few processes are running, `htop` simply displays a shorter list, the same as `top`. This is not treated as an error condition.

:::note

`htop` is not always installed by default on every system. It may need to be installed separately using the system's package manager before it can be used.

:::

## Related Commands

- `top` – a simpler, more widely available real-time process monitor.
- `ps` – display a single snapshot of running processes.
- `kill` – terminate a Process identified through `htop`.
