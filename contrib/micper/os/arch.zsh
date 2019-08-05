alias pacman='sudo pacman'
alias pacu='sudo pacman -Syu --noconfirm'
alias auru='cower -vdu'
alias pacman-refresh-mirrors='sudo reflector -l 20 -f 10 --save /etc/pacman.d/mirrorlist'

sctl() { systemctl --user $1 $2 }
sctllist() { systemctl --user list-timers $1 }
