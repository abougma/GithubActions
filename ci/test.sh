#!/usr/bin/env bash
set -euo pipefail

echo "Starting CI test script"

# Simple environment checks (example tests)
echo "Checking for bash..."
if ! command -v bash >/dev/null; then
  echo "bash not found" >&2
  exit 1
fi

echo "Checking for git..."
if ! command -v git >/dev/null; then
  echo "git not found" >&2
  exit 1
fi

echo "Running a basic assertion"
if [ -n "$(echo test)" ]; then
  echo "Basic assertion passed"
else
  echo "Basic assertion failed" >&2
  exit 1
fi

echo "All tests passed"
