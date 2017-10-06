export MY_PROJECTS="~/Desktop/Projects"
export PATH="/C/Python27/Scripts:$PATH"

if [ -f $HOME/.bash_aliases ]
then
  . $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_functions ]
then
  . $HOME/.bash_functions
fi
