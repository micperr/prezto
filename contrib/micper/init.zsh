
osfile="${0:h}/os.zsh"
if [ ! -f "$osfile" ]; then
    echo "\033[1;33m\"$osfile\"\033[0;36m does not exist. Create it and select the OS you are using inside it to import appropriate logic.\033[0m"
else
    source ${osfile}
fi
# ---------------------------
source "${0:h}/aws.zsh"
source "${0:h}/dev.zsh"
source "${0:h}/func.zsh"
source "${0:h}/git.zsh"
source "${0:h}/network.zsh"
source "${0:h}/server.zsh"
source "${0:h}/symfony.zsh"
source "${0:h}/system.zsh"
