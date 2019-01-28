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
fonts-powerline

}
