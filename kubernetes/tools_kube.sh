#!/bin/bash

# HELM 3
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
rm -rf ./get_helm.sh

# Skaffold
## curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \
## sudo install skaffold /usr/local/bin/

# DEVSPACE
# https://www.devspace.sh/docs/getting-started/installation?x0=5
# AMD64
## curl -L -o devspace "https://github.com/loft-sh/devspace/releases/latest/download/devspace-linux-amd64" && sudo install -c -m 0755 devspace /usr/local/bin
## devspace version
# ARM64
# curl -L -o devspace "https://github.com/loft-sh/devspace/releases/latest/download/devspace-linux-arm64" && sudo install -c -m 0755 devspace /usr/local/bin


# OKTETO
# https://www.okteto.com/docs/getting-started/
## curl https://get.okteto.com -sSfL | sh
## okteto version
# curl https://get.okteto.com -sSfL | OKTETO_VERSION=2.3.3 sh


# TILT
# https://docs.tilt.dev/install.html
## curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash
## tilt version