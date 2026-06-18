# Issue Labels

This document defines all allowed labels in this repository.
All issues and pull requests **must only use labels from this list**.

---

# 1. Type Labels

These define what kind of work is being done.

* `type:documentation`
* `type:feature`
* `type:bug`
* `type:chore`
* `type:refactor`

---

# 2. Area Labels

These define the topic area of the change.

* `area:basics`
* `area:shell`
* `area:filesystem`
* `area:files`
* `area:search-and-filter`
* `area:processes`
* `area:user-management`
* `area:systemd`
* `area:packages`
* `area:development-tools`
* `area:examples`

---

# 3. Priority Labels

These define importance and urgency.

* `priority:high`
* `priority:medium`
* `priority:low`

---

# 4. Status Labels (optional workflow)

Used for active work tracking.

* `status:blocked`
* `status:in-progress`
* `status:review`

---

# 5. Usage Rules

* Every issue MUST have exactly:

  * 1 `type:*` label
  * 1 `area:*` label

* `priority:*` is optional but recommended.

* `status:*` is only used when actively working.

* Do NOT create custom labels without updating this file first.

---

# 6. Example

## Good Issue

```
Title: Explain Linux permissions model

Labels:
- type:documentation
- area:basics
- priority:high
```

## Bad Issue

```
Labels:
- random-label
- stuff
- linux
```

These are not allowed.

