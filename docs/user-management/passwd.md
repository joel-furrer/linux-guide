---
title: passwd
sidebar_label: passwd
sidebar_position: 6
---

# passwd

## Purpose

The `passwd` command sets or changes the password for a User account. Every User typically needs a password configured before they can log in through standard authentication methods.

## Syntax

```bash
passwd [username]
```

If no username is given, `passwd` changes the password for the current User.

## Important Options

`passwd` is most commonly used without options, either to change the current User's own password or, with administrative privileges, the password of another User.

## Examples

Changing the password for the current User:

```bash
passwd
```

Changing the password for a specific User, which requires administrative privileges:

```bash
passwd username
```

### Password Storage Concept

When a password is set, the system does not store the password itself in plain, readable form. Instead, it stores a derived value produced by a one-way transformation, making it impractical to recover the original password directly from the stored value. This is a general security practice and is handled automatically by the system whenever `passwd` is used.

If the current User attempts to change their own password, they are typically required to enter their existing password first. If an administrator changes another User's password, this confirmation step is usually skipped.

If the specified User does not exist, `passwd` reports an error and makes no changes.

:::tip

Choose a unique, sufficiently long password for each account. Avoid reusing passwords across different systems or services.

:::

## Related Commands

- `useradd` – create a new User account, which typically needs a password set afterward.
- `usermod` – modify other properties of an existing User account.
