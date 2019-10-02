__dir__=${0:h}
osfile="$__dir__/os.zsh"
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
source "$__dir__/aws.zsh"
source "$__dir__/dev.zsh"
source "$__dir__/docker.zsh"
source "$__dir__/generic.zsh"
source "$__dir__/git.zsh"

for f in $__dir__/scripts/*; do
  source $f
done
