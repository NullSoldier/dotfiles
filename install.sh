#!/bin/bash
echo "Installing to $HOME"

echo "Installing root-files content to $HOME/"
cp -R ./root-files/. $HOME/

echo "Installing git content to $HOME/.git/"
#cp -R ./git/. %HOME/.git/

echo "Installing vim content to $HOME/.vim/"
#cp -R ./vim/. %HOME/.vim/
