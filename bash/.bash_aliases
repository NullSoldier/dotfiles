# GIT
#
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
alias gcleanpr="gbl | grep pr | xargs git branch -D"

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
