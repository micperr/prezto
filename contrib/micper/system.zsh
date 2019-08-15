alias @='cd ~/Workspace'
alias @@='cd ~/.zprezto/contrib/micper'
alias reload='source ~/.zshrc'
alias killit='killall -s 9'
alias highlight='highlight -O ansi --syntax'

function del() {
   mv $1 ~/.Trash
}

function copy-prezto-os-zsh() {
   cp ~/.zprezto/contrib/micper/os.zsh.dist ~/.zprezto/contrib/micper/os.zsh
}
