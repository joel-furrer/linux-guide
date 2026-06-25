---
title: jq
sidebar_label: jq
sidebar_position: 7
---

# jq

## Purpose

The `jq` command processes and filters JSON data. It allows a User to extract specific values, navigate nested structures, and reformat JSON output directly from the command line.

## Syntax

```bash
jq [options] filter [file...]
```

If no file is specified, `jq` reads JSON from standard input.

## Important Options

`jq` is primarily controlled through its filter expression rather than command-line options. The filter determines which parts of the JSON structure are selected and how they are displayed.

## Examples

JSON, short for JavaScript Object Notation, is a structured text format made up of key-value pairs and lists. Consider a file named `file.json` with the following content:

```json
{
  "name": "example-project",
  "items": ["alpha", "beta", "gamma"]
}
```

Displaying the entire JSON content, formatted for readability:

```bash
jq '.' file.json
```

Extracting the value of a specific key:

```bash
jq '.name' file.json
```

Output:

```bash
"example-project"
```

Extracting each element of a list individually:

```bash
jq '.items[]' file.json
```

Output:

```bash
"alpha"
"beta"
"gamma"
```

### Basic JSON Structure

A JSON object is enclosed in curly braces and contains key-value pairs, such as `"name": "example-project"`. A JSON list, also called an array, is enclosed in square brackets and contains an ordered series of values, such as `["alpha", "beta", "gamma"]`. The `jq` filter syntax navigates this structure using dots to access keys and square brackets to access list elements.

If the specified key does not exist in the JSON structure, `jq` outputs `null` instead of reporting an error. If the input is not valid JSON, `jq` reports a parsing error and produces no output.

:::tip

Use `jq '.'` as a quick way to view formatted JSON output, even when no specific filtering is needed, since it is easier to read than raw, unformatted JSON.

:::

## Related Commands

- `grep` – search plain text for matching lines, without understanding JSON structure.
- `awk` – process delimited text by extracting fields, suited for non-JSON data.
