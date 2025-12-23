#!/bin/bash

sudo apt-get install -y flatpak ibus-unikey gparted watchman

# FLATPAK
flatpak install flathub io.github.shiftey.Desktop
flatpak install flathub com.notesnook.Notesnook
flatpak install flathub org.cryptomator.Cryptomator

# BROWERS
curl -fsS https://dl.brave.com/install.sh | sh

# DEVBOX
curl -fsSL https://get.jetify.com/devbox | bash

# DOWNLOAD .DED list
## VsCode Gitkraken Apidog
## Obsidian Ulaa Rambox Mega Dbeaver wps Tilux VLC
## SECURITY
# ProtonVPN ProtonPass ProtonAuth Ente Edoxus Bitwarden Tilux
sudo add-apt-repository ppa:phoerious/keepassxc


# GITHUB CLI
(type -p wget >/dev/null || (sudo apt update && sudo apt install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
	&& out=$(mktemp) && wget -nv -O"$out" https://cli.github.com/packages/githubcli-archive-keyring.gpg \
	&& cat "$out" | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& sudo mkdir -p -m 755 /etc/apt/sources.list.d \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y
