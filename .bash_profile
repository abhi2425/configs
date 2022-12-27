# General aliases
alias c='clear'
alias e='exit'
alias lll='ls -ltr'
alias lsa='ls -la'

#MongoDB
alias mongod='mongod --dbpath=./data/db'

# Git aliases
alias g='git'
alias gb='git branch'
alias gs='git status'
alias gl='git log --oneline'
alias gck='git checkout'
alias gm='git merge'
alias gpl='git pull'
alias gpsh='git push'
alias grb='git rebase'
alias grv='git revert'
alias grs='git reset'
alias gcl='git clone'

# Docker aliases
alias doc='docker'
alias dm='docker-machine'
alias dc='doc container'
alias di='doc image'
alias dn='doc network'
alias dv='doc volume'
alias dl='doc logs'
alias dcom='doc compose'
alias ds='doc service'
alias dst='doc stack'
alias dsec='doc secret'
alias dcla='doc container ls -a'
alias dcrm='doc container rm -f $(docker container ls -aq)'
alias dirm='doc image rm -f $(docker image ls -q )'
alias dsrm='doc service rm $(docker service ls -q)'

# Kubernetes microk8s
alias kubectl="microk8s.kubectl"
alias k="kubectl"
alias kr="k run"
alias kc="k create"
alias kcd="kc deployment"
alias kg="k get"
alias kgd="kg deployment"
alias kgp="kg pods"
alias kl="k logs"
alias kdes="k describe"
alias kd="k delete"
alias kdp="kd pod"
alias kdd="kd deployment"
alias ks="k scale"
alias ksd="ks deployment"
alias ke="k expose"
alias ked="ke deployment"

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/snap/bin

export PATH
. "$HOME/.cargo/env"
