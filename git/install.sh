#!/bin/sh

# all directories are created
mkdir -p "$OUT/.git"

cp "$HEREP/.gitconfig" "$OUT/.git/.gitconfig"
cp "$HEREP/.gitk" "$OUT/.git/.gitk"
