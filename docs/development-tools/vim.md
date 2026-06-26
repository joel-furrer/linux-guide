---
title: vim
sidebar_label: vim
sidebar_position: 1
---

# vim

## Purpose

`vim` is a terminal-based text editor commonly used for editing files directly from the command line. It is widely available on Linux and Unix systems and is often used for quick edits, configuration changes, and software development.

## Syntax

```bash
vim [file]
```

If the specified file does not exist, `vim` opens a new, empty buffer that will create the file when saved.

## Important Options

`vim` is most commonly opened by simply specifying the file to edit. Its functionality is primarily accessed through modes and key commands once it is open, rather than through command-line options.

## Examples

Opening a file for editing:

```bash
vim file.txt
```

### Modes

`vim` operates using different modes, each suited to a different kind of task.

- Normal mode: the default mode when `vim` opens, used for navigating the file and issuing commands. Typing text directly does not insert characters in this mode.
- Insert mode: used for typing and editing text directly, similar to a typical text editor.
- Visual mode: used for selecting blocks of text, for example to copy or delete a specific range.

### Switching Modes and Basic Keys

- `i`: switches from normal mode to insert mode, allowing text to be typed.
- `ESC`: returns to normal mode from insert mode or visual mode.
- `:w`: saves the current file without exiting `vim`.
- `:q`: quits `vim`, but only if there are no unsaved changes.
- `:wq`: saves the current file and then quits `vim`.

### A Basic Editing Workflow

```bash
vim notes.txt
```

1. Press `i` to enter insert mode.
2. Type the desired text.
3. Press `ESC` to return to normal mode.
4. Type `:wq` and press Enter to save and exit.

### Navigation

In normal mode, the arrow keys can be used to move the cursor. Many Users also use the letters `h`, `j`, `k`, and `l` for left, down, up, and right movement, without needing to move a hand away from the main keyboard area.

If an attempt is made to quit with unsaved changes using `:q`, `vim` refuses and displays a warning rather than discarding the changes silently.

:::tip

If `vim` feels unfamiliar at first, remember the core cycle: press `i` to type, press `ESC` to stop typing, and use `:wq` to save and exit. These four actions cover most basic editing tasks.

:::

## Related Commands

- `cat` – view a file's content without editing it.
- `nano` – an alternative terminal-based text editor with a simpler interface.
