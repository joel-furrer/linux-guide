---
title: Git Workflow
sidebar_label: Git Workflow
sidebar_position: 10
---

# Git Workflow

## Overview

This page describes a typical, practical workflow for using Git on a software project, bringing together the individual commands covered on other pages in this section into a single, step-by-step process.

## Why It Matters

While each Git command serves a specific purpose on its own, everyday Git usage usually follows a recognizable pattern. Seeing the commands combined into a complete workflow makes it easier to understand how they fit together in practice.

## Concept

### A Typical Workflow

A common workflow for working on a feature or fix generally follows these steps:

1. Start with a repository, either by creating a new one or obtaining an existing one.
2. Create a dedicated branch for the new work.
3. Make changes to files in the working Directory.
4. Stage the relevant changes.
5. Commit the staged changes with a clear message.
6. Push the new commits to a remote repository.

### Feature Branches

Rather than making changes directly on the main branch, it is common practice to create a separate branch for each feature or fix. This keeps unrelated work isolated and makes it easier to review and merge changes independently.

### Commit Discipline

Committing related changes together, with clear messages, makes a project's history more useful over time. Frequent, small, well-described commits are generally easier to review and reason about than infrequent, large commits that bundle many unrelated changes together.

### Collaboration Model

When multiple Users work on the same project, remote repositories act as a shared point of synchronization. Each User pushes their own committed work to the remote repository, and pulls changes made by others, allowing the project to progress collaboratively without requiring direct access to anyone else's machine.

## Examples

Starting a new project locally:

```bash
git init
```

Obtaining an existing project from a remote repository:

```bash
git clone https://example.com/project.git
```

Creating a branch for new work:

```bash
git branch feature
git checkout feature
```

Making and staging changes:

```bash
git add file.txt
```

Committing the staged changes:

```bash
git commit -m "Implement new feature"
```

Pushing the new branch and its commits to a remote repository:

```bash
git push origin feature
```

A complete sequence for a single piece of work might look like this:

```bash
git checkout -b feature
git add .
git commit -m "Add feature implementation"
git push origin feature
```

After pushing a feature branch, it is typically merged into the main branch, often through a review process provided by a hosting service such as GitHub or GitLab, before being merged using `git merge` or an equivalent action performed on that service.

## Common Pitfalls

- Making unrelated changes directly on the main branch instead of using a dedicated feature branch.
- Forgetting to pull recent changes from the remote repository before starting new work, which can lead to avoidable conflicts later.
- Writing vague commit messages, such as "fix stuff," which make the project history difficult to understand later.

:::tip

Pull the latest changes from the remote repository before creating a new branch, so that new work starts from the most up-to-date version of the project.

:::
