#!/bin/bash

git checkout develop

# BASH
cp -rf "$HOME"/.profile config/shell
cp -rf "$HOME"/.bashrc config/shell


# ZSH
cp -rf "$HOME"/.zshrc config/shell
cp -rf "$HOME"/.zimrc config/shell
cp -rf "$HOME"/.bash_aliases config/shell
cp -rf "$HOME"/.bash_functions config/shell


# GIT
cp -rf "$HOME"/.gitconfig config/shell


git add .
git commit -m "Backup OS $(now)"
git push

# Backups Token, data, vaults to your device or Storage service folder to sync.
cp -rf "$HOME"/.bash_history "$HOME"/MEGA/ProtonBackup/
cp -rf "$HOME"/.zsh_history "$HOME"/MEGA/ProtonBackup/
cp "$HOME"/.ssh "$HOME"/MEGA/ProtonBackup/ssh
