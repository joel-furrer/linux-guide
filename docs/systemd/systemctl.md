---
title: systemctl
sidebar_label: systemctl
sidebar_position: 1
---

# systemctl

## Purpose

The `systemctl` command is the primary tool for controlling systemd, the init system used by many Linux distributions. It is used to start, stop, enable, disable, and inspect services and other systemd units.

## Syntax

```bash
systemctl [command] [unit]
```

## Important Options

```bash
systemctl status ssh
```

Displays the current status of a unit, including whether it is active, when it last started, and recent log output.

```bash
systemctl start nginx
```

Starts a unit immediately, for the current session, without affecting whether it starts automatically at boot.

```bash
systemctl stop nginx
```

Stops a currently running unit immediately.

```bash
systemctl enable nginx
```

Configures a unit to start automatically at boot, without starting it immediately.

```bash
systemctl disable nginx
```

Removes a unit from the set of services that start automatically at boot, without stopping it if it is currently running.

## Examples

Checking the status of a service:

```bash
systemctl status ssh
```

Starting a service immediately:

```bash
systemctl start nginx
```

Stopping a running service:

```bash
systemctl stop nginx
```

Enabling a service to start automatically at boot:

```bash
systemctl enable nginx
```

Disabling a service from starting automatically at boot:

```bash
systemctl disable nginx
```

### Start and Stop vs Enable and Disable

These two pairs of actions control different things and are easy to confuse:

- `start` and `stop` affect whether a service is running right now, in the current session. These actions do not persist across a reboot.
- `enable` and `disable` affect whether a service is configured to start automatically the next time the system boots. These actions do not affect whether the service is currently running.

A service can be started without being enabled, meaning it runs now but will not start automatically after a reboot. A service can also be enabled without being started, meaning it will start at the next boot but is not currently running.

To both start a service now and ensure it starts automatically at boot, both actions are typically combined:

```bash
systemctl enable nginx
systemctl start nginx
```

If the specified unit does not exist, `systemctl` reports an error. If the User lacks sufficient privileges, most actions other than `status` also require administrative privileges and fail without them.

:::warning

Stopping or disabling a critical system service, such as a network manager or the SSH daemon on a remote server, can interrupt connectivity or essential functionality. Always confirm what a service is responsible for before stopping or disabling it.

:::

## Related Commands

- `services` – understand the concept of a service unit.
- `journalctl` – view logs related to a specific unit.
- `targets` – manage the system's boot state.
