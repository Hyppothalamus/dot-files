#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "installing packages"

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y curl fish fortune cowsay lolcat tmux neovim bat

echo "installing plugin managers"
chmod 775 fish-install.sh
runuser -l $SUDO_USER -c 'fish -c ./fish-install.sh'
runuser -l $SUDO_USER -c 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm'
runuser -l $SUDO_USER -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "moving stuff"

cp openTmux.sh /opt/openTmux.sh
chmod 755 /opt/openTmux.sh
ln -s /opt/openTmux.sh /usr/bin/openTmux

echo "installed opentmux script"
echo "installing fishies script"
chmod 775 install-fishies.sh
./install-fishies.sh
