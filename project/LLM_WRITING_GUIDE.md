# LLM Documentation Writing Guide

This document is intended to be provided to an LLM when generating documentation for this project.

The goal is to ensure that all generated documentation follows a consistent structure, terminology, writing style, and formatting.

---

# Project Context

This project is a Linux and Unix documentation guide built with Docusaurus.

The documentation focuses on:

- Linux fundamentals
- Unix concepts
- Command-line interfaces (CLI)
- System administration
- Package management
- Development tools
- Practical examples and workflows

The target audience includes:

- Linux beginners
- Students
- Self-learners
- Developers
- System administrators

Documentation should be technically accurate, easy to understand, and professionally written.

Do not assume advanced prior knowledge.

---

# General Rules

## Language

Avoid:

- Emojis
- Slang
- Marketing language
- Unnecessary jokes
- Personal opinions
- AI self-references

Use `<BACKTICKS>` instead of actual backticks when showing examples in this document.

# Documentation Style Guide

## Documentation must be written in English.

## Code Blocks

Always use:

```bash
ls -a
```

Never use:

```
ls -lah
```

## Headings

Concept pages:

---

# Title

## Overview

## Why It Matters

## Concept

## Examples

## Common Pitfalls ( Optional )


---

Command pages:

---

# Command

## Purpose

## Syntax

## Important Options

## Examples

## Related Commands

---

# Admonitions

Always use the best-fitting docusaurus admonition in the documentation.

Keep in mind that a empty line is required after the opening `:::` and before the closing one.

```
:::note

This is a note.

:::

:::tip

This is a tip.

:::

:::tip[Custom Title]

This is a tip with a custom title.

:::

:::info

Additional information.

:::

:::warning

Keep this in mind.

:::

:::danger

This could lead to problems.

:::
```

# Terminology

Always use the same fitting term to avoid potential confusion.

## Process

A running instance of a program.

## Program

Executable code stored on disk.

## User

An account identified by a UID.

## Directory

A file system structure that organizes and groups files and other directorys in a hierarchical way.
