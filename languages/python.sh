sudo apt install -y python-is-python3 python3-pip
# python3 -m pip install --upgrade pip
curl https://pyenv.run | bash
pyenv --version

pip install chalice

# https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv
# git clone "https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv.git" "$ZIM_HOME/modules/autoswitch_virtualenv"
# cp $ZIM_HOME/modules/autoswitch_virtualenv/autoswitch_virtualenv.plugin.zsh init.zsh
# cd $ZIM_HOME/modules/autoswitch_virtualenv && zimfw build && cd -