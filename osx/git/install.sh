#!/bin/sh

# all directories are created
mkdir -p "$OUT/.git"

ln -f "$HEREP/.gitconfig" "$OUT/.git/.gitconfig"
ln -f "$HEREP/.gitk" "$OUT/.git/.gitk"
