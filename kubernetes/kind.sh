#!/bin/bash

# KIND Kubernetes
# https://kind.sigs.k8s.io/docs/user/quick-start/#installation
[ "$(uname -m)" = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.30.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
