#!/usr/bin/env bash
# Preview the Fibo Knowledge Base website locally.
# The page fetches features.json at runtime, so it must be served over http
# (opening index.html via file:// is blocked by the browser's same-origin policy).
#
# Usage:  ./serve.sh [PORT]      (default port: 8000)

set -euo pipefail
PORT="${1:-8000}"
cd "$(dirname "$0")"

echo "Fibo Knowledge Base — serving at http://localhost:${PORT}/"
echo "Press Ctrl+C to stop."
exec python3 -m http.server "$PORT" --bind 127.0.0.1
