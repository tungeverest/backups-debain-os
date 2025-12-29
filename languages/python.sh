#!/bin/bash

sudo apt install -y python3 python3-venv python3-pip
python3 -m pip install --upgrade pip

curl -LsSf https://astral.sh/uv/install.sh | sh
# uv python install 3.12 3.14

curl https://pyenv.run | bash
pyenv --version

# DEPLOY AWS-LAMBDA
pip install chalice
