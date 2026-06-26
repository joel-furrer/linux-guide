---
title: nixos-rebuild
sidebar_label: nixos-rebuild
sidebar_position: 5
---

# nixos-rebuild

## Purpose

The `nixos-rebuild` command applies a declarative system configuration on a NixOS system, building a new system generation based on the current configuration files and switching the running system to use it.

## Syntax

```bash
nixos-rebuild [command]
```

Most `nixos-rebuild` commands that modify the running system require administrative privileges.

## Important Options

```bash
nixos-rebuild switch
```

Builds the new configuration and immediately switches the running system to use it, also setting it as the default for future boots.

```bash
nixos-rebuild test
```

Builds the new configuration and switches to it temporarily, without setting it as the default for future boots. If the system is rebooted, it returns to the previous configuration.

```bash
nixos-rebuild boot
```

Builds the new configuration and sets it as the default for the next boot, without switching the currently running system to use it immediately.

## Examples

Applying a configuration and switching to it immediately:

```bash
nixos-rebuild switch
```

Testing a configuration temporarily, without making it permanent:

```bash
nixos-rebuild test
```

Preparing a configuration for the next boot, without affecting the current session:

```bash
nixos-rebuild boot
```

### Declarative System Configuration

On NixOS, the entire system configuration, including installed packages, enabled services, and system settings, is described in configuration files rather than assembled through a sequence of manual installation commands. Running `nixos-rebuild` reads this configuration and builds a complete system matching its description.

### Generations and Rollback

Each time `nixos-rebuild switch` or `boot` succeeds, a new system generation is created. A generation represents a complete, self-contained version of the system configuration at that point in time. Because previous generations are not deleted automatically, it is possible to boot into an earlier generation if a new configuration introduces a problem, providing a straightforward rollback mechanism.

If the configuration file contains errors, `nixos-rebuild` reports an error during the build step and does not switch the running system, leaving the previous generation active.

:::tip

Use `nixos-rebuild test` to try out a new configuration safely before committing to it with `switch`, since `test` does not affect what happens on the next reboot if something goes wrong.

:::

## Related Commands

- `nix` – understand the broader philosophy of declarative, reproducible package management.
- `nix-shell` – create a temporary development environment without changing the overall system configuration.
