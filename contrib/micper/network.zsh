alias devilnet-db-tunnel='ssh -f devilnet -L 8543:pgsql20.mydevil.net:5432 -N'
alias ip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias mountremote='sshfs $1 $2'
alias mountremotedevilnet='sshfs devilnet:/home/micper/domains/micper.usermd.net Remote'
alias listports='sudo lsof -i -P -n | grep LISTEN'
