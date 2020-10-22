__dir__=${0:h}
osfile="$__dir__/os.zsh"

if [ ! -f "$osfile" ]; then
    cp ~/.zprezto/contrib/micper/os.zsh.dist ~/.zprezto/contrib/micper/os.zsh

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
source "$__dir__/generic.zsh"

for f in $__dir__/scripts/*; do
  source $f
done

for f in $__dir__/dev/*; do
  source $f
done

for f in $__dir__/secret/*; do
  source $f
done

unset f
unset __dir__
unset osfile
