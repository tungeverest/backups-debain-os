#!/bin/bash

git checkout develop

# BASH
cp -rf "$HOME"/.profile config/shell
cp -rf "$HOME"/.bashrc config/shell

# ZSH
cp -rf "$HOME"/.zshrc config/shell
cp -rf "$HOME"/.zimrc config/shell

# SHELL ENVS, ALIASES, FUNCTIONS
cp -rf "$HOME"/.shell_aliases config/shell

# GIT
sh packages/gnome-settings.sh

git add .
git commit -m "Backup OS configs $(date +'%Y-%m-%d %H:%M:%S')"
git push

# Backups Secure Token, data, envs, vaults to your device or Storage service folder to sync.
cp -rf "$HOME"/.ssh "$HOME"/MEGA/BackupOS/ssh

cp -rf "$HOME"/.gitconfig "$HOME"/MEGA/BackupOS/Shell/
cp -rf "$HOME"/.zsh_history "$HOME"/MEGA/BackupOS/Shell/
cp -rf "$HOME"/.bash_history "$HOME"/MEGA/BackupOS/Shell/

cp -rf "$HOME"/git-user-config-manager-vsc-ext "$HOME"/MEGA/BackupOS/Workspaces
cp -rf "$HOME"/.config/Code/User/settings.json "$HOME"/MEGA/BackupOS/Workspaces/vscode
cp -rf "$HOME"/.config/Code/User/keybindings.json "$HOME"/MEGA/BackupOS/Workspaces/vscode
cp -rf "$HOME"/.config/Code/User/mcp.json "$HOME"/MEGA/BackupOS/Workspaces/vscode
