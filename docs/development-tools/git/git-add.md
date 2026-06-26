---
title: git add
sidebar_label: git add
sidebar_position: 4
---

# git add

## Purpose

The `git add` command stages changes in the working Directory, marking them to be included in the next commit. Staging is a separate step from committing, allowing a User to choose exactly which changes should be recorded together.

## Syntax

```bash
git add [file...]
```

## Important Options

```bash
git add file.txt
```

Stages a specific file, adding its current changes to the staging area.

```bash
git add .
```

Stages all changes in the current Directory and its subdirectories, including new, modified, and deleted files.

## Examples

Staging a single file:

```bash
git add file.txt
```

Staging all changes in the current Directory:

```bash
git add .
```

Checking which changes are staged after running `git add`:

```bash
git status
```

### Staging vs Committing

Staging and committing are distinct steps in Git's workflow. `git add` moves changes from the working Directory into the staging area, but does not create a permanent record of those changes. `git commit`, covered on its own page, takes everything currently in the staging area and records it as a new entry in the commit history.

```bash
git add file.txt
git commit -m "Update file.txt"
```

In this example, the change to `file.txt` is first staged, and then committed in a separate step. This separation allows a User to stage several related changes from different files before committing them together as a single, meaningful unit of history.

If a specified file does not exist, `git add` reports an error and stages nothing. If there are no changes in the working Directory, `git add .` simply has nothing to stage and makes no changes.

:::tip

Stage related changes together before committing, so that each commit represents a single, coherent change. This makes the project history easier to understand later.

:::

## Related Commands

- `git-commit` – permanently record staged changes as a new commit.
- `git-concepts` – understand the relationship between the working Directory, staging area, and commit history.
