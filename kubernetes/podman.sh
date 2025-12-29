#!/bin/bash

sudo apt-get install -y podman buildah

# https://podman-desktop.io/docs/Installation/linux-install
flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub io.podman_desktop.PodmanDesktop
flatpak run io.podman_desktop.PodmanDesktop

curl -o ~/.local/bin/podman-compose https://raw.githubusercontent.com/containers/podman-compose/main/podman_compose.py
chmod +x ~/.local/bin/podman-compose

podman compose version