---
title: Git Concepts
sidebar_label: Git Concepts
sidebar_position: 2
---

# Git Concepts

## Overview

Git is a distributed version control system used to track changes to files over time, most commonly source code. This page introduces the fundamental concepts behind Git, including repositories, the working Directory, the staging area, and commit history, before any specific Git commands are introduced.

## Why It Matters

Git commands only make sense in the context of these underlying concepts. Understanding how Git models a project's history makes individual commands, such as `git add` or `git commit`, much easier to use correctly and confidently.

## Concept

### Repositories

A Git repository is a Directory that Git tracks, containing both the current files and a complete history of changes made to them over time. A repository can exist only on a local machine, or it can also be connected to one or more remote repositories, often hosted on a service such as GitHub or GitLab.

### Working Directory, Staging Area, and Commit History

Git organizes changes through three related areas:

- The working Directory is the actual set of files a User sees and edits directly on disk.
- The staging area, also called the index, holds changes that have been marked as ready to be included in the next commit, but have not yet been permanently recorded.
- The commit history is the permanent record of changes that have been committed over time, forming the project's timeline.

A change typically moves through these three areas in order: it starts as an edit in the working Directory, is staged using `git add`, and is then recorded permanently using `git commit`.

### The Snapshot Model

Rather than recording only the differences between versions, Git conceptually stores a snapshot of the entire project at the time of each commit. Each commit represents a complete state of the tracked files at that point in time, even though Git stores this efficiently behind the scenes.

### Commits as History Nodes

Each commit also stores a reference to the commit that came before it, except for the very first commit in a repository. This creates a chain, where the project's history can be thought of as a sequence of connected nodes, each representing one snapshot, linked back to its predecessor.

### Local vs Remote Repositories

A local repository exists on a User's own machine and can be used entirely independently, without any network connection. A remote repository is a separate copy of the same project, typically hosted on a server, used to share changes between Users. Commands such as `git push` and `git pull` synchronize changes between a local repository and a remote one.

## Examples

Viewing the current state of the working Directory and staging area:

```bash
git status
```

Viewing the commit history of a repository:

```bash
git log
```

These commands do not modify anything. They are useful starting points for understanding the current state of a repository before making further changes.

## Common Pitfalls

- Confusing the working Directory with the staging area. Editing a file changes the working Directory, but the change is not staged until `git add` is run.
- Assuming a commit automatically updates a remote repository. Commits are recorded locally and must be explicitly pushed to a remote repository to be shared.
- Expecting Git to track empty directories. Git tracks files, not directories directly, so a Directory with no files inside it is generally not tracked.

:::note

This page introduces Git concepts only. Specific commands such as `git add`, `git commit`, and `git branch` are covered in detail on their own dedicated pages.

:::
