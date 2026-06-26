---
title: top
sidebar_label: top
sidebar_position: 3
---

# top

## Purpose

The `top` command provides a continuously updating, real-time view of running processes, along with overall CPU and memory usage. Unlike `ps`, which shows a single snapshot, `top` refreshes its display automatically, making it suitable for ongoing monitoring.

## Syntax

```bash
top [options]
```

## Important Options

`top` is most commonly launched without any options, since its primary interaction happens through interactive keys once it is running.

## Examples

Starting the real-time process monitor:

```bash
top
```

Once `top` is running, the display refreshes periodically and shows a list of processes, typically sorted by CPU usage, along with a summary of overall system load, memory usage, and the number of running processes.

### Sorting and Interacting

While `top` is running, several keys can change how the information is displayed:

- Pressing `P` sorts the process list by CPU usage.
- Pressing `M` sorts the process list by memory usage.
- Pressing `q` quits `top` and returns to the shell prompt.

### Quitting top

Since `top` takes over the terminal screen and updates continuously, it must be exited explicitly by pressing `q`. Closing the terminal window or pressing `Ctrl+C` also stops `top`, but `q` is the standard way to exit cleanly.

If the system has very few running processes, `top` simply displays a shorter list. `top` does not produce an error condition based on the number of processes present, since it is designed to always show whatever is currently running.

:::tip

Use `top` when a quick, continuously updating overview of system load is needed. For a more detailed and easier-to-navigate interface, consider `htop` if it is available on the system.

:::

## Related Commands

- `ps` – display a single snapshot of running processes.
- `htop` – an interactive, user-friendly alternative to `top`.
- `kill` – terminate a Process identified through `top`.
