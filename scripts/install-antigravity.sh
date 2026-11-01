#!/usr/bin/env bash
# Universal Blog & Antigravity Skills Installer
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)"
GLOBAL_TARGET="${HOME}/.gemini/config/skills"
LOCAL_TARGET="${REPO_DIR}/.agents/skills"

MODE="global"
if [[ "${1:-}" == "--local" ]]; then
    MODE="local"
fi

if [[ "$MODE" == "global" ]]; then
    TARGET_DIR="$GLOBAL_TARGET"
    echo "Installing Universal Blog skills globally into Antigravity: ${TARGET_DIR}..."
else
    TARGET_DIR="$LOCAL_TARGET"
    echo "Installing Universal Blog skills locally into workspace: ${TARGET_DIR}..."
fi

mkdir -p "$TARGET_DIR"

count=0
for skill_dir in "${REPO_DIR}/skills"/blog*; do
    if [[ -d "$skill_dir" ]]; then
        skill_name="$(basename "$skill_dir")"
        dest="${TARGET_DIR}/${skill_name}"
        rm -rf "$dest"
        cp -R "$skill_dir" "$dest"
        count=$((count + 1))
    fi
done

echo "Successfully installed ${count} Blog skills to ${TARGET_DIR}!"
echo "Antigravity and Gemini agents can now trigger all Blog skills automatically."
