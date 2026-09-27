#!/usr/bin/env bash
set -euo pipefail

ARCHIVE="casa-21-build-11-fresh-site-master-github.zip"
WORKDIR=".render-src"

rm -rf "$WORKDIR"
mkdir -p "$WORKDIR"
unzip -q "$ARCHIVE" -d "$WORKDIR"

cd "$WORKDIR/casa11"

corepack enable
corepack prepare pnpm@11.25.0 --activate
pnpm install --frozen-lockfile
pnpm build
