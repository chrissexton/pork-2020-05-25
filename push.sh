#!/bin/sh
set -o pipefail

FILE="$1"

[ "$FILE" ] || FILE="."

git pull && git add "$FILE" && git commit -m'add image' && git push
