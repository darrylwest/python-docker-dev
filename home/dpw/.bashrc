#
# darryl.west
# 2017-06-21 13:21:26
#

set -o vi

export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin"
export EDITOR=vi
export PYTHONSTARTUP=~/.pythonrc.py

pv=`python --version | sed -e 's/ //g'`
PS1="dpw@$pv: "

alias hi='history'
alias rm='/bin/rm -i'
alias lc='/bin/ls -c'
alias l='/bin/ls -la'
alias lh='/bin/ls -lt | head -50'

alias vi=/usr/bin/vim

alias ut='exit'

#################################################################################
# git aliases
alias gst='git status'
alias gbr='git branch -a'
alias gco='git checkout'
alias gcom='git commit'
alias gac='git add . ; git commit -v'
alias gpull='git pull'
alias gpush='git push'

alias mk='task-runner.py'
[ -x .cargo/bin/lsd ] && alias l='lsd -lA'

/usr/bin/cat ~/.motd
