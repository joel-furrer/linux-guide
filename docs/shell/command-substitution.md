---
title: Command Substitution
sidebar_label: Command Substitution
sidebar_position: 5
---

# Command Substitution

## Overview

Command substitution allows the output of one command to be used as part of another command. This page explains why command substitution exists, its modern and legacy syntax, and why the modern syntax is preferred.

## Why It Matters

Command substitution is commonly used in everyday shell usage and scripting to build commands dynamically, based on the output of other commands, instead of typing fixed values manually.

## Concept

### Why Command Substitution Exists

Without command substitution, a User would need to run a command, manually copy its output, and paste it into another command. Command substitution removes this manual step by inserting the output directly.

### Modern Syntax: $(command)

The modern syntax wraps a command in `$(...)`.

```bash
echo "Today is $(date)"
```

The shell first runs `date`, then replaces `$(date)` with its output before running the final `echo` command.

### Legacy Syntax: Backticks

The legacy syntax wraps a command in backticks.

```bash
echo "Today is `date`"
```

This produces the same result as the modern syntax above.

### Why Modern Syntax Is Preferred

The `$(...)` syntax is generally preferred over backticks for several reasons:

- It can be nested directly without extra escaping.
- It is visually easier to distinguish from regular quotation marks.
- It is more consistent with other shell syntax that uses `$`.

Nesting with backticks requires escaping the inner backticks, which quickly becomes difficult to read:

```bash
echo `echo \`date\``
```

The same nested example using modern syntax remains clear:

```bash
echo $(echo $(date))
```

## Examples

Storing command output in a variable:

```bash
current_user=$(whoami)
echo "$current_user"
```

Using command substitution directly inside another command:

```bash
ls -l $(which bash)
```

Counting the number of files in the current Directory:

```bash
echo "File count: $(ls | wc -l)"
```

Using command substitution in a conditional check:

```bash
if [ "$(whoami)" = "root" ]; then
    echo "Running as root"
fi
```

## Common Pitfalls

- Mixing backticks and modern syntax in the same command, which reduces readability.
- Forgetting to quote a command substitution when its output may contain spaces, which can cause the shell to treat it as multiple arguments.
- Nesting backticks without properly escaping the inner ones.

:::tip

Prefer `$(command)` over backticks in new commands and scripts, especially when nesting is required.

:::
