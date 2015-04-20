#!/bin/sh

ln -f "$HEREP/.vimrc" "$OUT/.vimrc"

mkdir -p "$OUT/.vim"
ln -f "$HEREP/autoload/" "$OUT/.vim/autoload/"
ln -f "$HEREP/bundle/" "$OUT/.vim/bundle/"
