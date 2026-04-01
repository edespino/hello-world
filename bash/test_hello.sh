#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ACTUAL="$(bash "$SCRIPT_DIR/hello.sh")"
EXPECTED="$(cat "$SCRIPT_DIR/expected_output.txt")"

if [ "$ACTUAL" = "$EXPECTED" ]; then
    echo "PASS: hello.sh output matches expected output"
    exit 0
else
    echo "FAIL: output mismatch"
    echo "  Expected: $EXPECTED"
    echo "  Actual:   $ACTUAL"
    exit 1
fi
