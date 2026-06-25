---
title: mount
sidebar_label: mount
sidebar_position: 13
---

# mount

## Purpose

The `mount` command attaches a file system, typically located on a storage device, to a specific Directory in the existing Directory tree. This allows the contents of that file system to be accessed through a normal path.

## Syntax

```bash
mount [device] [mount-point]
```

Running `mount` without any arguments displays a list of currently mounted file systems.

## Important Options

Most everyday usage of `mount` does not require additional options beyond specifying a device and a mount point. More advanced options exist for controlling file system type and mount behavior, but they are not required for basic usage.

## Examples

Before mounting a device, it helps to understand the underlying concept. On Linux and Unix systems, storage devices, such as a USB drive or an additional disk partition, are not automatically accessible as part of the Directory tree. A device must be mounted to a mount point, which is simply an existing Directory, before its contents become accessible through that path.

Listing currently mounted file systems:

```bash
mount
```

Mounting a device to a specific Directory:

```bash
mount /dev/sdb1 /mnt
```

In this example, `/dev/sdb1` represents a device or partition, and `/mnt` is the Directory that will serve as its mount point. After this command runs successfully, the contents of `/dev/sdb1` become accessible by browsing `/mnt`.

If the mount point Directory does not exist, or the device is invalid, `mount` reports an error and the file system is not attached. Mounting typically requires administrative privileges.

:::note

This page introduces only the basic concept and usage of `mount`. Advanced storage administration, such as configuring persistent mounts or working with different file system types, is outside the scope of this page.

:::

## Related Commands

- `du` – display disk usage for a Directory or file system.
- `mkdir` – create a Directory to use as a mount point.
