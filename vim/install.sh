#!/bin/sh

mkdir -p "$OUT/.vim/"

ln -f "$HEREP/.vimrc" "$OUT/.vimrc"
ln -f -s "$HEREP/autoload" "$OUT/.vim/autoload"
ln -f -s "$HEREP/bundle" "$OUT/.vim/bundle"
