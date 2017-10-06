#!/bin/sh
set -e
                                                                            
platform=

if [[ "$(uname -s)" == "Msys" ]]; then
  platform=windows
fi

if [[ "$(uname -s)" == "MINGW64_NT-10.0" ]]; then
  platform=windows
fi

if [[ "$(uname -s)" == "Darwin" ]]; then
  platform=osx
fi

if [[ -z "$platform" ]];then     
  echo "No platform detected, aborting."
  exit                                                                      
fi

if [[ -z "$HOME" ]];then     
  echo "Must set $HOME environment variable, aborting."
  exit                                                                      
fi

{
	export HERE="$(cd "$(dirname "$0")" && pwd)"
	export OUT="$HOME";

	echo "Installing on $platform to $HOME from $HERE"

	for project in bash git hg vim zsh tmux psql conemu; do
		export HEREP="$HERE/$platform/$project"
		export INSTALL_SCRIPT="$HEREP/install.sh"

		if [ ! -f "$INSTALL_SCRIPT" ]; then
   			continue
		fi

		echo "Installing $project to $OUT"
		. "$HEREP/install.sh"
	done
}