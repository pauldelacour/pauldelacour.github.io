#!/usr/bin/env bash
# Migrate binary assets from the current Academic Pages repository BEFORE retiring it.
set -euo pipefail
SITE="$(cd "$(dirname "$0")/.." && pwd)"
SRC="${1:-}"
if [[ -z "$SRC" ]]; then
  echo "Usage: bash scripts/import_old_assets.sh /path/to/old/pauldelacour.github.io"
  echo "If needed: git clone https://github.com/pauldelacour/pauldelacour.github.io.git old-site"
  exit 2
fi
if [[ ! -d "$SRC/images" || ! -d "$SRC/files" ]]; then
  echo "Cannot find images/ and files/ in $SRC" >&2
  exit 1
fi
mkdir -p "$SITE/images" "$SITE/files"
cp -R "$SRC/images/." "$SITE/images/"
cp -R "$SRC/files/." "$SITE/files/"
echo "Copied images/ and files/ into $SITE"
echo "Verify images/visuals/solid_phase.png, liquid_phase.png and images/photo_cv.jpg."
echo "Commit the assets to the NEW repository BEFORE switching the GitHub Pages site."
