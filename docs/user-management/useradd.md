---
title: useradd
sidebar_label: useradd
sidebar_position: 8
---

# useradd

## Purpose

The `useradd` command creates a new User account on the system. Creating a User establishes a new UID and, depending on the options used, related settings such as a home Directory and a default shell.

## Syntax

```bash
useradd [options] username
```

Running `useradd` typically requires administrative privileges.

## Important Options

```bash
useradd -m
```

Creates a home Directory for the new User, typically located at `/home/username`, along with default configuration files copied from a system template.

## Examples

Creating a new User without a home Directory:

```bash
useradd username
```

Creating a new User along with a home Directory:

```bash
useradd -m username
```

### What Happens When a User Is Created

Running `useradd` adds a new entry to the system's User database, assigning the new account a UID and a primary Group. By default, depending on the system's configuration, `useradd` may not create a home Directory automatically, which is why `-m` is commonly included.

After creation, the new User typically has no password set, meaning the account cannot be used to log in until a password is configured with `passwd`.

```bash
useradd -m newuser
passwd newuser
```

If a User with the specified name already exists, `useradd` reports an error and does not modify the existing account. If the command is run without sufficient privileges, it also reports an error and creates no account.

:::warning

A newly created User generally has no usable password until one is set explicitly with `passwd`. Without a password, the account may be unable to log in through normal authentication methods.

:::

## Related Commands

- `usermod` – modify an existing User account.
- `passwd` – set or change a User's password.
- `groupadd` – create a new Group.
