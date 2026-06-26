---
title: chown
sidebar_label: chown
sidebar_position: 3
---

# chown

## Purpose

The `chown` command changes the owner and Group associated with a file or Directory. Ownership determines which User and Group are recorded as responsible for the file, separately from the permissions that control what actions are allowed.

## Syntax

```bash
chown [options] owner[:group] file...
```

Running `chown` to change ownership to a different User typically requires administrative privileges.

## Important Options

```bash
chown user file.txt
```

Changes only the owner of the file, leaving the Group unchanged.

```bash
chown user:group file.txt
```

Changes both the owner and the Group of the file in a single command.

```bash
chown -R user:group dir/
```

Changes ownership recursively, applying the change to a Directory and all of its contents.

## Examples

Changing the owner of a file:

```bash
chown alice file.txt
```

Changing both the owner and Group of a file:

```bash
chown alice:developers file.txt
```

Changing ownership recursively for an entire Directory:

```bash
chown -R alice:developers project/
```

### Permissions vs Ownership

Ownership and permissions are related but distinct concepts. Ownership, managed by `chown`, identifies which User and Group are associated with a file. Permissions, managed by `chmod`, determine what the owner, Group, and others are allowed to do with the file, such as reading or writing to it.

Changing ownership with `chown` does not alter the permission bits themselves. A file can be transferred to a new owner while keeping the exact same read, write, and execute settings.

If the specified User or Group does not exist, `chown` reports an error. If the current User lacks sufficient privileges to change ownership, `chown` also reports an error and makes no changes.

:::warning

Changing ownership of system files to an incorrect User can prevent essential processes from accessing files they need, potentially affecting system stability. Be cautious when using `chown -R` on directories outside of personal project folders.

:::

## Related Commands

- `chmod` – change the permissions of a file.
- `usermod` – modify Group memberships for a User.
