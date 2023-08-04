# https://github.com/moovweb/gvm
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source /home/tttung/.gvm/scripts/gvm
gvm install go1.20.7
gvm use go1.20.7 --default

# gvm list
# gvm listall