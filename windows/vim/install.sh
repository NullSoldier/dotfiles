#!/bin/sh

mkdir -p "$OUT/.vim/"

rm -rf "$OUT/.vim/autoload"
rm -rf "$OUT/.vim/bundle"

ln -f "$HEREP/.vimrc" "$OUT/.vimrc"
ln -f -s "$HEREP/autoload" "$OUT/.vim/autoload"
ln -f -s "$HEREP/bundle" "$OUT/.vim/bundle"
