#!/bin/bash
# https://xuanthulab.net/cac-shebang-trong-script-cua-he-thong-unix.html
apt-get -y update && apt-get -y upgrade

sudo apt-get install -y lsb-release ca-certificates apt-transport-https curl wget \
    software-properties-common git vim gedit nano gnupg

# FONT
sudo apt install -y fonts-roboto fonts-cascadia-code fonts-firacode

# Uliti
# https://www.omgubuntu.co.uk/2023/04/things-to-do-after-installing-ubuntu-23-04
# sudo apt install ubuntu-restricted-extras
# gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
sudo apt-get install -y gnome-browser-connector chrome-gnome-shell
sudo ubuntu-report -f send no
sudo apt install -y tlp gnome-shell-extension-ubuntu-tiling-assistant
