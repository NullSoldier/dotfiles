# DISK SPECIFIC
alias projects='cd ~/Desktop/Projects'
alias lg='cd ~/Desktop/Projects/2dlight'

# GIT
alias gs="git status -s -b"
alias gc="git commit -v"
alias gcp="git commit -v -p"
alias gi="git add -i" # Different from Vim
alias g?="git diff"
alias g??="git diff --cached" # Different from Vim
alias gv="git pull --ff --commit"
alias g^="git push"
alias gp="git checkout -p"
alias go="git checkout"

# DISK NAV
alias cd.="cd ../"
alias cd..="cd ../../"
alias cd...="cd ../../../"

# SYS
alias build='./build.sh'
alias lsp='ls -pH'
alias lsa='ls -pHa'

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
