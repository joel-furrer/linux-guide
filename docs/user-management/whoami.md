---
title: whoami
sidebar_label: whoami
sidebar_position: 11
---

# whoami

## Purpose

The `whoami` command prints the username of the currently logged-in User. It is a quick way to confirm which account is active in the current shell session.

## Syntax

```bash
whoami
```

`whoami` does not take a target argument. It always reports the identity associated with the current session.

## Important Options

`whoami` is typically used without any options, since its only purpose is to display the current User's name.

## Examples

Displaying the current User:

```bash
whoami
```

Typical output:

```bash
alice
```

### Effective User

When a command is run normally, the current User and the effective User are the same. However, when a command is run through `sudo`, the effective User changes to the target account, usually root, for the duration of that command.

```bash
sudo whoami
```

Typical output:

```bash
root
```

This happens because `sudo` temporarily changes the effective User for the command it runs, even though the User who typed the command has not changed.

If `whoami` cannot determine the current User, which is rare, it reports an error instead of printing a name.

:::note

`whoami` reports the effective User, not necessarily the User who originally logged in. This distinction becomes visible when using `sudo`.

:::

## Related Commands

- `id` – display detailed User and Group ID information.
- `sudo` – run a command as another User.
