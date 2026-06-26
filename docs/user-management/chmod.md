---
title: chmod
sidebar_label: chmod
sidebar_position: 4
---

# chmod

## Purpose

The `chmod` command changes the permissions of a file or Directory, controlling who can read, write, or execute it. Permissions determine what actions are allowed on a file, separately from who owns it.

## Syntax

```bash
chmod [options] mode file...
```

## Important Options

```bash
chmod 644 file.txt
```

Sets permissions using numeric mode, where each digit represents read, write, and execute permissions for the owner, Group, and others.

```bash
chmod +x script.sh
```

Adds execute permission using symbolic mode, without changing other existing permissions.

```bash
chmod u+rwx file.txt
```

Adds read, write, and execute permissions specifically for the owner, using symbolic mode.

## Examples

Setting permissions so the owner can read and write, while everyone else can only read:

```bash
chmod 644 file.txt
```

Making a script executable:

```bash
chmod +x script.sh
```

Granting the owner full read, write, and execute permissions explicitly:

```bash
chmod u+rwx file.txt
```

### Understanding Permission Structure

File permissions are divided into three categories: the owner, the Group, and others. Each category can have three types of permission: read, write, and execute.

In numeric mode, each permission type is represented by a value: read is `4`, write is `2`, and execute is `1`. These values are added together to represent a category's permissions. For example, `6` (4 + 2) means read and write, while `7` (4 + 2 + 1) means read, write, and execute.

A mode such as `644` breaks down as follows:

- `6` for the owner: read and write.
- `4` for the Group: read only.
- `4` for others: read only.

Symbolic mode instead uses letters: `u` for the owner (user), `g` for Group, `o` for others, and `a` for all three. The `+` and `-` symbols add or remove specific permissions, such as `r`, `w`, or `x`, without affecting the rest.

If the specified file does not exist, `chmod` reports an error. If the User does not own the file and lacks sufficient privileges, `chmod` also reports an error and makes no changes.

:::warning

`chmod` changes only permissions, not ownership. Setting overly permissive modes, such as `777`, allows any User on the system to read, write, and execute the file, which can introduce security risks.

:::

## Related Commands

- `chown` – change the owner and Group of a file.
- `umask` – set the default permissions applied to newly created files.
