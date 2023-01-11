#!/bin/sh

ln -f "$HEREP/.bash_home" "$OUT/.bash_home"
ln -f "$HEREP/.bash_aliases" "$OUT/.bash_aliases"
ln -f "$HEREP/.bash_functions" "$OUT/.bash_functions"

# Only use profile to link to other things
touch ~/.bash_profile && grep -qxF 'source ~/.bash_home' ~/.bash_profile || echo 'source ~/.bash_home' >> ~/.bash_profile
touch ~/.bash_profile && grep -qxF 'source ~/.bash_keys' ~/.bash_profile || echo 'source ~/.bash_keys' >> ~/.bash_profile
touch ~/.bash_profile && grep -qxF 'source ~/.bash_aliases' ~/.bash_profile || echo 'source ~/.bash_aliases' >> ~/.bash_profile

source ~/.bash_profile
