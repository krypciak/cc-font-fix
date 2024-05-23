#!/bin/sh
set -e
BASE_NAME="$(jq '.id' ccmod.json | sed 's/^"//;s/"$//')"
NAME="${BASE_NAME}-$(jq '.version' ccmod.json | sed 's/^"//;s/"$//').zip"
rm -rf "$BASE_NAME"*
mkdir -p cc-font-fix
cp -rf assets ccmod.json ./cc-font-fix
zip -r "$NAME" ./cc-font-fix
rm -rf ./cc-font-fix
