export MY_PROJECTS="~/Desktop/Projects"
export PATH="/usr/local/bin:$PATH"
export PATH="/C/Python27/Scripts:$PATH"
export PATH="/usr/local/Cellar/glfw3/3.1.2:$PATH"

if [ -f $HOME/.bash_aliases ]
then
  . $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_functions ]
then
  . $HOME/.bash_functions
fi
