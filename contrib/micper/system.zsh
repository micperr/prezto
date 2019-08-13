alias @='cd ~/Workspace'
alias reload='source ~/.zshrc'
alias killit='killall -s 9'
alias highlight='highlight -O ansi --syntax'

function del() {
   mv $1 ~/.Trash
}

function update_prezto() {
  cd $ZPREZTODIR
  git pull
  git submodule update --init --recursive
}
