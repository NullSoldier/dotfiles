#!/bin/sh

mkdir -p "$OUT/.vim/"

ln -f "$HEREP/.vimrc" "$OUT/.vimrc"
ln -f -s "$HEREP/autoload" "$OUT/.vim/autoload"
ln -f -s "$HEREP/bundle" "$OUT/.vim/bundle"

grep -qxF 'export EDITOR=vim' ~/.bash_home || echo 'export EDITOR=vim' >> ~/.bash_home
