#!/bin/bash
# sudo install -m 0755 -d /etc/apt/keyrings
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# sudo chmod a+r /etc/apt/keyrings/docker.gpg
# echo \
#   "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
#   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# sudo apt-get update
# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install using the convenience script
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04#step-4-working-with-docker-images
curl -fsSL https://get.docker.com -o ./get-docker.sh
sudo sh ./get-docker.sh

sudo systemctl disable docker
sudo systemctl stop docker

sudo systemctl disable docker.socket
sudo systemctl stop docker.socket

dockerd-rootless-setuptool.sh install

sudo systemctl status docker
sudo systemctl enable docker

# (insert to ~/.bashrc or ~/.zshrc)
# export PATH=/usr/bin:$PATH
# export DOCKER_HOST=unix:///run/user/$(id -u)/docker.sock

systemctl --user start docker
systemctl --user enable docker

# Docker Rootful (nếu cần legacy / k8s cũ)
# KHÔNG chạy dockerd-rootless-setuptool.sh
# sudo usermod -aG docker "${USER}"
# newgrp docker
docker info

# kiểm tra alias
alias | grep docker

# kiểm tra socket
ls -l /var/run/docker.sock
ls -l $XDG_RUNTIME_DIR/docker.sock

# kiểm tra daemon
ps aux | grep dockerd

sudo apt-get install docker-compose-plugin
docker compose version

# Chạy lênh với arg --dry-run nghĩa là gì vậy
# Khi chạy lệnh với tùy chọn --dry-run, nó thường có ý nghĩa là lệnh sẽ được thực thi ở chế độ "giả lập" hoặc "thử nghiệm".
# Thay vì thực hiện thay đổi thực tế hoặc cập nhật hệ thống, lệnh sẽ hiển thị các thay đổi dự kiến hoặc hành động sẽ được thực hiện nếu lệnh được chạy mà không ảnh hưởng trực tiếp đến hệ thống.

# Việc chạy lệnh với tùy chọn --dry-run có thể giúp bạn xem trước các thay đổi dự kiến trước khi áp dụng chúng.
# Thông thường, lệnh sẽ in ra các hoạt động dự kiến mà nó sẽ thực hiện, nhưng không thực sự thay đổi dữ liệu hoặc hệ thống.

# Việc sử dụng tùy chọn --dry-run có thể hữu ích khi bạn muốn xem trước kết quả của một lệnh mà không muốn thực hiện các thay đổi vĩnh viễn trên hệ thống.
# Nó giúp tránh các thay đổi không mong muốn và cung cấp cho bạn cơ hội xem xét và xác nhận các thay đổi trước khi thực hiện chúng.

# Uninstall
# sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
# sudo rm -rf /var/lib/docker
# sudo rm -rf /var/lib/containerd
