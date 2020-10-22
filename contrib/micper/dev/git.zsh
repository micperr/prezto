alias g='git'
alias gb='git branch'
alias gs='git status'
alias gac='git add . && git commit -m'
alias gacu='git add -u . && git commit -m'
alias gc='git checkout'
alias gl='git log --topo-order --pretty=format:"${_git_log_medium_format}"'

alias gFileReset='git checkout --'
alias gFileUndoAdd='git reset HEAD'

alias gUpdateSubmodules='git submodule update --recursive --remote'
alias gUntrackRemote='git branch --unset-upstream'

alias gMyCommits='git log --author="$(git config user.name)"'
