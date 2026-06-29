---
title: Files and Inodes
sidebar_label: Files and Inodes
sidebar_position: 2
---

# Files and Inodes

## Overview
An inode (index node) is a data structure that stores information about a file or a directory, excluding its name or its actualdata. Every file or directory has an associated inode containing metadata about the object, such as:
- File type (regular file, directory, symbolic link, etc.)
- Permissions (read, write, execute permissions for user, group, and others)
- Owner (user ID and group ID)
- Size of the file
- Timestamps (time of creation, modification, and last access)
- Link count (number of hard links pointing to the inode)
- Pointers to the actual data blocks on the storage device

:::note

It typically contains pointers to the data blocks where the actual file data is stored.

:::

Each inode has a unique identifier known as an inode number. This number is used by the filesystem to access the inode and its associated data. When a file is accessed, the operating system uses the inode number to locate the inode, which then provides the necessary information to access the file's data blocks.

Inodes play a crucial role in file identification and retrieval. Unlike some other filesystems (like FAT, which uses a file allocation table), Linux filesystems use inodes to store metadata and pointers to data blocks, allowing efficient and flexible file management.

## Why It Matters


Inodes, block sizes, and data structures are fundamental components of Linux filesystems. Understanding these concepts is crucial for managing and optimizing filesystems effectively. Inodes store metadata and pointers to data blocks, block sizes determine the granularity of data storage, and various data structures organize and manage data within the filesystem.

A solid understanding of filesystem concepts is essential for system administrators, developers, and anyone working with Linux. By mastering these concepts, you can ensure efficient and reliable data storage and retrieval, optimize performance, and effectively manage and protect your data.

## Example

Check the number of inodes on your system.
```
df -i
```
:::note

You can use this command on a specific filesystem:
`df -i /test/directory`

:::

Look at the inode number of a specific file.
```
ls -i <file_name>
```

