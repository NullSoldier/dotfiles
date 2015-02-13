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
	if [ -z $1 ]; then
		unset DATABASE_URL
	else
		open /Applications/Postgres.app
		export DATABASE_URL="postgres://localhost/$1"
	fi
}

function whichdb()
{
	if [ -z $DATABASE_URL ]; then
		echo '$DATABASE_URL is not set'
		return
	fi
	echo $DATABASE_URL
}
