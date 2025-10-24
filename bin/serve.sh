#!/usr/bin/env bash
set -euo pipefail

./bin/build.sh

echo "Ready"

# Prefer watchexec (recommended), fall back to entr if available.
if command -v watchexec >/dev/null 2>&1; then
  echo "Using watchexec to watch .sass, .haml and .json files..."
  # Recursively watch current dir for these extensions and run the build command on change
  watchexec --watch . --exts sass,haml,json -- "zsh -ic 'echo Building...; ./bin/build.sh; echo New build available.'"

elif command -v entr >/dev/null 2>&1; then
  echo "Using entr to watch .sass, .haml and .json files..."
  # entr expects a list of files on stdin; loop so new files are picked up if added/removed
  while true; do
    find . -type f \( -name '*.sass' -o -name '*.scss' -o -name '*.haml' -o -name '*.json' \) | entr -d zsh -ic 'echo Building...; ./bin/build.sh; echo New build available.'
  done

else
  echo "Error: neither 'watchexec' nor 'entr' found on PATH."
  echo "Install one with Homebrew, e.g. 'brew install watchexec' or 'brew install entr'."
  exit 1
fi