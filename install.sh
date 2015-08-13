#!/bin/sh

export HERE="$(cd "$(dirname "$0")" && pwd)"
export OUT="$HOME";

echo "Installing to $HOME from $HERE"

for project in bash git vim zsh tmux; do
	echo "Installing $project to $OUT"

	export HEREP="$HERE/$project"
	. "$HEREP/install.sh"
done
