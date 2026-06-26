---
title: Data Processing Pipelines
sidebar_label: Pipes
sidebar_position: 9
---

# Data Processing Pipelines

## Overview

This page demonstrates how multiple commands can be chained together using pipes to filter and transform data step by step, building a small data processing pipeline directly in the shell.

## Why It Matters

Many everyday tasks are easier to solve by combining several simple commands than by relying on a single complex one. Chaining commands together with pipes allows each tool to handle one specific transformation, with the output of one command becoming the input of the next.

## Concept

A pipe, written as `|`, connects the standard output of one command to the standard input of the next. By chaining several commands this way, data can be filtered, transformed, and summarized in a series of small, understandable steps, rather than in a single large command.

## Examples

### Scenario: Counting Matching Log Entries

Suppose a log file contains many entries, and the goal is to count how many of them mention the word "error".

```bash
grep "error" application.log | wc -l
```

Here, `grep` filters the file for lines containing "error", and `wc -l` counts the number of resulting lines, producing a single number as the final output.

### Scenario: Listing Unique Visitor IP Addresses

Suppose a web server log file contains an IP address as the first field on each line, and the goal is to list each unique address that appears.

```bash
awk '{print $1}' access.log | sort | uniq
```

This pipeline works in three steps:

1. `awk '{print $1}'` extracts the first field from each line, which is the IP address in this example.
2. `sort` arranges the extracted addresses in order, which is required for the next step to work correctly.
3. `uniq` removes consecutive duplicate lines, leaving only one instance of each address.

### Scenario: Finding the Most Frequent Values

Building on the previous example, counting how often each address appears, and listing the most frequent ones first:

```bash
awk '{print $1}' access.log | sort | uniq -c | sort -rn
```

This adds two more steps:

- `uniq -c` counts how many times each unique line appears, in addition to removing duplicates.
- `sort -rn` sorts the results numerically, in reverse order, so the most frequent addresses appear first.

### Input → Processing → Output

In each of these examples, the input is the raw content of a log file. Each command in the pipeline performs one specific transformation, passing its output forward to the next command. The final command in the chain produces the final output that the User actually sees.

If an early step in the pipeline produces no output, every later step in the chain also receives no input and likewise produces no output, rather than reporting an error.

## Common Pitfalls

- Forgetting to `sort` data before using `uniq`, since `uniq` only removes consecutive duplicate lines and does not detect duplicates that are not next to each other.
- Building a long pipeline all at once without testing it step by step. It is often easier to add one command at a time, checking the output after each step, before chaining everything together.

:::tip

When building a multi-step pipeline, run it one step at a time first, checking the output after each pipe, before adding the next command in the chain.

:::
