#!/bin/bash

# https://xuanthulab.net/cac-shebang-trong-script-cua-he-thong-unix.html
apt-get -y update && apt-get -y upgrade

sudo apt-get install -y --no-install-recommends lsb-release ca-certificates apt-transport-https \
    build-essential software-properties-common vim gedit nano gnupg xclip \
    rm -rf /var/lib/apt/lists/*

# FONT
sudo apt install -y fonts-roboto fonts-cascadia-code fonts-firacode fonts-powerline

# UNINSTALL APP
sudo apt remove --purge -y libreoffice-core thunderbird*
sudo apt remove --purge -y 'libreoffice*'
sudo apt clean
sudo apt autoremove
sudo apt autoclean

# https://www.omgubuntu.co.uk/2023/04/things-to-do-after-installing-ubuntu-23-04
# sudo apt install ubuntu-restricted-extras
# sudo apt install -y gnome-browser-connector chrome-gnome-shell
# sudo ubuntu-report -f send no
# sudo apt install -y tlp gnome-shell-extension-ubuntu-tiling-assistant
