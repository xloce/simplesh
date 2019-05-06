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
gem \
libodbc1 \ # dependencies for asdf package manager.
unixodbc \
automake \
autoconf \
libreadline-dev \
libncurses-dev \
libssl-dev \
libyaml-dev \
libxslt-dev \
libffi-dev \
libtool \
unixodbc-dev \
fonts-powerline; # fonts

}