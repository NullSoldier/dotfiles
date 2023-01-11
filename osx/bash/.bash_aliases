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
alias gvus="gv upstream staging"
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
alias pt="cd $MY_PROJECTS/rolltable"
alias pt-common="pt; cd common; nvm use"
alias pt-common-run="pt-common; yarn watch"
alias pt-app="pt; cd app; nvm use"
alias pt-app-run="pt-app; yarn dev"
alias pt-api="pt; cd platform; nvm use"
alias pt-api-run="pt-api; yarn start"
alias pt-api-run-once="pt-api; yarn start:once"
alias pt-api-run-api="pt-api; yarn start:api"
alias pt-api-run-table="pt-api; yarn start:table"
alias pt-agones="pt; cd agones; nvm use"
alias pt-agones-run="pt-agones; yarn start"

# Ironfish
alias fish="cd $MY_PROJECTS/fish"
alias fish-cli="fish; cd ironfish-cli"
alias fish-fish="fish; cd ironfish"
alias fish-api="cd $MY_PROJECTS; cd fish-api"
alias fish-website="cd $MY_PROJECTS; cd fish-website"
alias fish-testnet="cd $MY_PROJECTS; cd fish-testnet"
alias fish-explorer="cd $MY_PROJECTS; cd fish-explorer"
alias fish-terraform="cd $MY_PROJECTS; cd fish-terraform"
alias fishy="fish-cli; nvm use &> /dev/null; yarn build &> /dev/null; ./bin/ironfish"

# Chrome
alias unsafechrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-web-security --ignore-certificate-errors --ignore-urlfetcher-cert-requests &> /dev/null"
