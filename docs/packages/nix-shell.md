---
title: nix-shell
sidebar_label: nix-shell
sidebar_position: 6
---

# nix-shell

## Purpose

The `nix-shell` command creates a temporary shell environment with specific packages available, without installing those packages globally on the system. It is commonly used to set up isolated development environments for a specific project or task.

## Syntax

```bash
nix-shell [options]
```

## Important Options

```bash
nix-shell -p git
```

Starts a temporary shell with the specified package, in this case `git`, made available only within that shell session.

```bash
nix-shell
```

Starts a temporary shell using a configuration file, typically named `shell.nix`, found in the current Directory, which describes the packages and environment needed for a project.

## Examples

Starting a temporary shell with a specific package available:

```bash
nix-shell -p git
```

Starting a temporary shell based on a project's configuration file:

```bash
nix-shell
```

### Difference from Global Installation

Installing a package globally, such as with `nix-env -iA nixpkgs.git`, makes that package available in every shell session for the current User, until it is explicitly removed. `nix-shell`, by contrast, makes a package available only within the temporary shell session it creates. Once that shell session is exited, the package is no longer available in the normal environment.

```bash
nix-shell -p git
git --version
exit
```

After running `exit`, the temporary shell ends, and `git` is no longer available unless it was already installed through another means.

### Isolated Development Environments

This temporary, isolated approach is particularly useful for development work, since different projects can each define their own `shell.nix` file specifying exactly which tools and versions they require, without those requirements interfering with each other or with the rest of the system.

If a specified package does not exist within `nixpkgs`, `nix-shell -p` reports an error and does not start the shell. If no `shell.nix` file is found in the current Directory, running `nix-shell` without arguments reports an error.

:::tip

Use `nix-shell` when only a temporary tool or dependency is needed for a single task, rather than installing it permanently with `nix-env`.

:::

## Related Commands

- `nix` – understand the broader philosophy of declarative, reproducible package management.
- `nixos-rebuild` – apply a persistent, system-wide configuration on NixOS.
