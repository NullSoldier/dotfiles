#!/bin/sh

cp "$HEREP/.vimrc" "$OUT/.vimrc"

mkdir -p "$OUT/.vim"
cp -r "$HEREP/autoload/" "$OUT/.vim/autoload/"
cp -r "$HEREP/bundle/" "$OUT/.vim/bundle/"
