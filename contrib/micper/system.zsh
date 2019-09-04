alias sudo='sudo '
alias @='cd ~/Workspace'
alias @@='cd ~/.zprezto/contrib/micper'
alias reload='source ~/.zshrc'
alias killit='killall -s 9'
alias highlight='highlight -O ansi --syntax'


function del() {
   sudo gio trash "$@"
}

function copy-prezto-os-zsh() {
   cp ~/.zprezto/contrib/micper/os.zsh.dist ~/.zprezto/contrib/micper/os.zsh
}
