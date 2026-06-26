---
title: Targets
sidebar_label: Targets
sidebar_position: 4
---

# Targets

## Purpose

A target in systemd represents a defined system state, grouping together a set of units that should be active at that state. Targets serve a similar purpose to the older concept of runlevels, defining what should be running during boot or at a particular operating mode.

## Syntax

```bash
systemctl [command] target-name
```

## Important Options

```bash
systemctl get-default
```

Displays the target that the system boots into by default.

```bash
systemctl set-default multi-user.target
```

Sets the default target the system should boot into.

```bash
systemctl isolate graphical.target
```

Switches the system to the specified target immediately, stopping any units not required by that target.

## Examples

Checking the current default target:

```bash
systemctl get-default
```

Setting a new default target:

```bash
systemctl set-default multi-user.target
```

Switching to a different target immediately:

```bash
systemctl isolate graphical.target
```

### Relationship Between Targets and System State

Each target defines a collection of units that should be active. For example:

- `multi-user.target` typically represents a fully running system with network and multi-user support, but without a graphical interface.
- `graphical.target` builds on `multi-user.target` and additionally starts a graphical display environment.

Switching to a target with `isolate` stops units that are not part of the new target's requirements, while starting any units that are required but not yet running. This makes `isolate` more disruptive than simply starting an individual service, since it can affect many units at once.

If the specified target does not exist, `systemctl` reports an error and the system state remains unchanged.

:::warning

Using `systemctl isolate` switches the overall system state and can stop services that are not part of the target being switched to. Avoid using `isolate` on a production system without understanding which units will be affected.

:::

## Related Commands

- `systemctl` – the tool used to query and change targets.
- `services` – understand the individual units that targets group together.
