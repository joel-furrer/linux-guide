---
title: Analyzing System Logs
sidebar_label: Log Analysis
sidebar_position: 8
---

# Analyzing System Logs

## Overview

This page demonstrates a realistic workflow for investigating system logs, combining `grep` for filtering and `tail -f` for real-time monitoring, with an optional mention of `journalctl` on systems using systemd.

## Why It Matters

Log files often contain a large volume of text, most of which is not relevant to a specific problem being investigated. Filtering logs effectively, and monitoring them as new entries arrive, is a core part of diagnosing issues on a running system.

## Concept

Log analysis generally involves two related tasks:

- Searching existing log content for specific patterns, such as error messages, using `grep`.
- Watching a log file as it grows, to observe new events as they happen, using `tail -f`.

These tasks are often combined, for example by first searching historical log entries for context, and then watching the log in real time while reproducing an issue.

## Examples

### Scenario: Searching Existing Logs for Errors

Suppose a web server has been reporting intermittent issues, and the relevant log file is located at `/var/log/nginx/error.log`.

```bash
grep "error" /var/log/nginx/error.log
```

This filters the log file, printing only the lines that contain the word "error", out of what may otherwise be a very long file.

### Scenario: Monitoring a Log File in Real Time

To watch for new errors as they occur, `tail -f` can be used to continuously display new lines as they are written to the file:

```bash
tail -f /var/log/nginx/error.log
```

### Scenario: Combining Real-Time Monitoring with Filtering

`tail -f` can be combined with `grep` through a pipe, so that only new lines matching a specific pattern are displayed:

```bash
tail -f /var/log/nginx/error.log | grep "timeout"
```

This continuously monitors the log file, but only prints new lines containing the word "timeout", filtering out unrelated activity.

### Optional: journalctl on systemd Systems

On systems using systemd, many services write their logs to the systemd journal instead of, or in addition to, separate log files. In that case, a similar real-time filtered view can be achieved with:

```bash
journalctl -u nginx -f
```

This filters the journal to the `nginx` unit and follows new entries in real time, similar in spirit to combining `tail -f` with `grep`, but reading from the systemd journal instead of a plain text file.

### Input → Processing → Output

The input in this workflow is the ongoing stream of log entries written by a running service. `tail -f` processes this stream by continuously emitting new lines as they appear. When piped into `grep`, the output is further filtered, so that only lines matching the chosen pattern are ultimately displayed.

If no new lines matching the filter appear, the combined `tail -f | grep` command produces no output, but continues running and waiting for further log entries. It does not exit on its own.

## Common Pitfalls

- Running `tail -f` on a very large file expecting to see existing matches. `tail -f` only follows new lines from the point it starts; combine it with a separate `grep` search of the existing file content first if historical matches are also needed.
- Forgetting that `tail -f | grep` keeps running indefinitely. It must be stopped manually, typically with `Ctrl+C`, once monitoring is no longer needed.

:::tip

Use a plain `grep` search first to understand historical patterns in a log file, then use `tail -f` combined with `grep` to monitor for new occurrences of the same pattern in real time.

:::
