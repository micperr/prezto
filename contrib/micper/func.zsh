confirm() {
    read "?Are you sure? [Y/n]"
    [[ $REPLY =~ ^[Yy]$ ]]
}

function findText () {
  sudo  grep -rnw '.' -e $1
}

function findDir () {
  sudo find . -name $1 -type d
}

function findFile () {
  sudo find . -name $1 -type f
}

mkscript() {
  touch "$@"
  chmod u+x "$@"
}

# set all dirs to inherit group for the created dirs/files
# $1 directory
# $2 group
inheritGroup() {
    find $1 -type d -exec chgrp $2 {} +
    find $1 -type d -exec chmod g+s {} +
}

# RSYNC
# -n = --dry-run
cmpd() {
    rsync -uanv --delete --out-format="[%M]  %o   %f" $1 $2
}

syncd()
{
    if confirm; then
        rsync -ua --delete --stats --progress $1 $2
    fi
}
