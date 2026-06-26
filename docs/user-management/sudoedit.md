---
title: sudoedit
sidebar_label: sudoedit
sidebar_position: 2
---

# sudoedit

## Purpose

The `sudoedit` command allows a User to edit a file that requires elevated privileges, without running an entire text editor session as root. It copies the file to a temporary location, lets the User edit it with their normal editor, and then copies the changes back with the appropriate privileges.

## Syntax

```bash
sudoedit file
```

## Important Options

`sudoedit` is most commonly used without additional options, simply specifying the file to be edited.

## Examples

Editing a system configuration file that requires elevated privileges:

```bash
sudoedit /etc/hosts
```

### Difference from sudo with an Editor

Running an editor directly through `sudo` starts the entire editor Process with root privileges:

```bash
sudo nano /etc/hosts
```

This means the editor itself, including any plugins or extensions it loads, runs with elevated privileges for the entire editing session.

`sudoedit` takes a different approach. It copies the target file to a temporary location owned by the current User, opens the User's normal editor on that temporary copy with normal privileges, and only uses elevated privileges briefly to copy the finished result back to the original location.

```bash
sudoedit /etc/hosts
```

This reduces the amount of time and code running with elevated privileges, which is generally considered a safer approach than running an entire editor as root.

If the specified file does not exist, `sudoedit` may create a new empty file at that location, provided the User has the appropriate privileges to do so through the system's configuration. If the User is not authorized, the request is denied.

:::tip

Prefer `sudoedit` over `sudo` combined with an editor when only the contents of a file need to change, since it limits the amount of work performed with elevated privileges.

:::

## Related Commands

- `sudo` – run an entire command, including an editor, with elevated privileges.
- `chmod` – change the permissions of a file after editing.
