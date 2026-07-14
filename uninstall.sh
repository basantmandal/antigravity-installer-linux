#!/usr/bin/env bash
set -e

sudo rm -rf /opt/Antigravity-IDE

rm -f "$HOME/.local/share/applications/antigravity.desktop"

update-desktop-database "$HOME/.local/share/applications" 2>/dev/null || true

echo "Antigravity IDE removed."