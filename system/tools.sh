#!/bin/bash

tools.sh() {

sudo apt update
sudo apt upgrade

sudo apt install -y \
tree \
stow \
snap \
snapd \
curl \
git \
xsel \
openvpn \
network-manager-openvpn-gnome \
speedtest-cli \
tmux \
vim \
htop \
ag \
fonts-powerline;

# tmux
if [ ! -d .tmux ]
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# php
composer global require friendsofphp/php-cs-fixer

}
