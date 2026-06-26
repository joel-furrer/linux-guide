---
title: git commit
sidebar_label: git commit
sidebar_position: 5
---

# git commit

## Purpose

The `git commit` command permanently records the changes currently in the staging area as a new entry in the repository's commit history. Each commit represents a snapshot of the project at that point in time, along with a message describing the change.

## Syntax

```bash
git commit -m "message"
```

## Important Options

```bash
git commit -m "message"
```

Creates a new commit using the staged changes, with the specified message describing what the commit contains.

## Examples

Committing staged changes with a message:

```bash
git commit -m "Add initial project structure"
```

A typical sequence combining staging and committing:

```bash
git add file.txt
git commit -m "Update file.txt with new content"
```

### Commit Messages

A commit message should briefly describe what changed and, where useful, why. Clear commit messages make it much easier to understand a project's history later, especially when reviewing changes made by other contributors or revisiting old work.

### History Snapshot

Each commit captures the full state of all staged files at the time it was created, building on the previous commit in the repository's history. Viewing the commit history shows this sequence of snapshots over time.

```bash
git log
```

If there are no staged changes when `git commit` is run, Git typically reports that there is nothing to commit and creates no new commit. If the `-m` option is omitted, Git usually opens a text editor for entering a commit message instead.

:::warning

Only staged changes are included in a commit. Changes made to a file after it was staged with `git add`, but not staged again, are not included in the resulting commit.

:::

## Related Commands

- `git-add` – stage changes before committing them.
- `git-concepts` – understand commits as snapshots linked together in a history.
