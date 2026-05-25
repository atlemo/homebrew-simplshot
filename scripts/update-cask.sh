#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <version>"
  echo "Example: $0 1.5.5"
  exit 1
fi

VERSION="$1"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CASK_FILE="$ROOT_DIR/Casks/simplshot.rb"
DOWNLOAD_URL="https://atle.co/simplshot/SimplShot-${VERSION}.zip"
TMP_ZIP="$(mktemp "/tmp/SimplShot-${VERSION}.XXXXXX.zip")"

cleanup() {
  rm -f "$TMP_ZIP"
}

trap cleanup EXIT

echo "Downloading ${DOWNLOAD_URL}"
curl -fL "$DOWNLOAD_URL" --output "$TMP_ZIP"

SHA256="$(shasum -a 256 "$TMP_ZIP" | awk '{print $1}')"

echo "Updating ${CASK_FILE}"
perl -0pi -e 's/version "[^"]+"/version "'"$VERSION"'"/' "$CASK_FILE"
perl -0pi -e 's/sha256 "[^"]+"/sha256 "'"$SHA256"'"/' "$CASK_FILE"

echo
echo "Updated SimplShot cask:"
echo "  version: ${VERSION}"
echo "  sha256: ${SHA256}"
echo
echo "Next steps:"
echo "  brew style --display-cop-names Casks/simplshot.rb"
echo "  git diff -- Casks/simplshot.rb"
