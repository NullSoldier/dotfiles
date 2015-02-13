#!/bin/sh

ln -f "$HEREP/.zsh_profile" "$OUT/.zsh_profile"

mkdir -p "$OUT/.zsh"
ln -f -s "$HEREP/completion/" "$OUT/.zsh/"
