#!/bin/sh
#
# Developed by Rafael Corrêa Gomes
# Contact rafaelcgstz@gmail.com
#

nvim.sh(){

clear; sudo apt-get update && sudo apt-get install -y vim nvim;

# Install with plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

}
