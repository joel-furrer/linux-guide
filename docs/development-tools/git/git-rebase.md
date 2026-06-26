---
title: git rebase
sidebar_label: git rebase
sidebar_position: 8
---

# git rebase

## Purpose

The `git rebase` command reapplies the commits from one branch on top of another branch, producing a linear sequence of commits instead of the branching structure produced by `git merge`.

## Syntax

```bash
git rebase branch-name
```

The rebase is applied to the currently active branch, replaying its commits on top of the specified branch.

## Important Options

```bash
git rebase main
```

Reapplies the commits of the current branch on top of the latest commit on `main`.

## Examples

Rebasing a feature branch onto the latest version of main:

```bash
git checkout feature
git rebase main
```

### Linear History Concept

Without rebasing, combining branches with `git merge` can produce a history with multiple diverging and converging paths, reflecting exactly when each branch was created and merged. Rebasing instead rewrites the feature branch's commits so that they appear to have been created starting from the latest commit on the target branch, resulting in a single, linear sequence of commits.

### Difference from Merge

`git merge` preserves the actual history of how branches diverged and were later combined, typically by creating a merge commit. `git rebase` rewrites history to remove this branching structure, making the project history easier to read in a straight line, at the cost of no longer reflecting exactly when the branches originally diverged.

If a commit being replayed during a rebase conflicts with changes already present on the target branch, Git pauses the rebase and reports a conflict, requiring the User to resolve it before continuing.

:::danger

`git rebase` rewrites commit history. If a branch has already been pushed to a remote repository and shared with others, rebasing it and pushing again can cause serious confusion or lost work for anyone else working from that branch. Avoid rebasing commits that have already been shared with others, unless the entire team is aware of and prepared for the consequences.

:::

## Related Commands

- `git-merge` – combine branches while preserving the actual branching history.
- `git-branch` – create and manage the branches involved in a rebase.
