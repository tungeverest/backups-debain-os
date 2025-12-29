#!/bin/bash

# https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
# curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# # Checksum
# curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
# echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

# sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

mkdir -p ~/.local/bin
cd ~/.local/bin
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
chmod +x kubectl
# echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc

## kubectl: OK
## kubectl: FAILED
## sha256sum: WARNING: 1 computed checksum did NOT match

# ✔ Không sudo
# ✔ Không ảnh hưởng Podman / Docker
# ✔ Chuẩn clean user setup

# Những thứ KHÔNG chạy rootless
# kubeadm
# kubelet trực tiếp
# microk8s (cần snap + root)