#!/bin/bash

# ZSH
# https://github.com/zimfw/zimfw
# https://github.com/powerline/fonts/blob/master/README.rst#installation

sudo apt-get -y install zsh zoxide
which zsh
zsh --version

curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
chsh -s "$(which zsh)"

sudo cp -rf config/shell/* "$HOME"/
sudo cp -rf "$HOME"/MEGA/BackupOS/.bash_history "$HOME"/
sudo cp -rf "$HOME"/MEGA/BackupOS/.zsh_history "$HOME"/

eval "$(zoxide init zsh)"
zimfw install
# zimfw uninstall
# zimfw update


# Oh My ZSH FW
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# chsh -s $(which zsh)

# zsh-autosuggestions
# git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# vi ~/.zshrc

# zplug
# curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# ZimFW
# https://viblo.asia/p/chuyen-nha-tu-oh-my-zsh-sang-zimfw-GyZJZxmlVjm