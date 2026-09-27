#!/usr/bin/env bash
set -euo pipefail

cd ".render-src/casa11"

export SITES_RUNTIME_ROOT="${SITES_RUNTIME_ROOT:-/tmp/casa21-runtime}"
mkdir -p "$SITES_RUNTIME_ROOT"

# Initialize the local D1 schema on first boot. Re-running is harmless here;
# an "already exists" response is ignored.
./node_modules/.bin/wrangler d1 execute site-creator-d1   --local   --file=drizzle/0000_lyrical_justice.sql   --config dist/server/wrangler.json   --persist-to "$SITES_RUNTIME_ROOT" >/dev/null 2>&1 || true

exec node --import ./scripts/sites-env.mjs ./node_modules/wrangler/bin/wrangler.js dev   --config dist/server/wrangler.json   --local   --persist-to "$SITES_RUNTIME_ROOT"   --ip 0.0.0.0   --port "${PORT:-10000}"   --inspector-port 0
