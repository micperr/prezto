osfile="${0:h}/os.zsh"
if [ ! -f "$osfile" ]; then
    cp ~/.zprezto/contrib/micper/os.zsh.dist ~/.zprezto/contrib/micper/os.zsh
    # echo "\033[1;33m\"$osfile\"\033[0;36m does not exist. Create it and select the OS you are using inside it to import appropriate logic.\033[0m"

    # Uncomment proper distribution source
    distribution=`awk -F= '/^NAME/{print $2}' /etc/os-release`
    if [[ $distribution == *"Ubuntu"* ]]; then
      sed -i "/debian\s*/ s/^#\s*//" $osfile
    elif [[ $distribution == *"Arch"* ]]; then
      sed -i "/arch\s*/ s/^#\s*//" $osfile
    fi
fi


source ${osfile}
# ---------------------------
source "${0:h}/aws.zsh"
source "${0:h}/dev.zsh"
source "${0:h}/docker.zsh"
source "${0:h}/generic.zsh"
source "${0:h}/git.zsh"
