#!/bin/bash
echo "Installing to $HOME"

echo "Installing root files to $HOME/"
cp -r ./root-files/. $HOME/

echo "Installing .git files to $HOME/.git/"
#cp -r ./git/ %HOME/.git/

echo "Installing .vim folder's content to $HOME/.vim/"
#cp -r ./vim/ %HOME/.vim/
