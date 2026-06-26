---
title: git branch
sidebar_label: git branch
sidebar_position: 6
---

# git branch

## Purpose

The `git branch` command manages branches within a repository. A branch represents an independent line of development, allowing changes to be made separately from the project's main history until they are ready to be combined.

## Syntax

```bash
git branch [branch-name]
```

## Important Options

```bash
git branch feature
```

Creates a new branch named `feature`, starting from the current commit, without switching to it.

```bash
git checkout feature
```

Switches the working Directory to the specified branch, making it the currently active branch.

## Examples

Creating a new branch:

```bash
git branch feature
```

Switching to the new branch:

```bash
git checkout feature
```

Creating and switching to a new branch in a single command:

```bash
git checkout -b feature
```

### Modern Alternative

More recent versions of Git also provide `git switch`, intended as a clearer, more focused alternative to `git checkout` for changing branches.

```bash
git switch feature
```

This achieves the same result as `git checkout feature`, switching to the specified branch, but `git switch` is dedicated specifically to branch switching, while `git checkout` historically also handles other unrelated tasks.

### Branching Concept

A branch allows changes to be developed independently from the main line of history, often called `main` or `master`. Work done on one branch does not affect other branches until the branches are explicitly combined, typically using `git merge`, covered on its own page.

If a branch with the specified name already exists, `git branch` reports an error and does not create a duplicate. If the target branch in `git checkout` does not exist, Git reports an error unless the `-b` option is used to create it.

:::tip

Use a separate branch for each new feature or fix, rather than making unrelated changes directly on the main branch. This keeps the project history organized and makes it easier to review individual changes.

:::

## Related Commands

- `git-merge` – combine changes from one branch into another.
- `git-rebase` – reapply commits from one branch onto another, producing a linear history.
