#!/bin/sh

HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$HOME";

echo "Installing to $HOME from $OUT"

for project in bash git vim; do
	echo "Installing $project to $OUT"

	HEREP="$HERE/$project"
	. "$HEREP/install.sh"
done


#cp -R ./root-files/. $HOME/

#echo "Installing git content to $HOME/.git/"
#cp -R ./git/. $HOME/.git/

#echo "Installing vim content to $HOME/.vim/"
#cp -R ./vim/. $HOME/.vim/

#source $HOME/.bashrc
