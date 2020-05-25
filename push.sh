#!/bin/sh
set -o pipefail

NAME="$1"
FILE="$2"

URL="https://img.velour.ninja/"

[ "$FILE" ] || FILE="."

git pull && git add "$FILE" && git commit -m'add image' && git push

[ "$NAME" ] && [ `which curl` ] && curl 'https://catbase.velour.ninja/meme/add' --data $(printf '{"Name":"%s","URL":"%s%s"}' $NAME $URL $FILE)

[ "$NAME" ] && printf 'Your meme "%s" is at %s%s\n' $NAME $URL $FILE
