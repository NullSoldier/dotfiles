#!/bin/sh

ln -f "$HEREP/.zsh_home" "$OUT/.zsh_home"

mkdir -p "$OUT/.zsh"
ln -f -s "$HEREP/completion/" "$OUT/.zsh/"

# Only use zshrc to link to other things
touch ~/.zshrc && grep -qxF 'source ~/.zsh_home' ~/.zshrc || echo 'source ~/.zsh_home' >> ~/.zshrc

source ~/.zshrc
