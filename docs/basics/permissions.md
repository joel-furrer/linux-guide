---
title: Permissions
sidebar_label: Permissions
sidebar_position: 7
---

# Permissions

## Overview

Linux and Unix systems are designed to be used by multiple users at the same time, often on shared resources. File permissions are the mechanism that controls who can read, write, or execute a given file or directory. Every file and directory has an owner, an associated group, and a set of permission flags that determine what actions are allowed and by whom.

## Why It Matters

Permissions are one of the most fundamental security mechanisms on a Unix-like system. They determine:

- Whether a user can view the contents of a file.
- Whether a user can modify or delete a file.
- Whether a file can be executed as a program or script.
- Whether a user can list, create, or remove files inside a directory.

Misconfigured permissions are a common source of both security vulnerabilities (granting too much access) and operational problems (granting too little access, causing legitimate operations to fail). A solid understanding of permissions is essential for anyone administering a Linux system.

## Concept

### Permission Categories

Every file and directory has three categories of users that permissions apply to:

- **Owner**: The user who owns the file. By default, this is the user who created it.
- **Group**: A group of users associated with the file. Any user who is a member of this group is subject to the group permissions.
- **Others**: Every other user on the system who is not the owner and not a member of the file's group.

### Permission Types

For each of the three categories above, three types of permissions can be granted:

- **Read (r)**: Allows viewing the contents of a file, or listing the contents of a directory.
- **Write (w)**: Allows modifying or deleting a file, or creating and removing files inside a directory.
- **Execute (x)**: Allows running a file as a program or script, or entering ("traversing") a directory.

:::note

For directories, execute permission is required to access files inside the directory, even if read permission is granted. Without execute permission, the directory's contents can be listed but not accessed.

:::

### Viewing Permissions

Running `ls -l` on a file shows a string of ten characters representing its type and permissions, for example:

```
-rwxr-xr--
```

This string is broken down as follows:

| Position | Meaning |
|---|---|
| 1 | File type (`-` for a regular file, `d` for a directory, `l` for a symbolic link) |
| 2-4 | Owner permissions (read, write, execute) |
| 5-7 | Group permissions (read, write, execute) |
| 8-10 | Others permissions (read, write, execute) |

In the example above, the owner has full read, write, and execute access; the group has read and execute access; and others have only read access.

### Symbolic Notation

Symbolic notation expresses permissions using the letters `r`, `w`, and `x`, combined with the category letters `u` (user/owner), `g` (group), `o` (others), and `a` (all categories). Operators are used to add (`+`), remove (`-`), or set (`=`) permissions.

### Octal Notation

Octal notation expresses permissions as a three-digit number, where each digit represents the permissions for owner, group, and others, respectively. Each permission type has a fixed numeric value:

| Permission | Value |
|---|---|
| Read (r) | 4 |
| Write (w) | 2 |
| Execute (x) | 1 |

These values are added together to represent a combination of permissions. For example, read and write together (4 + 2) is represented as `6`, while read, write, and execute together (4 + 2 + 1) is represented as `7`.

A common permission set, `rwxr-xr--`, is written in octal as `754`:

- Owner: `7` (read + write + execute)
- Group: `5` (read + execute)
- Others: `4` (read only)

### Changing Ownership

Every file is associated with an owning user and an owning group. The user and group that own a file can be changed, which affects how the owner and group permission categories apply.

## Examples

### Changing Permissions with chmod (Symbolic Notation)

Add execute permission for the owner of a script:

```bash
chmod u+x script.sh
```

Remove write permission for the group and others:

```bash
chmod go-w file.txt
```

Set the exact permissions for all categories:

```bash
chmod u=rwx,g=rx,o=r file.txt
```

### Changing Permissions with chmod (Octal Notation)

Grant the owner full access, and read/execute access to the group and others:

```bash
chmod 755 script.sh
```

Restrict a sensitive file so that only the owner can read and write it:

```bash
chmod 600 secrets.conf
```

### Changing Ownership with chown

Change the owner of a file:

```bash
chown alice file.txt
```

Change both the owner and the group in a single command:

```bash
chown alice:developers file.txt
```

Change only the group, using `chgrp`:

```bash
chgrp developers file.txt
```

### Applying Changes Recursively

The `-R` option applies changes to a directory and all of its contents:

```bash
chmod -R 755 /opt/myapp
chown -R alice:developers /opt/myapp
```

:::warning

Using `chmod -R 777` is a common but risky shortcut, since it grants read, write, and execute permissions to every user on the system. Prefer the most restrictive permissions that still allow the system or application to function correctly.

:::

## Common Pitfalls

- **Granting 777 permissions to "fix" access issues**: This resolves the symptom but removes meaningful access control, exposing the file or directory to unintended changes by any user.
- **Forgetting execute permission on directories**: A directory with read but no execute permission will allow listing file names, but not accessing the files themselves.
- **Confusing the file owner with the file's group**: A user can be granted access through either the owner or group category; permissions only apply through the category that matches the requesting user.
- **Assuming chmod and chown require root**: Only the file owner (or root) can change a file's permissions, and only root can typically change a file's owner to another user.
