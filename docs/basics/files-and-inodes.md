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

## Concept
A standard Linux filesystem splits file management into two distinct, related layers:
1. By its path and filename (e.g., /home/user/document.txt). This is managed by the Directory Structure.
2. By its metadata and data blocks on the disk. This is managed by the Inode (Index Node).

**When you interact with a file, Linux performs a two-part operation:**
1. (The Directory): The directory acts as a simple lookup table. It maps the human-readable filename to a specific Inode Number.
2. (The Inode): It contains all the file's metadata (permissions, owner, file size, timestamps) and pointers to the actual data blocks on the storage drive where the content is written.

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
## Common Pitfalls

### Assuming File Deletion Frees Space Immediately
A common mistake is deleting a massive log file (using rm) and wondering why df -h still shows the disk is 100% full. If a running process (like a web server or database) still has that file open, the operating system keeps the file data on the disk until the process is terminated or restarted.

### Misunderstanding Hard Links vs. Symlinks Across Filesystems

Trying to create a hard link across different filesystems or partitions will result in an error. Hard links point directly to the underlying inode number, and inode numbers are only unique within the same filesystem.

:::note
Always use Symbolic Links (ln -s) when linking files across different mounts, drives, or partitions. Use df -h to check if your source and destination share the same filesystem.
:::

### Thinking mv Always Preserves the Inode Number

Moving a file (mv) within the same filesystem is instantaneous because it only updates the directory structure; the file data and its inode number stay exactly the same. However, if you move a file across different filesystems, Linux must silently copy the data and delete the original. This assigns a brand-new inode number to the file on the destination drive, which can break scripts relying on tracking specific inodes.


