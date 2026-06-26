---
title: apt
sidebar_label: apt
sidebar_position: 2
---

# apt

## Purpose

The `apt` command manages software packages on Debian and Ubuntu-based systems. It is used to install, remove, and update packages, as well as to refresh the system's knowledge of available package versions.

## Syntax

```bash
apt [command] [package]
```

Most `apt` commands that modify the system require administrative privileges.

## Important Options

```bash
apt update
```

Refreshes the local list of available packages and their versions by downloading the latest metadata from configured repositories. This does not install or upgrade any packages itself.

```bash
apt install nginx
```

Installs the specified package, along with any required dependencies.

```bash
apt remove nginx
```

Removes the specified package, while typically leaving its configuration files in place.

```bash
apt upgrade
```

Upgrades all currently installed packages to their latest available versions, based on the most recently refreshed package list.

## Examples

Refreshing the package list:

```bash
apt update
```

Installing a package:

```bash
apt install nginx
```

Removing a package:

```bash
apt remove nginx
```

Upgrading all installed packages:

```bash
apt upgrade
```

### Update vs Upgrade

`update` and `upgrade` are often confused, but they perform different tasks:

- `apt update` downloads the latest package metadata from configured repositories, refreshing the list of available versions. It does not change any installed software.
- `apt upgrade` installs newer versions of packages that are already installed, based on the metadata most recently downloaded by `update`.

Because of this relationship, `update` is typically run before `upgrade`, so that `upgrade` has access to the latest version information:

```bash
apt update
apt upgrade
```

If a specified package does not exist in any configured repository, `apt install` reports an error and does not install anything. If the package list is outdated, `apt install` may fail to find a package that has since become available, or may attempt to install an outdated version.

:::tip

Run `apt update` regularly, especially before installing new software, to ensure the package list reflects the most current versions available in the configured repositories.

:::

## Related Commands

- `apt-cache` – search for packages and view package metadata without installing anything.
- `package-managers-overview` – understand how `apt` fits among other package management approaches.
