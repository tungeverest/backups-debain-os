# AWS CLI
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
/usr/local/bin/aws --version


# gcloud
# https://cloud.google.com/sdk/docs/install#deb
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-cli
gcloud init

# AZURE
# https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# sudo mkdir -p /etc/apt/keyrings
# curl -sLS https://packages.microsoft.com/keys/microsoft.asc |
#     gpg --dearmor |
#     sudo tee /etc/apt/keyrings/microsoft.gpg > /dev/null

# sudo chmod go+r /etc/apt/keyrings/microsoft.gpg

# AZ_REPO=$(lsb_release -cs)
# echo "deb [arch=`dpkg --print-architecture` signed-by=/etc/apt/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" |
#     sudo tee /etc/apt/sources.list.d/azure-cli.list

# sudo apt-get update
# sudo apt-get install azure-cli

# HEROKU
# https://devcenter.heroku.com/articles/heroku-cli#install-the-heroku-cli
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
# npm install -g heroku
heroku --version

# Digital Ocean
# https://docs.digitalocean.com/reference/doctl/
# https://docs.digitalocean.com/reference/doctl/how-to/install/
sudo snap install doctl