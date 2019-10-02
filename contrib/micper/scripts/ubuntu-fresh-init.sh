function ,script_ubuntu_fresh_init {

  sudo apt update && sudo apt upgrade --yes

  sudo apt install --yes build-essential chrome-gnome-shell ffmpeg git gnome-shell-extensions nfs-common nfs-kernel-server zsh

  # PHP
  sudo apt-get install -y php-fpm php-curl php-mbstring php-xml php-xdebug

  # Ruby
  # sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
  # touch ~/.gemrc
  # echo 'gem: --user-install' >> ~/.gemrc

  # Tilix
  sudo add-apt-repository --yes ppa:webupd8team/terminix
  sudo apt update && sudo apt install --yes tilix
  sudo update-alternatives --config x-terminal-emulator
  mkdir -p ~/.config/tilix/schemes
  wget -qO $HOME"/.config/tilix/schemes/earthsong.json" https://git.io/v7Qaf

  # SSH
  ssh-keygen -t rsa -b 4096 -C "michal.perlinski@gmail.com"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa

  # Git config
  git config --global user.email "michal.perlinski@gmail.com"
  git config --global user.name "Michał Perliński"

  # dconf settings
  dconf write /org/gnome/desktop/wm/preferences/mouse-button-modifier '"<Alt>"'
  dconf write /org/gnome/evolution/mail/composer-no-signature-delim true

  sudo apt autoremove --yes

  echo '###################'
  echo '## ! ATTENTION ! ##'
  echo '###################'
  echo 'Check ubuntu-fresh-init end for manual commands to do'
}


return
#################################
##    Manual handling needed    #
#################################
vboxmanage setproperty machinefolder ~/.virtualbox # Install virtualbox first

# ZPREZTO
zsh
git clone --recursive https://github.com/micperr/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s $(which zsh) # logout to apply
