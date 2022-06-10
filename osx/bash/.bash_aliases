# GIT
alias gs="git status -s -b"
alias gc="git commit -v"
alias gcp="git commit -v -p"
alias gap="git add -p"
alias gi="git add -i" # Different from Vim
alias 'g?'="git diff"
alias 'g??'="git diff --cached" # Different from Vim
alias gv="git pull --rebase"
alias g^="git push"
alias gp="git checkout -p"
alias go="git checkout"
alias gvu="gv upstream master"
alias gbl="git branch -l"
alias gbD="git branch -D"
alias gfu="git fetch upstream"
alias gcleanpr="git branch -l | xargs git branch -d"
alias gwip="git add --all && git commit -m WIP"
alias gpop="git reset --soft HEAD~1 && git reset"
alias gfu='git fetch upstream'
alias glog='git log --graph --pretty=format:"%C(yellow)%h%Creset%C(cyan)%C(bold)%d%Creset %C(cyan)(%cr)%Creset %C(green)%ce%Creset %s"'
alias gca='git commit --amend'

# Mercurial
alias hpop="hg strip --keep -r ."

# DISK NAV
alias cd.="cd ../"
alias cd..="cd ../../"
alias cd...="cd ../../../"

# SYS
alias build='./build.sh'
alias lsp='ls -pH'
alias lsa='ls -pHa'

# DISK SPECIFIC
alias projects="cd $MY_PROJECTS"
alias bworks="cd $MY_PROJECTS/BetterWorks"
alias clog="cd $MY_PROJECTS/clog"

# Sunrise 
alias sunrise="cd $MY_PROJECTS/sunrise"
alias sunrise-client="cd $MY_PROJECTS/sunrise/client"
alias sunrise-server="cd $MY_PROJECTS/sunrise/server"

# BetterWorks
alias wob='bworks'
alias wob-test='wob && py.test -n 4 -x'
alias wob-run='wob && ./manage.py runserver'
alias wob-mig='wob && ./manage.py migrate'
alias wob-grunt='wob && cd appfiles && grunt server'
alias wob-karma='wob && cd appfiles && ./karma.sh'
alias wob-protractor='wob && ./protractor.sh'
alias wob-elastic='~/Desktop/elasticsearch.2.3.0/bin/elasticsearch'
alias wob-jira='projects && cd Jira-Connector && ./manage.py runserver 8001'
alias wob-salesforce='projects && cd Salesforce-Connector && ./manage.py runserver 8002'
alias wob-deploy-branch='./build-current-branch.sh && git push heroku Build:master -f'
alias wob-valid='wob && flake8 && isortq && cd appfiles && grunt coffeelint'

# Virtual Env
alias mkvirtualenv='/c/Python27/scripts/mkvirtualenv.bat'
alias lsvirtualenv='/c/Python27/scripts/lsvirtualenv.bat'
alias rmvirtualenv='/c/Python27/scripts/rmvirtualenv.bat'
alias workon='/c/Python27/scripts/workon.bat'
alias deactivate='/c/Python27/scripts/deactivate.bat'

# Telltale
alias tt="cd c:/Telltale"
alias tt-t3="cd c:/Telltale/T3"
alias tt-script="cd $MY_PROJECTS/webtools/scriptreader"
alias tt-tb="vs14build /c/Telltale/T3/Build/Tool/Tool.sln //build 'Debug|x64' //sn-dbs"

# RollTable 
alias pt="cd $MY_PROJECTS/playtable"
alias pt-common="pt; cd common"
alias pt-common-run="pt-common; npm run watch"
alias pt-app="pt; cd app"
alias pt-app-run="pt-app; npm run start"
alias pt-api="pt; cd platform"
alias pt-api-run="pt-api; npm run start"
alias pt-api-run-api="pt-api; npm run start:api"
alias pt-api-run-table="pt-api; npm run start:table"
alias pt-proxy="pt; cd proxy"
alias pt-proxy-run="pt-proxy; npm run start"
alias pt-agones="pt; cd agones"
alias pt-agones-run="pt-agones; npm run start"

# Ironfish
alias fish="cd $MY_PROJECTS/fish"
alias fish-cli="fish; cd ironfish-cli"
alias fish-node="fish; cd ironfish"
alias fish-captain="fish; cd captain"
alias fish-fish="fish; cd ironfish"
alias fish-wasm="fish; cd ironfish-wasm"
alias fish-tf="cd $MY_PROJECTS/fish-terraform"

# Mac OSX
alias subl="/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"

# Kubernetes
alias kube="kubectl"
alias dock="doctl"
