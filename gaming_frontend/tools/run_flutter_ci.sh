#!/usr/bin/env bash
set -euo pipefail
# Ensure this script is invoked from anywhere; it cd's into the Flutter project root.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$PROJECT_ROOT"
flutter pub get
flutter analyze
CI=true flutter test
