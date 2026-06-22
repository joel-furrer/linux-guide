---
title: Links
sidebar_label: Links
sidebar_position: 8
---

# Links
## Overview
 
In Linux and Unix systems, a link is a reference that allows a file to be accessed from more than one location in the directory structure without duplicating its actual content. Links are a core feature of how the file system organizes and shares access to data.
 
There are two types of links:
 
- **Symbolic links** (also called symlinks): pointers to the path of another file or directory.
- **Hard links**: additional directory entries that point directly to the same underlying data on disk.
Understanding the difference between these two is essential for managing files safely and efficiently.
 
## Why It Matters
 
Links are used constantly in everyday system administration and development work. They allow you to:
 
- Reference the same file from multiple locations without copying it.
- Maintain backward compatibility when a program or library is renamed or moved.
- Organize configuration files, such as linking an active configuration into `/etc`.
- Save disk space, since a hard link does not create a second copy of the file's data.
Without a clear understanding of how links work, it is easy to accidentally break references, lose track of which file is "the real one," or fill up disk space with unnecessary duplicates.
 
## Concept
 
### What a Link Is
 
Every file on a Unix-like file system is represented internally by an **inode**, which stores metadata about the file (permissions, owner, size, timestamps, and pointers to the actual data blocks). A directory entry is simply a name that points to an inode.
 
A link is an additional directory entry that points to existing data, rather than a copy of that data.
 
### Hard Links
 
A hard link is a second (or third, or fourth) directory entry that points to the **same inode** as the original file. This means:
 
- The original file and the hard link are indistinguishable from each other; there is no concept of an "original" once the link is created.
- Both names share the same inode number, permissions, and data.
- Changes made through one name are immediately visible through the other, because they refer to the same underlying data.
- The data is only removed from disk when the last hard link to it is deleted.
Hard links have important limitations:
 
- They cannot span across different file systems or partitions, since inode numbers are only unique within a single file system.
- They cannot generally be created for directories, to avoid creating loops in the directory structure.
### Symbolic Links
 
A symbolic link (symlink) is a special type of file that does not point to an inode directly. Instead, it stores the **path** of another file or directory as its content.
 
Key characteristics of symbolic links:
 
- They can point to files or directories on a different file system or partition.
- They can point to a target that does not exist (this is called a "broken" or "dangling" link).
- They have their own inode, separate from the inode of the file they point to.
- If the target is deleted, the symlink remains but no longer resolves to valid data.
### Hard Links vs. Symbolic Links
 
| Characteristic | Hard Link | Symbolic Link |
|---|---|---|
| Points to | Same inode as original | Path of another file |
| Crosses file systems | No | Yes |
| Can link to directories | No (restricted) | Yes |
| Can become "broken" | No | Yes |
| Distinguishable from original | No | Yes (it is a separate file) |
 
:::tip

If you are unsure which type of link to use, a symbolic link is usually the safer and more flexible choice, especially when linking across directories or file systems.

:::
 
## Examples
 
### Creating a Symbolic Link
 
The `ln` command is used to create links. The `-s` option creates a symbolic link:
 
```bash
ln -s /path/to/original/file.txt /path/to/link.txt
```
 
For example, linking a script into a directory that is included in the system's executable search path:
 
```bash
ln -s /opt/myapp/bin/myapp.sh /usr/local/bin/myapp
```
 
### Creating a Hard Link
 
To create a hard link, run `ln` without the `-s` option:
 
```bash
ln /path/to/original/file.txt /path/to/hardlink.txt
```
 
### Viewing Link Information
 
The `ls -l` command displays useful information about links. A symbolic link is shown with a leading `l` in the permissions field, and an arrow indicating its target:
 
```bash
ls -l /usr/local/bin/myapp
```
 
Example output:
 
```
lrwxrwxrwx 1 root root 25 Jun 20 10:15 /usr/local/bin/myapp -> /opt/myapp/bin/myapp.sh
```
 
To see how many hard links point to a file, check the link count column from `ls -l`:
 
```bash
ls -l file.txt
```
 
Example output:
 
```
-rw-r--r-- 2 user user 1024 Jun 20 10:15 file.txt
```
 
In this output, the number `2` indicates that the file's inode currently has two hard links pointing to it.
 
### Inspecting Inode Numbers
 
The `-i` option of `ls` displays the inode number of each file. Files sharing the same inode number are hard links to the same data:
 
```bash
ls -li file.txt hardlink.txt
```
 
### Removing a Link
 
Both symbolic links and hard links are removed with `rm`, just like a regular file:
 
```bash
rm link.txt
```
 
:::warning

Removing a hard link only removes that directory entry. The underlying data is only deleted once every hard link pointing to it has been removed.

:::
 
## Common Pitfalls
 
- **Confusing symlinks with copies**: A symbolic link is not a copy of a file. If the target is moved or deleted, the symlink stops working.
- **Using relative paths carelessly**: Symbolic links can use relative paths, which are interpreted relative to the link's own location, not the current working directory. This can cause broken links if the link or its target is moved.
- **Assuming hard links work everywhere**: Hard links cannot be created across different file systems and are generally not allowed for directories.
- **Forgetting trailing slashes when linking directories**: When creating a symbolic link to a directory, omit the trailing slash on the target to avoid unexpected path resolution issues.
- **Deleting the wrong hard link expecting data loss**: Since hard links are indistinguishable from the original file, deleting one will not delete the data as long as another hard link still references it.
 

