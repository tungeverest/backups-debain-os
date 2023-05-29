#!/bin/bash
# https://xuanthulab.net/cac-shebang-trong-script-cua-he-thong-unix.html
apt-get -y update && apt-get -y upgrade

sudo apt-get install -y lsb-release ca-certificates apt-transport-https curl wget \
    software-properties-common git vim gedit nano gnupg

# Install Apps
sh ./apps.sh

# Install tools
sh tools/docker.sh
sh tools/podman-desktop.sh
sh tools/clouds.sh
sh tools/hashicorps.sh

# Install Kubenestes
sh kubernetes/kubectl.sh
sh kubernetes/minikube.sh
sh kubernetes/kind.sh
sh kubernetes/tools_kube.sh

# Install Language Programing
sh languages/python.sh
sh languages/nodejs.sh
sh languages/golang.sh
sh languages/java.sh
sh languages/ruby.sh

# Install Shell
sh config/zsh.sh