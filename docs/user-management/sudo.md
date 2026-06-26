---
title: sudo
sidebar_label: sudo
sidebar_position: 1
---

# sudo

## Purpose

The `sudo` command runs a single command with elevated privileges, typically as the root User. This allows a User who is authorized to do so to perform administrative actions without permanently switching accounts.

## Syntax

```bash
sudo [options] command
```

The User running `sudo` must be authorized in the system's configuration, and is usually prompted for their own password before the command is allowed to run.

## Important Options

```bash
sudo command
```

Runs the specified command with elevated privileges, returning to the normal User's shell once the command finishes.

```bash
sudo -i
```

Starts an interactive login shell as the target User, usually root, rather than running a single command and returning immediately.

## Examples

Running a single command with elevated privileges:

```bash
sudo apt update
```

Starting an interactive root shell:

```bash
sudo -i
```

### Privilege Escalation Concept

Privilege escalation refers to temporarily gaining higher-level access than a normal User account has by default. `sudo` provides a controlled way to do this, allowing specific Users to run specific commands as root, based on rules defined by a system administrator, rather than requiring every User to have full administrative access at all times.

If the User is not authorized to use `sudo`, the command is refused and the attempt may be logged. If the User enters an incorrect password, `sudo` denies the request and does not run the command.

:::danger

Commands run with `sudo` have the ability to modify or damage any part of the system, since they run with elevated privileges. Always verify a command carefully before running it with `sudo`, since mistakes can affect the entire system rather than just the current User's files.

:::

## Related Commands

- `sudoedit` – safely edit a file with elevated privileges, without running an entire editor session as root.
- `passwd` – change a User's password, which is required to authenticate with `sudo`.
