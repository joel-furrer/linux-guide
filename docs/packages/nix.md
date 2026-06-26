---
title: Nix
sidebar_label: Nix
sidebar_position: 4
---

# Nix

## Overview

Nix is a package manager built around a declarative model, where the desired set of installed packages and their exact configuration is described explicitly, rather than installed through a sequence of imperative commands. This page introduces the philosophy behind Nix and how it differs from more traditional package managers such as `apt`.

## Why It Matters

Nix addresses problems that traditional package managers often struggle with, such as ensuring that an installation behaves identically across different machines, and allowing multiple versions of the same package to coexist without conflict. Understanding its underlying philosophy makes its sometimes unfamiliar commands and concepts easier to follow.

## Concept

### Declarative Package Management

With a declarative package manager, a User describes the desired outcome, such as which packages should be available, rather than issuing a sequence of commands to reach that outcome step by step. Nix then determines how to build a system that matches that description.

### Reproducibility

Reproducibility means that, given the same description, Nix can produce the same result on a different machine, or at a different point in time. This is achieved by precisely tracking the inputs used to build each package, including the exact versions of its dependencies, so that builds are not affected by unrelated changes elsewhere on the system.

### Isolation

Nix installs packages into a dedicated, isolated store, rather than placing files directly into shared system locations such as `/usr/bin`. This isolation allows multiple versions of the same package to exist on a system simultaneously without conflicting with each other, since each version is stored separately.

### Why Nix Is Different from APT

Traditional package managers such as `apt` typically install one version of a package into shared system locations, replacing the previous version when upgraded. Nix instead keeps each package version in its own isolated location, only linking the version currently in use into a User's environment. This makes it possible to roll back to a previous version easily, since older versions are not deleted simply because a newer one was installed.

### What nixpkgs Is

`nixpkgs` is the large collection of package definitions used by Nix. It contains the build instructions for a very large number of packages, similar in scope to the repositories used by traditional package managers, but expressed using Nix's declarative language.

## Examples

Installing a package using Nix:

```bash
nix-env -iA nixpkgs.hello
```

In this example, `nixpkgs.hello` refers to the `hello` package as defined within the `nixpkgs` collection. Nix builds or downloads the package as described in that definition and makes it available in the User's environment.

If the specified package does not exist within `nixpkgs`, the command reports an error rather than installing anything. If a package was already installed, running the same command again typically leaves the environment unchanged.

## Common Pitfalls

- Expecting Nix commands to behave like `apt` or `pacman`. The declarative, isolated model behind Nix leads to different behavior, even for seemingly similar actions such as installing a package.
- Assuming Nix immediately removes old package versions after an upgrade. Older versions often remain in the Nix store until explicitly cleaned up, which is part of how rollbacks remain possible.

:::note

This page introduces only the philosophy and basic usage of Nix. System-wide configuration through NixOS is covered separately on the `nixos-rebuild` page, and temporary development environments are covered on the `nix-shell` page.

:::
