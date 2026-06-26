---
title: git merge
sidebar_label: git merge
sidebar_position: 7
---

# git merge

## Purpose

The `git merge` command combines the changes from one branch into another. It is commonly used to bring completed work from a feature branch back into a project's main branch.

## Syntax

```bash
git merge branch-name
```

The merge is applied to the currently active branch, combining it with the specified branch.

## Important Options

```bash
git merge feature
```

Merges the specified branch, in this case `feature`, into the currently active branch.

## Examples

Switching to the main branch and merging a feature branch into it:

```bash
git checkout main
git merge feature
```

### Fast-Forward vs Merge Commits

`git merge` can produce two different outcomes, depending on how the branches have diverged:

- A fast-forward merge happens when the current branch has no new commits since the feature branch was created. In this case, Git simply moves the current branch forward to match the feature branch, without creating a new commit.
- A merge commit is created when both branches have new commits since they diverged. Git combines the changes from both branches and records the result as a new commit with two parent commits, preserving the fact that two separate lines of history were joined together.

In everyday use, it is not necessary to choose between these outcomes manually. Git determines which type of merge is possible based on the current state of the branches involved.

If the same lines of a file have been changed differently on both branches, Git reports a merge conflict and pauses the merge, requiring the User to manually resolve the conflicting changes before completing the merge.

:::note

A merge conflict does not mean something has gone wrong. It simply means Git needs help deciding how to combine two different changes to the same part of a file.

:::

## Related Commands

- `git-branch` – create and switch between branches before merging them.
- `git-rebase` – an alternative way to combine changes, producing a linear history instead of a merge commit.
