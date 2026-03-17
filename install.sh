#!/bin/bash
# Installs the obsidian skill to ~/.claude/commands/obsidian.md
# Usage: ./install.sh [vault-path]
# Default vault path: ~/Documents/Obsidian Vault

VAULT_PATH="${1:-$HOME/Documents/Obsidian Vault}"
DEST="$HOME/.claude/commands/obsidian.md"

if [ ! -d "$VAULT_PATH" ]; then
  echo "Error: vault not found at '$VAULT_PATH'"
  echo "Usage: ./install.sh [vault-path]"
  exit 1
fi

sed "s|\$VAULT_PATH|$VAULT_PATH|g" skill.md > "$DEST"
echo "Installed to $DEST (vault: $VAULT_PATH)"
