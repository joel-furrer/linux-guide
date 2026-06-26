---
title: usermod
sidebar_label: usermod
sidebar_position: 9
---

# usermod

## Purpose

The `usermod` command modifies an existing User account, such as changing Group memberships, renaming the account, or adjusting other account settings. Unlike `useradd`, which creates a new account, `usermod` only changes accounts that already exist.

## Syntax

```bash
usermod [options] username
```

Running `usermod` typically requires administrative privileges.

## Important Options

```bash
usermod -aG group user
```

Adds the specified User to an additional Group, without removing them from any Groups they already belong to.

```bash
usermod -l newname oldname
```

Renames an existing User account from `oldname` to `newname`.

## Examples

Adding a User to an additional Group:

```bash
usermod -aG developers alice
```

After this command, `alice` retains her existing Group memberships and is also a member of `developers`.

Renaming a User account:

```bash
usermod -l newalice alice
```

### Groups and Home Directory Changes

`usermod` can also be used to change other account properties, such as the User's home Directory, although such changes typically require additional steps to move existing files to the new location.

If the specified User does not exist, `usermod` reports an error and makes no changes. If the specified Group in a `-aG` operation does not exist, `usermod` also reports an error.

:::warning

Using `-G` without `-a` replaces all of a User's existing Group memberships with only the Groups listed in the command. Always include `-a` when the intent is to add a Group without removing existing ones.

:::

## Related Commands

- `useradd` – create a new User account.
- `groupadd` – create a new Group.
- `id` – view a User's current Group memberships.
