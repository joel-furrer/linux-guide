---
title: id
sidebar_label: id
sidebar_position: 10
---

# id

## Purpose

The `id` command displays identity information about a User, including their UID, Group memberships, and corresponding GIDs. It provides more detail than `whoami`, which only reports the username.

## Syntax

```bash
id [username]
```

If no username is given, `id` displays information about the current User.

## Important Options

`id` is most commonly used without options, simply specifying a username or leaving it blank to refer to the current User.

## Examples

Displaying identity information for the current User:

```bash
id
```

Typical output:

```bash
uid=1000(alice) gid=1000(alice) groups=1000(alice),27(sudo)
```

Displaying identity information for a specific User:

```bash
id username
```

### Understanding UID and GID

A UID, or User ID, is the numeric identifier that uniquely represents a User account on the system. A GID, or Group ID, is the numeric identifier that represents a Group. The output of `id` shows both the primary UID and GID, along with any additional groups the User belongs to.

In the example output above, `alice` has UID `1000`, belongs to a primary Group also named `alice` with GID `1000`, and is additionally a member of the `sudo` Group.

If the specified username does not exist, `id` reports an error and exits with a non-zero status instead of producing identity information.

:::tip

Use `id` instead of `whoami` when Group membership information is needed, since `whoami` only reports the username.

:::

## Related Commands

- `whoami` – display only the current username.
- `usermod` – modify a User's Group memberships.
- `groupadd` – create a new Group.
