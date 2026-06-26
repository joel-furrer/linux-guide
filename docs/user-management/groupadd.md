---
title: groupadd
sidebar_label: groupadd
sidebar_position: 7
---

# groupadd

## Purpose

The `groupadd` command creates a new Group on the system. A Group is a collection of Users used for permission management, allowing multiple accounts to share access to files and resources without managing permissions for each User individually.

## Syntax

```bash
groupadd [options] groupname
```

Running `groupadd` typically requires administrative privileges.

## Important Options

`groupadd` is most commonly used without additional options, simply specifying the name of the new Group.

## Examples

Creating a new Group:

```bash
groupadd developers
```

After this command, a Group named `developers` exists on the system, but no Users are members of it yet. Users can be added to the Group afterward using `usermod`.

```bash
groupadd developers
usermod -aG developers alice
```

If a Group with the specified name already exists, `groupadd` reports an error and does not create a duplicate. If the command is run without sufficient privileges, it also reports an error.

:::note

Creating a Group with `groupadd` does not add any Users to it. Use `usermod -aG` to add existing Users to the new Group.

:::

## Related Commands

- `usermod` – add a User to an existing Group.
- `id` – view the Groups a User belongs to.
- `useradd` – create a new User account.
