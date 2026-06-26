---
title: git remote
sidebar_label: git remote
sidebar_position: 9
---

# git remote

## Purpose

The `git remote` command manages the connections between a local repository and one or more remote repositories. Remote repositories are typically hosted on a server, often through a service such as GitHub or GitLab, and allow changes to be shared between different Users or machines.

## Syntax

```bash
git remote [command] [name] [url]
```

## Important Options

```bash
git remote add origin URL
```

Adds a new remote repository connection, commonly named `origin`, pointing to the specified URL.

```bash
git push origin main
```

Sends commits from the local `main` branch to the `main` branch on the remote named `origin`.

```bash
git pull origin main
```

Retrieves commits from the `main` branch on the remote named `origin` and merges them into the current local branch.

## Examples

Connecting a local repository to a remote repository:

```bash
git remote add origin https://example.com/project.git
```

Pushing local commits to the remote repository:

```bash
git push origin main
```

Pulling new commits from the remote repository:

```bash
git pull origin main
```

### Push and Pull Relationship

`git push` and `git pull` move commits in opposite directions between a local and a remote repository. Pushing sends local commits to the remote, making them available to others. Pulling retrieves commits made by others from the remote and merges them into the current local branch, keeping the local repository up to date.

A typical naming convention uses `origin` to refer to the primary remote repository a local repository was cloned from or connected to, although any name can technically be used.

If the remote repository does not exist or the URL is incorrect, `git remote add` succeeds in recording the configuration, but later commands such as `git push` fail when attempting to actually connect to it. If the local branch has diverged from the remote branch in conflicting ways, `git pull` may report a conflict that requires manual resolution.

:::note

Services such as GitHub and GitLab provide hosting for remote Git repositories, along with additional collaboration features. Git itself does not require any specific hosting service to function, since a remote repository can also be another local machine.

:::

## Related Commands

- `git-workflow` – see how pushing and pulling fit into a typical collaborative workflow.
- `git-branch` – manage the branches being pushed or pulled.
