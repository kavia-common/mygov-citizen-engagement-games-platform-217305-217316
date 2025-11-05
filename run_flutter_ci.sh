#!/usr/bin/env bash
set -euo pipefail
# Wrapper to run Flutter CI from monorepo root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FLUTTER_DIR="$SCRIPT_DIR/gaming_frontend"
if [ ! -f "$FLUTTER_DIR/pubspec.yaml" ]; then
  echo "Flutter project not found at $FLUTTER_DIR"
  exit 1
fi
cd "$FLUTTER_DIR"
exec ./tools/ci_entrypoint.sh
