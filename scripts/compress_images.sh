#!/usr/bin/env bash
set -euo pipefail

need() { command -v "$1" >/dev/null 2>&1 || { echo "Missing dependency: $1" >&2; exit 1; }; }

# Only check tools if relevant files are passed
has_png=0; has_jpg=0
for f in "$@"; do
  case "${f,,}" in
    *.png) has_png=1 ;;
    *.jpg|*.jpeg) has_jpg=1 ;;
  esac
done

[[ "$has_png" -eq 1 ]] && need oxipng
[[ "$has_jpg" -eq 1 ]] && need jpegoptim

for f in "$@"; do
  case "${f,,}" in
    *.png)
      oxipng -o 4 --strip safe "$f" >/dev/null
      ;;
    *.jpg|*.jpeg)
      jpegoptim --strip-all --all-progressive --max=85 "$f" >/dev/null
      ;;
  esac
done

# Re-add rewritten files to the index
git add -- "$@"
