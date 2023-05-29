sudo apt install -y nodejs npm
node -v
npm -v

# curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
# sudo apt-get install -y nodejs
# node -v
# sudo npm install -g npm@latest
# npm -v

# Option 3 — Installing Node Using the Node Version Manager
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04
# https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.zshrc
# nvm list-remote
# nvm install v16.14.0
nvm list