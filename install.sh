#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "installing packages"

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y curl fish fortune cowsay lolcat tmux neovim

echo "installing plugin managers"
fish -c (curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher && exit)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

fish -c (fisher install IlanCosman/tide@v5 && exit)

echo "moving stuff"

cp openTmux.sh /opt/openTmux.sh
chmod 755 /opt/openTmux.sh
ln -s /opt/openTmux.sh /usr/bin/openTmux

echo "installed opentmux script"
