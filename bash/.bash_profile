export MY_PROJECTS="~/Desktop/Projects"
export PATH="/usr/local/bin:$PATH"

# FUNCTIONS
function up()
{
    dir=""
    if [ -z "$1" ]; then
        dir=..
    elif [ $1 =~ ^[0-9]+$ ]; then
        x=0
        while [ $x -lt ${1:-1} ]; do
            dir=${dir}../
            x=$(($x+1))
        done
    else
        dir=${PWD%/$1/*}/$1
    fi
    cd "$dir";
}

function upstr()
{
    echo "$(up "$1" && pwd)";
}

function swap()
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

function usedb()
{
    export DATABASE_URL=postgres://localhost/"$1"
}

if [ -f $HOME/.bash_aliases ]
then
  . $HOME/.bash_aliases
fi
