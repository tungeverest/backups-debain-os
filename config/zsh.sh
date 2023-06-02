#!/bin/bash

# ZSH
# https://github.com/zimfw/zimfw
# https://github.com/ogham/exa
# https://github.com/powerline/fonts/blob/master/README.rst#installation
sudo apt-get -y install zsh exa zoxide fonts-powerline
which zsh
zsh --version

# Oh My ZSH
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# chsh -s $(which zsh)

# zsh-autosuggestions
# git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# vi ~/.zshrc

# zplug
# curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# ZimFW
# https://viblo.asia/p/chuyen-nha-tu-oh-my-zsh-sang-zimfw-GyZJZxmlVjm

curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
chsh -s $(which zsh)
sudo cp -rf ./* $HOME/
eval "$(zoxide init zsh)"
zimfw install
# zimfw uninstall
# zimfw update
