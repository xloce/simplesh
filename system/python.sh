#!/bin/bash

python.sh(){

clear;

sudo apt update
sudo apt upgrade

sudo apt install -y \
python3 \
python3-pip \
python-pip \
python-dev

}
