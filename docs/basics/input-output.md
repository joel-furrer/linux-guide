---
title: Input and Output
sidebar_label: Input and Output
sidebar_position: 11
---

# Input and Output

## Overview
Every command you run in a Unix-like system automatically opens three data channels (called streams):
1. **Standart Input(stdin):** Where the program reads the data.
- Example:
```bash
$ echo "Linux is Cool!"
```
2. **Standard Output (stdout):** The program send the normal data.
- Example:
```bash
Linux is Cool!
```

3. **Standard Error (stderr):** The program sends error-messages.
- Example:
```bash
fish: Unknown command: error
```

:::note

Unix treats these streams as files. This means you can divert data to files or other programs.

:::

## Why It Matters
Because almost every Unix tool uses these three standard streams. 

## Concept

1. File Descriptors

Internally, the system tracks these streams using file descriptors(integer):

    0 = Standard Input (stdin)

    1 = Standard Output (stdout)

    2 = Standard Error (stderr)

2. Redirection

Redirection changes where a stream goes to or comes from (usually a file).

    > (Redirect Output): Overwrites a file with the program's stdout.

    >> (Append Output): Appends stdout to the end of a file without erasing it.

    < (Redirect Input): Forces a program to read from a file instead of the keyboard.

    2> (Redirect Error): Explicitly redirects stderr instead of stdout.

:::note

The pipe operator (|) connects the stdout of one program directly to the stdin of another. Data flows through the pipe like water, allowing programs to process information sequentially.

:::
## Examples
**Write in a file:**

```Bash
ls -l > files.txt
```

**Appending to a file:**

```bash
echo "Process completed successfully" >> log.txt
```

**Separating Errors from Output**
Run a backup script, saving the normal report to success.log and any errors to errors.log:
Bash

```bash
./backup.sh > success.log 2> errors.log
```
## Common Pitfalls ( Optional)

