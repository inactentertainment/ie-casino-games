#!/usr/bin/env bash
set -euo pipefail

ARCHIVE="casa-21-build-11-fresh-site-master-github.zip"
WORKDIR=".render-src"

rm -rf "$WORKDIR"
mkdir -p "$WORKDIR"
unzip -q "$ARCHIVE" -d "$WORKDIR"

cd "$WORKDIR/casa11"

npx --yes pnpm@11.25.0 install --frozen-lockfile
npx --yes pnpm@11.25.0 build
