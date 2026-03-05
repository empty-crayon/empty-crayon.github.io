#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4000}"

if command -v python3 >/dev/null 2>&1; then
  echo "Serving static site at http://127.0.0.1:${PORT}"
  exec python3 -m http.server "${PORT}" --bind 127.0.0.1
else
  echo "python3 is required to run a local server." >&2
  exit 1
fi
