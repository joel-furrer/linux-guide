---
title: Services
sidebar_label: Services
sidebar_position: 3
---

# Services

## Purpose

A service, in the context of systemd, is a managed background Process, typically used for long-running tasks such as web servers, databases, or system daemons. This page explains the concept of a service and how it is described to systemd, separately from the `systemctl` command used to control it.

## Syntax

```bash
systemctl status nginx.service
```

Service definitions themselves are not executed directly with a syntax pattern. Instead, they are described in unit files and controlled through `systemctl`.

## Important Options

This page focuses on the concept of a service rather than command options. For the full set of options used to control services, see the `systemctl` page.

## Examples

Checking the status of a service:

```bash
systemctl status nginx.service
```

Starting a service:

```bash
systemctl start nginx.service
```

### What a Service Unit Is

A service is defined by a unit file, typically ending in `.service`, which describes how systemd should start, stop, and manage a particular Program. A unit file specifies details such as the command used to start the service, any dependencies it requires, and how it should behave if it fails.

A simplified service unit file might look like this:

```ini
[Unit]
Description=Example web server

[Service]
ExecStart=/usr/bin/example-server

[Install]
WantedBy=multi-user.target
```

- `Description`: a short, human-readable explanation of the service.
- `ExecStart`: the command systemd runs to start the service.
- `WantedBy`: indicates which boot target should activate this service, a concept covered in more detail on the targets page.

### Lifecycle of a Service

A service generally moves through a small number of states during its lifetime:

- Inactive: the service is not currently running.
- Active: the service has been started and is currently running as a Process.
- Failed: the service attempted to start or continued running but encountered an error.

systemd tracks these states and can be configured to restart a service automatically if it fails, depending on the settings in its unit file.

If a service's unit file does not exist or contains errors, systemd reports an error when attempting to start it, rather than silently failing.

:::note

The `.service` suffix can usually be omitted when referring to a service with `systemctl`, since systemd assumes it by default. Both `nginx` and `nginx.service` typically refer to the same unit.

:::

## Related Commands

- `systemctl` – start, stop, enable, and inspect services.
- `journalctl` – view logs produced by a service.
- `targets` – understand which services are activated at different boot states.
