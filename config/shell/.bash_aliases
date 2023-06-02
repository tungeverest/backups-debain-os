# alias
# alias -p
# alias name='command'
# unalias NAME
alias areload="source ~/.zshrc && echo ZSH config reloaded"
alias zshre="source ~/.zshrc && echo ZSH config reloaded"
# To change to the root user:
alias root="sudo su -"
alias su='sudo -i'

# To change to "user," where "user" is set as your username:
alias amy="su user"

# NETWORK
## MyIP
alias myip="ip -br -c a"
alias ping8="ping 8.8.8.8"
# Get local IPs

# To check the status of any system service:
alias assu="sudo systemctl status"
alias asst="sudo systemctl start"
alias assre="sudo systemctl restart"
alias asse="sudo systemctl enable"
alias asso="sudo systemctl stop"
alias assd="sudo systemctl disable"

alias acpu="lscpu & cat /proc/cpuinfo"
alias amem="free -h & cat /proc/meminfo"
alias meminfo='free -m -l -t'
alias adf="df -h"
alias alsb="cat /etc/lsb-release & lsb_release -a"

alias h='history'
alias job='jobs -l'
alias now='date '\''+%A %d %B %Y - %T'\'''
alias adate='date +"%d-%m-%Y"'

# CD
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../..'
alias .h='cd ~'
alias ./='cd /'
alias c='clear'

# List All Process
alias aps="ps -aux"

# Bí danh này thay thế lt bằng lệnh ls hiển thị kích thước của từng mục, sau đó sắp xếp theo kích thước
alias als='ls --human-readable --size -1 -S --classify'
alias amnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

# Nó xảy ra vào thứ Hai hàng tuần: Bạn đi làm, ngồi vào máy tính, mở một thiết bị đầu cuối và nhận ra mình đã quên mất mình đang làm gì vào thứ Sáu tuần trước.
# Những gì bạn cần là một bí danh để liệt kê các tệp được sửa đổi gần đây nhất.
alias minda='ls -t -1'

# APT
alias aup="sudo apt-get update"
alias aug="sudo apt-get upgrade"
alias aai="sudo apt-get install"
alias aafgr='sudo apt list --installed | grep'

# DEB file
alias adeb="sudo dpkg -i"
alias adebfgr="dpkg -l | grep"

# Tar file
alias untar='tar -zxvf'
# GZIP
alias ungzip="gzip -d"

# Đếm tệp tin
alias afwc='find . -type f | wc -l'
# Copy show process by rsync
alias acp='rsync -ah --info=progress2'

# GREP
alias greph='history|grep'

# PYTHON PIP
alias python=python3
alias pipl="pip list"
alias pipi='pip install'
alias pipf='pip freeze > requirements.txt'
alias pipfd='pip freeze > requirements-dev.txt'


# DOCKER
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dim='docker image ls'
alias dima='docker image ls -a'
alias dimrm='docker image rm'

# KUBE
alias k="kubectl"
# MINIKUBE
alias mi="minikube"

# DEVSPACE
alias dev="devspace"

# VAGRANT
alias vgv="vagrant --version"
alias vg="vagrant"
alias vgu="vagrant up"

# GCLOUD
alias gg="gcloud"



# GIT
alias agcm='git add . | git commit -m'
alias agca='git add . | git commit --amend'
alias agp='git push'
alias agpf='git push -f'
alias agrb='git rebase'
alias agf='git fetch'
alias agu='git pull'
alias agl='git log'
alias agll='git log --online'
alias agst='git stash'
alias agckd="git checkout develop"
alias agbm="git checkout master"
alias agb="git checkout"
alias agbn="git checkout -m"
# Back Git Root
alias agcd='cd `git rev-parse --show-toplevel`'


# Netstat operations from https://github.com/sperner/BASH/blob/master/bash_aliases
alias netstat80="netstat -plan|grep :80|awk {'print $5'}|cut -d: -f 1|sort|uniq -c|sort -nk 1"
alias netstatports="netstat -nape --inet"
alias netstatpid="netstat -tlnp"
alias netstatapps="netstat -lantp | grep -i stab | awk -F/ '{print $2}' | sort | uniq"
# Lists all ports
alias allports='netstat -tulanp'

# Lists open listening ports
alias listenports='netstat -tulanp | grep LISTEN'

# Beautify mount command
alias mount='mount |column -t'

# Add command to copy directory path to clipboard
alias cpdir='pwd | xclip'

# get top process eating cpu
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

# SSH


# Add command to show hidden files in directory
alias lshi='ls -d .* --color=auto'
