alias reload='source ~/.zshrc'
alias ,sctl='sudo systemctl'
alias ,sctlu='systemctl --user'
alias ,killit='killall -s 9'
alias ,highlight='highlight -O ansi --syntax'
alias ,ip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias ,mountremote='sshfs $1 $2'
alias ,lsports='sudo lsof -i -P -n | grep LISTEN'
alias ,mountremotedevilnet='sshfs devilnet:/home/micper/domains/micper.usermd.net Remote'
alias ,start-selenium='java -jar -Dwebdriver.chrome.driver=~/Workspace/chromedriver ~/Workspace/selenium-server-standalone-3.141.59.jar'
alias ,devilnet-db-tunnel='ssh -f devilnet -L 8543:pgsql20.mydevil.net:5432 -N'
alias ,composer-cache-fix-access='sudo chown micper:micper -R ~/.composer && sudo chmod 755 -R ~/.composer'

,clean-journal-logs() {
  sudo journalctl --rotate && sudo journalctl --vacuum-time=1s
}

,remove-all-unused-snap-packages() {
  snap list --all | awk '/disabled/{print $1, $3}' |
      while read snapname revision; do
          sudo snap remove "$snapname" --revision="$revision"
      done
}

,gnome-reload () {
  gnome-shell --replace & disown
}

,change-prezto-theme () {
  sed --follow-symlinks -i "s/theme 'sorin'/theme 'steeef'/g" $HOME/.zpreztorc
}

,del() {
   sudo gio trash "$@"
}

,confirm() {
    read "?Are you sure? [Y/n]"
    [[ $REPLY =~ ^[Yy]$ ]]
}

,find_text ()
{
    grep -Ril "$1" $2
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
