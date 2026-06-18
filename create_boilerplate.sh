
set -euo pipefail

create_category() {
    local dir="$1"
    local label="$2"
    local position="$3"
    local description="$4"

    mkdir -p "$dir"

    cat > "$dir/_category_.json" <<EOF
{
    "label": "$label",
    "position": $position,
    "link": {
        "type": "generated-index",
        "description": "$description"
    }
}
EOF
}

create_doc() {
    local file="$1"
    local title="$2"
    local position="$3"

    mkdir -p "$(dirname "$file")"

    cat > "$file" <<EOF
---
title: $title
sidebar_label: $title
sidebar_position: $position
---

# $title

EOF
}

mkdir -p docs

create_doc docs/intro.md "Einführung" 1

create_category docs/grundlagen "Grundlagen" 1 "Grundlegende Unix- und Linux-Konzepte."

create_doc docs/grundlagen/unix-philosophie.md "Unix Philosophie" 1
create_doc docs/grundlagen/dateien-und-inodes.md "Dateien und Inodes" 2
create_doc docs/grundlagen/verzeichnisstruktur.md "Verzeichnisstruktur" 3
create_doc docs/grundlagen/shells.md "Shells" 4
create_doc docs/grundlagen/umgebungsvariablen.md "Umgebungsvariablen" 5
create_doc docs/grundlagen/benutzer-und-gruppen.md "Benutzer und Gruppen" 6
create_doc docs/grundlagen/permissions.md "Permissions" 7
create_doc docs/grundlagen/links.md "Links" 8
create_doc docs/grundlagen/prozesse.md "Prozesse" 9
create_doc docs/grundlagen/init-systeme.md "Init Systeme" 10
create_doc docs/grundlagen/ein-ausgabe.md "Ein und Ausgabe" 11

create_category docs/shell "Shell" 2 "Grundlagen der Kommandozeile."

create_doc docs/shell/shell-grundlagen.md "Shell Grundlagen" 1
create_doc docs/shell/argumente-und-flags.md "Argumente und Flags" 2
create_doc docs/shell/wildcard-globbing.md "Wildcard Globbing" 3
create_doc docs/shell/pipes-und-redirection.md "Pipes und Redirection" 4
create_doc docs/shell/command-substitution.md "Command Substitution" 5
create_doc docs/shell/shell-builtins.md "Shell Builtins" 6

create_category docs/dateisystem "Dateisystem" 3 "Befehle zur Verwaltung von Dateien und Verzeichnissen."

create_doc docs/dateisystem/pwd.md "pwd" 1
create_doc docs/dateisystem/cd.md "cd" 2
create_doc docs/dateisystem/ls.md "ls" 3
create_doc docs/dateisystem/tree.md "tree" 4
create_doc docs/dateisystem/mkdir.md "mkdir" 5
create_doc docs/dateisystem/touch.md "touch" 6
create_doc docs/dateisystem/cp.md "cp" 7
create_doc docs/dateisystem/mv.md "mv" 8
create_doc docs/dateisystem/rm.md "rm" 9
create_doc docs/dateisystem/file.md "file" 10
create_doc docs/dateisystem/stat.md "stat" 11
create_doc docs/dateisystem/du.md "du" 12
create_doc docs/dateisystem/mount.md "mount" 13
create_doc docs/dateisystem/tar-und-archive.md "tar und Archive" 14

create_category docs/dateien "Dateien" 4 "Dateien anzeigen und bearbeiten."

create_doc docs/dateien/cat.md "cat" 1
create_doc docs/dateien/less.md "less" 2
create_doc docs/dateien/more.md "more" 3
create_doc docs/dateien/head.md "head" 4
create_doc docs/dateien/tail.md "tail" 5
create_doc docs/dateien/cut.md "cut" 6
create_doc docs/dateien/source.md "source" 7

create_category docs/suchen-und-filtern "Suchen und Filtern" 5 "Werkzeuge zum Durchsuchen und Filtern von Daten."

create_doc docs/suchen-und-filtern/grep.md "grep" 1
create_doc docs/suchen-und-filtern/egrep.md "egrep" 2
create_doc docs/suchen-und-filtern/fgrep.md "fgrep" 3
create_doc docs/suchen-und-filtern/rgrep.md "rgrep" 4
create_doc docs/suchen-und-filtern/find.md "find" 5
create_doc docs/suchen-und-filtern/awk.md "awk" 6
create_doc docs/suchen-und-filtern/jq.md "jq" 7

create_category docs/prozesse "Prozesse" 6 "Prozessverwaltung und Monitoring."

create_doc docs/prozesse/ps.md "ps" 1
create_doc docs/prozesse/pstree.md "pstree" 2
create_doc docs/prozesse/top.md "top" 3
create_doc docs/prozesse/htop.md "htop" 4
create_doc docs/prozesse/jobs.md "jobs" 5
create_doc docs/prozesse/signals.md "Signals" 6
create_doc docs/prozesse/kill.md "kill" 7

create_category docs/benutzerverwaltung "Benutzerverwaltung" 7 "Benutzer, Gruppen und Berechtigungen."

create_doc docs/benutzerverwaltung/sudo.md "sudo" 1
create_doc docs/benutzerverwaltung/sudoedit.md "sudoedit" 2
create_doc docs/benutzerverwaltung/chown.md "chown" 3
create_doc docs/benutzerverwaltung/chmod.md "chmod" 4
create_doc docs/benutzerverwaltung/umask.md "umask" 5
create_doc docs/benutzerverwaltung/passwd.md "passwd" 6

create_category docs/systemd "systemd" 8 "Systemd und Serviceverwaltung."

create_doc docs/systemd/systemctl.md "systemctl" 1
create_doc docs/systemd/journalctl.md "journalctl" 2
create_doc docs/systemd/services.md "Services" 3
create_doc docs/systemd/targets.md "Targets" 4
create_doc docs/systemd/timer.md "Timer" 5

create_category docs/pakete "Paketverwaltung" 9 "Software installieren und verwalten."

create_doc docs/pakete/apt.md "apt" 1
create_doc docs/pakete/apt-cache.md "apt-cache" 2
create_doc docs/pakete/dpkg.md "dpkg" 3
create_doc docs/pakete/nix.md "nix" 4
create_doc docs/pakete/nix-shell.md "nix-shell" 5
create_doc docs/pakete/nix-env.md "nix-env" 6
create_doc docs/pakete/nixos-rebuild.md "nixos-rebuild" 7

create_category docs/entwicklungswerkzeuge "Entwicklungswerkzeuge" 10 "Werkzeuge für Entwicklung und Versionskontrolle."

mkdir -p docs/entwicklungswerkzeuge/git

create_doc docs/entwicklungswerkzeuge/git/git-konzepte.md "Git Konzepte" 1
create_doc docs/entwicklungswerkzeuge/git/git-init.md "git init" 2
create_doc docs/entwicklungswerkzeuge/git/git-add.md "git add" 3
create_doc docs/entwicklungswerkzeuge/git/git-commit.md "git commit" 4
create_doc docs/entwicklungswerkzeuge/git/git-branch.md "git branch" 5
create_doc docs/entwicklungswerkzeuge/git/git-merge.md "git merge" 6
create_doc docs/entwicklungswerkzeuge/git/git-rebase.md "git rebase" 7
create_doc docs/entwicklungswerkzeuge/git/git-remote.md "git remote" 8
create_doc docs/entwicklungswerkzeuge/git/git-workflow.md "Git Workflow" 9

create_doc docs/entwicklungswerkzeuge/vim.md "Vim" 10

create_category docs/referenz "Referenz" 11 "Referenz für allgemeine Werkzeuge."

create_doc docs/referenz/man.md "man" 1
create_doc docs/referenz/help.md "help" 2
create_doc docs/referenz/set.md "set" 3
create_doc docs/referenz/export.md "export" 4
create_doc docs/referenz/script.md "script" 5
create_doc docs/referenz/environment.md "Environment" 6

create_category docs/beispiele "Praxisbeispiele" 12 "Praxisnahe Anwendungsfälle."

create_doc docs/beispiele/pipes.md "Pipes" 1
create_doc docs/beispiele/log-analyse.md "Log Analyse" 2
create_doc docs/beispiele/dateisuche.md "Dateisuche" 3
create_doc docs/beispiele/systemanalyse.md "Systemanalyse" 4
create_doc docs/beispiele/git-workflows.md "Git Workflows" 5

echo "Documentation structure created."
