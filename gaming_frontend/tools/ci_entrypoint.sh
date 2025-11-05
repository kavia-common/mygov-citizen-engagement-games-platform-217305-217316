#!/usr/bin/env bash
set -euo pipefail
# This script ensures we run Flutter commands from the Flutter project root.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# Guard: ensure pubspec.yaml exists here
if [ ! -f "$PROJECT_ROOT/pubspec.yaml" ]; then
  echo "Error: Flutter project root not found at $PROJECT_ROOT"
  exit 1
fi

cd "$PROJECT_ROOT"
echo "Running in Flutter project: $(pwd)"
flutter pub get
flutter analyze
CI=true flutter test
