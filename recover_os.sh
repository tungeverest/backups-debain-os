#!/bin/bash

git checkout master

# Install Packages
sh packages/setup_os.sh

# Install Apps
sh packages/apps.sh

# dconf load / < "./config/dconf-settings.conf"

# Install tools
sh tools/docker.sh
sh tools/podman.sh
sh tools/podman-desktop.sh
sh tools/hashicorps.sh
sh tools/database.sh
sh tools/network.sh
sh tools/cloud.sh

# Install Kubenestes
sh kubernetes/kubectl.sh

#!bin/sh
sh kubernetes/minikube.sh
sh kubernetes/kind.sh
sh kubernetes/tools_kube.sh

# Install Language Programing
sh languages/python.sh
sh languages/node.sh
sh languages/golang.sh
sh languages/java.sh
sh languages/ruby.sh
sh languages/rust.sh
sh languages/js.sh
sh languages/dart.sh

# Install Shell
sh config/zsh.sh

# SSH
# cp $HOME/MEGA/Backup/ProtonBackup/ssh $HOME/.ssh
# sudo chmod -R 700 ~/.ssh
# sudo chmod -R 600 ~/.ssh/*
# ssh-add -l
