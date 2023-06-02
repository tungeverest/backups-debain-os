git checkout develop

# Install Packages
sh packages/setup_os.sh

# Install Apps
sh packages/apps.sh

# Install tools
sh tools/docker.sh
sh tools/podman-desktop.sh
sh tools/clouds.sh
sh tools/hashicorps.sh

# Install Kubenestes
sh kubernetes/kubectl.sh
#!bin/sh
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
