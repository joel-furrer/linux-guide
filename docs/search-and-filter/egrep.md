---
title: egrep
sidebar_label: egrep
sidebar_position: 2
---

# egrep

## Purpose

The `egrep` command searches file content for lines matching a pattern, using extended regular expressions. Extended regular expressions support additional syntax, such as the alternation operator, without requiring extra escaping.

## Syntax

```bash
egrep [options] pattern [file...]
```

## Important Options

`egrep` accepts the same options as `grep`, since it behaves as a variant of `grep` with extended regular expression support enabled by default.

## Examples

Searching for either of two words using alternation:

```bash
egrep "cat|dog" file.txt
```

Searching case-insensitively for either of two words:

```bash
egrep -i "error|fail" file.txt
```

### Difference from grep

With plain `grep`, matching one of several alternatives requires escaping the alternation operator:

```bash
grep "cat\|dog" file.txt
```

With `egrep`, the same pattern can be written without escaping, since extended regular expressions treat `|` as a special character by default:

```bash
egrep "cat|dog" file.txt
```

### Why egrep Exists

`egrep` is provided as a separate command name for convenience, so that Users do not need to remember an additional option when extended regular expression features are needed. On most modern systems, `egrep` is equivalent to running `grep` with the `-E` option:

```bash
grep -E "cat|dog" file.txt
```

Both commands produce identical results. Some systems display a warning recommending the use of `grep -E` directly, since `egrep` may be considered an older alternative name.

If no match is found, `egrep` produces no output and exits with a non-zero status, the same as `grep`.

:::note

`egrep` is equivalent to `grep -E`. Either form can be used, although some systems prefer `grep -E` as the more explicit form.

:::

## Related Commands

- `grep` – search using basic regular expressions by default.
- `fgrep` – search using fixed strings, without regular expression interpretation.
