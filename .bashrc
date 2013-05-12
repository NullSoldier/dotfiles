alias projects='cd ~/Desktop/Projects'

alias gs="git status -s -b"
alias gc="git commit -v"
alias g.="git add -p"
alias gi="git add -i" # Different from Vim
alias g?="git diff"
alias g??="git diff --cached" # Different from Vim
alias gv="git pull --ff --commit"
alias g^="git push"
alias gp="git checkout -p"
alias go="git checkout"

alias cd.="cd ../"
alias cd..="cd ../../"
alias cd...="cd ../../../"

alias pm4="premake4"

export PATH="/usr/local/bin:$PATH"

alias run='./build/light'
alias build='./build.sh'
