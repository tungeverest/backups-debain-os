#!/bin/bash

sudo apt install -y python-is-python3 python3-pip
python3 -m pip install --upgrade pip
curl -LsSf https://astral.sh/uv/install.sh | sh

curl https://pyenv.run | bash
pyenv --version

# DEPLOY AWS-LAMBDA
pip install chalice
