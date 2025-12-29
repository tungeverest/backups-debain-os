#!/bin/bash

# DATABASE GUI
flatpak install flathub com.redis.RedisInsight
flatpak install flathub com.mongodb.Compass

# https://www.beekeeperstudio.io/get
# https://docs.beekeeperstudio.io/installation/linux/#deb
curl -fsSL https://deb.beekeeperstudio.io/beekeeper.key | sudo gpg --dearmor --output /usr/share/keyrings/beekeeper.gpg \
  && sudo chmod go+r /usr/share/keyrings/beekeeper.gpg \
  && echo "deb [signed-by=/usr/share/keyrings/beekeeper.gpg] https://deb.beekeeperstudio.io stable main" \
  | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list > /dev/null
sudo apt update && sudo apt install beekeeper-studio -y

# DATABASE: pgAdmin
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

# Install for both desktop and web modes:
# sudo apt install pgadmin4

# Install for desktop mode only:
sudo apt install pgadmin4-desktop

# Install for web mode only:
# sudo apt install pgadmin4-web

# Configure the webserver, if you installed pgadmin4-web:
# sudo /usr/pgadmin4/bin/setup-web.sh

# DATABASE: MongoDB
wget https://download-ce.studio3t.com/studio-3t/linux/2025.1.0/studio-3t-community-edition-linux-x64.tar.gz
tar -xvzf studio-3t-community-edition-linux-x64.tar.gz
sh ./studio-3t-community-edition-linux-x64.sh
