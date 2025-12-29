#!/bin/bash

curl -Lo ~/.local/bin/k3d https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
chmod +x ~/.local/bin/k3d
k3d version
k3d cluster create dev
kubectl get nodes

# ✔ Chạy tốt với Docker rootless
# ✔ Startup nhanh
# ✔ Dùng k3s giống production edge