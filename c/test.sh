#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Build
make -C "$SCRIPT_DIR" clean hello

# Run and verify
ACTUAL="$("$SCRIPT_DIR/hello")"
EXPECTED="Hello, World!"

if [ "$ACTUAL" = "$EXPECTED" ]; then
    echo "PASS: hello output matches expected output"
    make -C "$SCRIPT_DIR" clean
    exit 0
else
    echo "FAIL: output mismatch"
    echo "  Expected: $EXPECTED"
    echo "  Actual:   $ACTUAL"
    make -C "$SCRIPT_DIR" clean
    exit 1
fi
