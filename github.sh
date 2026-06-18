
set -euo pipefail

OWNER="joel-furrer"
REPO="linux-guide"

PROJECT_NUMBER=1

create_issue() {
    local milestone="$1"
    local area="$2"
    local folder="$3"
    local file="$4"

    local title="Write ${file}.md"

    local body
    body=$(cat <<EOF
## File

docs/${folder}/${file}.md

## Goal

This page should provide a clear introduction to ${file//-/ }. It should explain the purpose, core concepts, and common use cases relevant to Linux users. Readers should understand when and why this topic is used in practice. The page should provide enough context to prepare readers for hands-on examples and related topics.

## Acceptance Criteria

- Content is written in English
- Terminology follows \`project/TERMINONOLGY.md\`
- Admonitions follow \`project/ADMONITIONS.md\`
- Structure follows \`project/STYLE_GUIDE.md\`
EOF
)

    echo "Creating: $title"

    issue_url=$(
        gh issue create \
            --repo "${OWNER}/${REPO}" \
            --title "$title" \
            --body "$body" \
            --milestone "$milestone" \
            --label "type:documentation" \
            --label "priority:medium" \
            --label "$area"
    )

    gh project item-add \
        "$PROJECT_NUMBER" \
        --owner "$OWNER" \
        --url "$issue_url" \
		|| true
		

    echo "Done: $issue_url"
}

create_milestone() {
    local milestone="$1"
    local area="$2"
    local folder="$3"

    shift 3

    for file in "$@"; do
        create_issue "$milestone" "$area" "$folder" "$file"
    done
}

###############################################################################
# v0.6.0 Process Management
###############################################################################

create_milestone \
    "v0.6.0 Process Management" \
    "area:processes" \
    "processes" \
    ps \
    pstree \
    top \
    htop \
    jobs \
    signals \
    kill

###############################################################################
# v0.7.0 User & Permission Management
###############################################################################

create_milestone \
    "v0.7.0 User & Permission Management" \
    "area:user-management" \
    "user-management" \
    whoami \
    id \
    useradd \
    usermod \
    groupadd \
    passwd \
    sudo \
    sudoedit \
    chmod \
    chown \
    umask

###############################################################################
# v0.8.0 systemd Administration
###############################################################################

create_milestone \
    "v0.8.0 systemd Administration" \
    "area:systemd" \
    "systemd" \
    systemctl \
    services \
    targets \
    timer \
    journalctl

###############################################################################
# v0.9.0 Package Management
###############################################################################

create_milestone \
    "v0.9.0 Package Management" \
    "area:packages" \
    "packages" \
    apt \
    apt-cache \
    nix \
    nix-shell \
    nixos-rebuild

###############################################################################
# v0.10.0 Development Tools
###############################################################################

create_milestone \
    "v0.10.0 Development Tools" \
    "area:development-tools" \
    "development-tools" \
    vim \
    git-concepts \
    git-init \
    git-add \
    git-commit \
    git-branch \
    git-merge \
    git-rebase \
    git-remote \
    git-workflow

###############################################################################
# v0.11.0 Reference & Practical Examples
###############################################################################

create_milestone \
    "v0.11.0 Reference & Practical Examples" \
    "area:examples" \
    "examples" \
    man \
    help \
    set \
    export \
    environment \
    script \
    pipes \
    file-search \
    log-analysis \
    system-analysis \
    git-workflows

echo
echo "All issues created successfully."
