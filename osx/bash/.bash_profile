export MY_PROJECTS="~/projects"

export PATH="/usr/local/bin:$PATH"
export PATH="/C/Python27/Scripts:$PATH"
export PATH="/usr/local/Cellar/glfw3/3.1.2:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

if [ -f $HOME/.bash_aliases ]
then
  . $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_functions ]
then
  . $HOME/.bash_functions
fi

export OCLIF_TS_NODE=0
export EDITOR=vim
