---
title: git init
sidebar_label: git init
sidebar_position: 3
---

# git init

## Purpose

The `git init` command creates a new Git repository, turning an existing Directory into one that Git tracks for version control. It is typically the first command run when starting a new project with Git.

## Syntax

```bash
git init [directory]
```

If no Directory is specified, `git init` initializes a repository in the current Directory.

## Important Options

`git init` is most commonly used without additional options, simply run inside the Directory that should become a Git repository.

## Examples

Initializing a new repository in the current Directory:

```bash
git init
```

Initializing a new repository in a newly created Directory:

```bash
mkdir my-project
cd my-project
git init
```

### What Happens When a Repository Is Initialized

Running `git init` creates a hidden subdirectory named `.git` inside the target Directory. This subdirectory stores all of the repository's history, configuration, and internal data. No files in the Directory are modified or removed by this command; existing files are simply not yet tracked by Git until they are explicitly staged and committed.

```bash
git init
git status
```

After initialization, `git status` typically reports that the Directory is a Git repository with no commits yet, and lists any existing files as untracked.

If a Git repository already exists in the target Directory, running `git init` again typically reinitializes the existing repository without deleting its history, although this is rarely necessary in normal use.

:::note

`git init` only creates a local repository. It does not connect the new repository to any remote repository. Use `git remote add` to connect a local repository to a remote one.

:::

## Related Commands

- `git-add` – stage files in a newly initialized repository.
- `git-remote` – connect a local repository to a remote repository.
