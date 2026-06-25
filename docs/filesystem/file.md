---
title: file
sidebar_label: file
sidebar_position: 10
---

# file

## Purpose

The `file` command identifies the actual type of a file by examining its content, rather than relying on its name or extension. This is useful because a file's extension does not always reflect its true type.

## Syntax

```bash
file [options] file...
```

## Important Options

`file` is most commonly used without options. Its default behavior of examining file content is sufficient for most everyday use cases.

## Examples

Checking the type of an image file:

```bash
file image.png
```

Typical output:

```bash
image.png: PNG image data, 800 x 600, 8-bit/color RGB, non-interlaced
```

Checking the type of a script file:

```bash
file script.sh
```

Typical output:

```bash
script.sh: Bourne-Again shell script, ASCII text executable
```

Checking the type of a file with no extension:

```bash
file mystery-file
```

A file's extension, such as `.png` or `.sh`, is simply part of its name and does not guarantee its actual content. A file named `data.txt` could, for example, actually contain binary image data. The `file` command examines the file's content directly to determine its real type.

If the specified file does not exist, `file` reports an error. If the file exists but its type cannot be determined, `file` typically reports it as generic data.

:::note

File extensions are a naming convention used for convenience, but they are not enforced by the file system. The `file` command provides a more reliable way to determine a file's actual type.

:::

## Related Commands

- `stat` – display detailed metadata for a file.
- `ls` – list Directory contents.
