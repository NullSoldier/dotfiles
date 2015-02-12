
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
alias wob-test='wob && ./manage.py test --failfast'
alias wob-run='wob && ./manage.py runserver'
alias wob-mig='wob && ./manage.py migrate'
alias wob-grunt='wob && cd appfiles && grunt server'
alias wob-karma='wob && cd appfiles && karma start'
alias wob-sel='wob && cd appfiles && webdriver-manager start'
alias wob-protractor='wob && cd appfiles && protractor protractor.conf.js'
alias wob-deploy-branch='./build-current-branch.sh && git push heroku Build:master -f'
