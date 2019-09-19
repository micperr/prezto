alias @='cd ~/Workspace'
alias @@='cd ~/.zprezto/contrib/micper'
alias reload='source ~/.zshrc'
alias killit='killall -s 9'
alias highlight='highlight -O ansi --syntax'
alias ip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias mountremote='sshfs $1 $2'
alias lsports='sudo lsof -i -P -n | grep LISTEN'


del() {
   sudo gio trash "$@"
}

v () {
    ( cd ~/Hacienda && vagrant $* )
}

confirm() {
    read "?Are you sure? [Y/n]"
    [[ $REPLY =~ ^[Yy]$ ]]
}

findText () {
  sudo  grep -rnw '.' -e $1
}

findDir () {
  sudo find . -name $1 -type d
}

findFile () {
  sudo find . -name $1 -type f
}

mkscript() {
  touch "$@"
  chmod u+x "$@"
}

# set all dirs to inherit group for the created dirs/files
inheritGroup() { # $1 directory $2 group
    find $1 -type d -exec chgrp $2 {} +
    find $1 -type d -exec chmod g+s {} +
}

# RSYNC, -n = --dry-run
cmpd() {
    rsync -uanv --delete --out-format="[%M]  %o   %f" $1 $2
}

syncd()
{
    if confirm; then
        rsync -ua --delete --stats --progress $1 $2
    fi
}
