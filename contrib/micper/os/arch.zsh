# -Syy to ensure you have list from primary mirror and then
# -Syu to download packages
# -Syyu combines the 2 - first refreshes using primary mirror and then updates

alias pacman='sudo pacman'
alias pacu='sudo pacman -Syu --noconfirm'
alias pacuy='sudo pacman -Syyu --noconfirm'
alias sctl='sudo systemctl'
alias sctlu='systemctl --user'
