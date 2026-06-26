---
title: Investigating System Performance
sidebar_label: System Analysis
sidebar_position: 10
---

# Investigating System Performance

## Overview

This page demonstrates a realistic workflow for investigating system performance issues, combining `ps`, `top` or `htop`, and `grep` filtering to identify processes that may be consuming excessive resources.

## Why It Matters

When a system feels slow or unresponsive, identifying which Process is responsible is often the first step toward resolving the issue. Combining process listing tools with filtering makes it possible to quickly narrow down a large list of running processes to just the ones relevant to the problem.

## Concept

Investigating performance issues generally combines two kinds of tools:

- A continuously updating view of system activity, such as `top` or `htop`, to observe overall load and identify processes consuming significant CPU or memory in real time.
- A more targeted, filtered listing, often built using `ps` combined with `grep`, to focus on processes matching a specific name or pattern.

## Examples

### Scenario: Getting an Overall View of System Load

A typical first step when investigating a slow system is to check overall resource usage with a real-time monitor:

```bash
top
```

This displays a continuously updating list of processes, generally sorted by CPU usage, along with a summary of overall memory and CPU load. If `htop` is installed, it can be used in a similar way, offering an easier-to-read interface:

```bash
htop
```

### Scenario: Locating a Specific Process by Name

Once a potentially problematic Program has been identified, such as a web server consuming unusual resources, its exact Process details can be found by filtering the output of `ps`:

```bash
ps aux | grep nginx
```

This lists every process on the system using `ps aux`, then filters that list with `grep` to show only lines mentioning `nginx`, including its Process ID, which is needed for further action such as stopping it.

### Scenario: Confirming a Process No Longer Exists

After taking action on a Process, such as restarting a service, the same filtered listing can confirm whether the expected Process is running as anticipated:

```bash
ps aux | grep nginx
```

If the Process has been correctly restarted, a new entry appears with a different Process ID. If the Process is not running at all, the filtered output may show no matching lines, aside from the `grep` command itself searching for the term.

### Input → Processing → Output

In this workflow, the input is the current state of every running Process on the system. `ps aux` captures a snapshot of that state. `grep` then processes this snapshot, filtering it down to only the lines relevant to the Program being investigated. The final output is a short, focused list, rather than the full, often very long, process table.

If no processes match the filter term, the combined `ps aux | grep` command produces little or no relevant output, which may itself be a useful sign that the expected Process is not currently running.

## Common Pitfalls

- Mistaking the `grep` command's own process entry for a real match, since `ps aux | grep nginx` sometimes includes a line representing the `grep` command itself, depending on the system.
- Relying only on a single snapshot from `ps` when a problem is intermittent. Use `top` or `htop` for a period of time to observe changing resource usage, rather than a single point-in-time check.

:::tip

When using `ps aux | grep` to locate a Process, look for the actual Program name in the command column, and be aware that the `grep` command itself may sometimes appear as an unrelated extra line in the results.

:::
