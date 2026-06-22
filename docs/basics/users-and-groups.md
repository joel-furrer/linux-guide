---
title: Users and Groups
sidebar_label: Users and Groups
sidebar_position: 6
---

# Users and Groups

## Overview

Linux and Unix systems are built around the concept of multiple users sharing a single machine securely. Each user is identified internally by a numeric identifier, and users can be organized into groups to simplify the management of shared access. This system of users and groups underlies file ownership, permissions, and process ownership across the entire operating system.

## Why It Matters

Understanding users and groups is essential for:

- Controlling who can access specific files, directories, and resources.
- Managing permissions efficiently for teams of users, rather than configuring access one user at a time.
- Diagnosing permission-related issues, such as a process being unable to read or write a file.
- Safely administering a multi-user system, including servers that may host many user accounts.

## Concept

### Users and UIDs

A user is an account identified by a UID (User Identifier), a unique numeric value assigned to that account. While usernames are used for human readability, the operating system identifies users internally by their UID.

Some UID ranges have conventional meanings:

- **UID 0**: Reserved for the root user, which has unrestricted access to the system.
- **System UIDs** (typically below 1000): Reserved for system accounts and services, which often do not correspond to a real person.
- **Regular user UIDs** (typically 1000 and above): Assigned to human user accounts created on the system.

:::note

Exact UID ranges can vary between distributions, but the general pattern of reserving low UIDs for the root user and system accounts is consistent across most Linux systems.

:::

### Groups and GIDs

A group is a collection of users that share a common set of permissions. Like users, groups are identified internally by a numeric GID (Group Identifier).

Every user has:

- A **primary group**, which is the default group associated with files the user creates.
- Zero or more **secondary groups**, which grant additional access without changing the user's primary group.

### The /etc/passwd File

User account information is stored in the `/etc/passwd` file. Each line represents one user account and contains seven colon-separated fields:

```
username:password:UID:GID:comment:home_directory:shell
```

For example:

```
alice:x:1001:1001:Alice Smith:/home/alice:/bin/bash
```

| Field | Meaning |
|---|---|
| `username` | The login name |
| `password` | Historically the password hash; now typically `x`, with the real hash stored in `/etc/shadow` |
| `UID` | The user's numeric identifier |
| `GID` | The user's primary group identifier |
| `comment` | A free-text field, often the user's full name |
| `home_directory` | The path to the user's home directory |
| `shell` | The default shell launched when the user logs in |

:::warning

The actual password hashes are stored in `/etc/shadow`, not in `/etc/passwd`. The `/etc/shadow` file is restricted to the root user, since it contains sensitive authentication data.

:::

### The /etc/group File

Group information is stored in the `/etc/group` file. Each line represents one group and contains four colon-separated fields:

```
group_name:password:GID:member_list
```

For example:

```
developers:x:1002:alice,bob
```

| Field | Meaning |
|---|---|
| `group_name` | The name of the group |
| `password` | Rarely used in modern systems |
| `GID` | The group's numeric identifier |
| `member_list` | A comma-separated list of usernames that belong to this group as a secondary group |

## Examples

### Viewing the Current User

Display the username of the currently logged-in user:

```bash
whoami
```

Display detailed identity information, including UID, GID, and group memberships:

```bash
id
```

Example output:

```
uid=1001(alice) gid=1001(alice) groups=1001(alice),1002(developers)
```

### Inspecting /etc/passwd and /etc/group

View the entry for a specific user:

```bash
grep alice /etc/passwd
```

View the members of a specific group:

```bash
grep developers /etc/group
```

### Creating a New User

Create a new user account along with a home directory:

```bash
sudo useradd -m bob
```

Set or change the password for that user:

```bash
sudo passwd bob
```

### Creating a New Group

Create a new group:

```bash
sudo groupadd developers
```

### Adding a User to a Group

Add an existing user to a secondary group:

```bash
sudo usermod -aG developers alice
```

:::tip

The `-aG` option appends the user to the specified group without removing them from any of their existing secondary groups. Omitting `-a` and using only `-G` would replace the user's secondary group memberships entirely.

:::

### Removing a User

Remove a user account, optionally along with their home directory:

```bash
sudo userdel -r bob
```

## Common Pitfalls

- **Using userdel without -r unintentionally**: Removing a user without `-r` leaves their home directory and files behind, which may be intended for data preservation but can also lead to orphaned files.
- **Confusing primary and secondary groups**: A user's primary group determines the default group ownership of new files, while secondary groups only grant additional access without changing that default.
- **Editing /etc/passwd or /etc/group directly**: Manual edits can corrupt the file format or create inconsistencies. Dedicated tools such as `useradd`, `usermod`, and `groupadd` are safer and less error-prone.
- **Forgetting to apply group changes**: A user may need to log out and log back in (or start a new shell session) before newly added group memberships take effect.
