#!/bin/bash

cp 
sudo apt-get install -y ibus-unikey gparted podman buildah ansible virtualbox
sudo apt-get install -y snapd flatpak

# SNAP
# https://github.com/perryrh0dan/taskline
snap install audacity brave postman slack keepassxc gitlive opera ngrok taskline bluemail insomnia mailspring onlyoffice-desktopeditors
snap alias taskline tl
# DATABASE GUI
snap install chatgpt-desktop robo3t-snap redisinsight dbeaver-ce antares beekeeper-studio drawio alacritty



# IDE
sudo snap install --classic code
snap install pycharm-community --classic
snap install intellij-idea-community --classic
snap install gitkraken --classic


sudo snap remove firefox
sudo apt-get remove --purge -y libreoffice-core thunderbird*
sudo apt-get remove --purge -y 'libreoffice*'
sudo apt-get clean
sudo apt-get autoremove