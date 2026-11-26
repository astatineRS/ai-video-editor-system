#!/usr/bin/env bash
# Usage: new_project.sh <brand-folder> "<project name>" <reel|short|youtube|longform|ad>
set -euo pipefail
[ $# -ge 2 ] || { echo "Usage: $0 <brand-folder> \"<name>\" [type]"; exit 1; }
BRAND="$1"; NAME="$2"; TYPE="${3:-reel}"
HERE="$(cd "$(dirname "$0")" && pwd)"
SLUG="$(printf '%s' "$NAME" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g')"
DATE="$(date +%F)"
DIR="$BRAND/Projects/${DATE}_${SLUG}"
[ -e "$DIR" ] && { echo "Already exists: $DIR"; exit 1; }
mkdir -p "$DIR"/{script,edit,graphics,audio}
sed -e "s/{{NAME}}/$NAME/g" -e "s/{{TYPE}}/$TYPE/g" -e "s/{{DATE}}/$DATE/g" \
  "$HERE/../templates/BRIEF.md" > "$DIR/BRIEF.md"
echo "Created $DIR"
