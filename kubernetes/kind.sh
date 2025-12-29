#!/bin/bash

# KIND Kubernetes
# https://kind.sigs.k8s.io/docs/user/quick-start/#installation
curl -Lo ~/.local/bin/kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64
chmod +x ~/.local/bin/kind

kind version
# kind create cluster
# kubectl cluster-info

# Lưu ý:

# kind hoạt động với Docker rootless

# Không dùng Podman tốt bằng Docker