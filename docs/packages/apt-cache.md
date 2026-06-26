---
title: apt-cache
sidebar_label: apt-cache
sidebar_position: 3
---

# apt-cache

## Purpose

The `apt-cache` command queries the local package metadata cache, allowing a User to search for packages and view detailed information about them without installing anything or modifying the system.

## Syntax

```bash
apt-cache [command] [package]
```

## Important Options

```bash
apt-cache search nginx
```

Searches package names and descriptions for the given term, returning a list of matching packages.

```bash
apt-cache show nginx
```

Displays detailed metadata about a specific package, such as its version, dependencies, and description.

## Examples

Searching for packages related to a keyword:

```bash
apt-cache search nginx
```

Typical output:

```bash
nginx - small, powerful, scalable web/proxy server
nginx-common - small, powerful, scalable web/proxy server - common files
```

Viewing detailed metadata for a specific package:

```bash
apt-cache show nginx
```

Typical output includes fields such as the package version, maintainer, dependencies, and a longer description.

### Querying Repository Information

`apt-cache` reads from the same local metadata that `apt update` refreshes, but it only reads and displays information rather than installing or removing anything. This makes it a safe way to explore available packages before deciding to install one with `apt install`.

If no packages match the search term, `apt-cache search` produces no output rather than an error. If the specified package name does not exist in the local metadata, `apt-cache show` reports that no package was found.

:::note

`apt-cache` relies on the local package metadata, which is refreshed using `apt update`. If the metadata is outdated, search results may not reflect the most recently published packages.

:::

## Related Commands

- `apt` – install, remove, and upgrade packages based on information available through `apt-cache`.
- `package-managers-overview` – understand how `apt-cache` fits among other package management tools.
