---
title: Package Managers Overview
sidebar_label: Overview
sidebar_position: 1
---

# Package Managers Overview

## Overview

A package manager is a tool that installs, updates, configures, and removes software packages on a system. Instead of manually downloading, compiling, and placing files in the correct locations, a User relies on a package manager to handle these steps automatically, while also tracking dependencies between packages.

This page introduces the general concept of package management and the major categories of package managers found across Linux and Unix systems. It does not cover the detailed usage of any single tool, since those are addressed on dedicated pages elsewhere in this section.

## Why It Matters

Nearly all software installation, removal, and updating on a Linux or Unix system happens through some form of package manager. Understanding the different categories of package managers, and why they exist, makes it easier to understand why different distributions and tools behave so differently when it comes to installing software.

## Concept

### Why Package Managers Exist

Installing software by hand requires finding the correct source code or binary, satisfying any dependencies it requires, placing files in the right locations, and keeping track of what was installed in case it needs to be removed or updated later. Package managers automate this process and keep a record of installed packages, making installation, removal, and upgrades far more reliable.

### Dependency Management

Most Programs depend on other Programs or libraries to function correctly. A package manager tracks these dependencies, automatically installing anything a package requires, and warns or prevents the removal of a package that other installed packages still depend on.

### Build vs Binary Distribution

Packages can be distributed in two general forms:

- A binary package contains a Program that has already been compiled and is ready to run. Installation is fast, since no compilation step is required.
- A source-based package contains the original source code, which must be compiled on the User's own system before it can run. This takes longer but allows compilation settings to be tailored to the specific system.

### System-Wide vs User-Level Installation

Some package managers install software system-wide, making it available to every User on the system, often requiring administrative privileges. Others support user-level installation, where software is installed only for a specific User, without requiring elevated privileges and without affecting other accounts.

### Categories of Package Managers

#### 1. Binary Package Managers

Binary package managers install precompiled software. They are the most common type found on mainstream Linux distributions.

- `apt`: used on Debian and Ubuntu, managing `.deb` packages.
- `pacman`: used on Arch Linux, managing precompiled packages with a simple, fast workflow.

#### 2. Source-Based Systems

Source-based systems compile software from source code on the User's own machine, rather than distributing precompiled binaries.

- `emerge`: the package management tool used by Gentoo Linux, which compiles most packages from source according to settings defined by the User.

#### 3. Declarative Systems

Declarative package managers describe the desired state of a system in configuration files, rather than tracking a sequence of installation commands.

- Nix and NixOS use a declarative model, where package installations and even entire system configurations are described in files and then built to match that description, supporting strong reproducibility guarantees.

#### 4. Universal Packages

Universal package formats aim to provide a single package format that works across many different Linux distributions, independent of each distribution's own package manager.

- Flatpak: distributes applications in an isolated, sandboxed format usable across many distributions.
- AppImage: packages an application together with its dependencies into a single file that can typically be run directly, without installation.
- Snap: a similar universal packaging system, mentioned here briefly, that packages applications with their dependencies for use across multiple distributions.

#### 5. Language-Specific Ecosystems

In addition to system-level package managers, many programming languages provide their own package managers for installing libraries and tools used in development.

- `pip`: installs Python packages.
- `npm`: installs Node.js packages.
- `cargo`: installs Rust packages and manages Rust projects.

These language-specific tools generally operate independently of the system's package manager, focusing on packages relevant to a specific programming language ecosystem.

### A Brief Historical Note

Early Linux systems often required Users to compile software from source code manually. Binary distributions, such as those using `.deb` or `.rpm` packages, later simplified this by distributing precompiled software along with dependency tracking. More recently, declarative systems such as Nix have introduced stronger reproducibility guarantees, aiming to ensure that a given configuration produces the same result regardless of when or where it is built.

## Examples

Installing a package using a binary package manager:

```bash
apt install nginx
```

Installing a package using a source-based system:

```bash
emerge www-servers/nginx
```

Installing a package using a declarative package manager:

```bash
nix-env -iA nixpkgs.hello
```

Running an application distributed as a universal package:

```bash
flatpak run org.example.App
```

### Comparing Approaches

- `apt` vs `pacman`: both are binary package managers, but they manage different package formats and repositories, and are tied to different distributions, Debian/Ubuntu and Arch Linux respectively.
- Source vs binary: source-based systems such as Gentoo's `emerge` offer more customization at the cost of longer installation times, while binary systems such as `apt` prioritize speed and convenience.
- System-wide vs user-space: traditional package managers usually install software system-wide, while tools such as Nix and Flatpak can support more isolated, user-level installations.
- Reproducibility vs flexibility: declarative systems such as Nix prioritize consistent, reproducible results, while traditional binary package managers prioritize simplicity and broad compatibility, sometimes at the cost of strict reproducibility.

## Common Pitfalls

- Assuming all package managers behave the same way. Commands, package names, and behavior can differ significantly between systems such as `apt` and `pacman`.
- Mixing installation methods, such as installing the same software through both the system package manager and a language-specific tool, which can lead to confusing duplicate installations.
- Expecting source-based systems to install as quickly as binary systems, without accounting for compilation time.

:::note

This page provides only a high-level overview. Detailed usage of `apt`, Nix, and related tools is covered on their own dedicated pages in this section.

:::
