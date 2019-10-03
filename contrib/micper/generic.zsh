alias @='cd ~/Workspace'
alias @@='cd ~/.zprezto/contrib/micper'
alias reload='source ~/.zshrc'
alias h='cd ~/Hacienda && vagrant ssh'
alias sctl='sudo systemctl'
alias sctlu='systemctl --user'
alias ,killit='killall -s 9'
alias ,highlight='highlight -O ansi --syntax'
alias ,ip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias ,mountremote='sshfs $1 $2'
alias ,lsports='sudo lsof -i -P -n | grep LISTEN'


,change-prezto-theme () {
  sed --follow-symlinks -i "s/theme 'sorin'/theme 'steeef'/g" $HOME/.zpreztorc
}

v () {
  ( cd ~/Hacienda && vagrant $* )
}

,del() {
   sudo gio trash "$@"
}

,confirm() {
    read "?Are you sure? [Y/n]"
    [[ $REPLY =~ ^[Yy]$ ]]
}

,find_text () {
  sudo  grep -rnw '.' -e $1
}

,find_dir () {
  sudo find . -name $1 -type d
}

,find_file () {
  sudo find . -name $1 -type f
}

,mkscript() {
  touch "$@"
  chmod u+x "$@"
}

# set all dirs to inherit group for the created dirs/files
,inheritGroup() { # $1 directory $2 group
    find $1 -type d -exec chgrp $2 {} +
    find $1 -type d -exec chmod g+s {} +
}

# RSYNC, -n = --dry-run
,cmpd() {
    rsync -uanv --delete --out-format="[%M]  %o   %f" $1 $2
}

,syncd()
{
    if confirm; then
        rsync -ua --delete --stats --progress $1 $2
    fi
}
