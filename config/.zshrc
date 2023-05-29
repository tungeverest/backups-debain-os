
# Start configuration added by Zim install {{{

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZIM_HOME=~/.zim
export ZIM_CONFIG_FILE=~/.zimrc
export PVENV_HOME=~/pyenv

# PyEnv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# NODEJS
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#GOLANG
export PATH=$PATH:/usr/local/go/bin
export GOROOT="/home/$USER/go"
export GOPATH="/home/$USER/go/packages"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GOROOT_BOOTSTRAP=$GOROOT


# -----------------
# Zim configuration
# -----------------

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Prompt for spelling correction of commands.
setopt CORRECT

# Customize spelling correction prompt.
# SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# -----------------
# Zim configuration
# -----------------

# Use degit instead of git as the default tool to install and update modules.
# zstyle ':zim:zmodule' use 'degit'

# Append `../` to your input for each `.` you type after an initial `..`
# zstyle ':zim:input' double-dot-expand yes

# --------------------
# Module configuration
# --------------------

# https://github.com/zimfw/termtitle
# zstyle ':zim:termtitle' format '%1~'
zstyle ':zim:termtitle' hooks 'preexec' 'precmd'
zstyle ':zim:termtitle:preexec' format '${${(A)=1}[1]}'
zstyle ':zim:termtitle:precmd'  format '%1~'

zstyle ':zim:prompt' theme 'elite' 'cyan' 'blue'

# zsh-autosuggestions
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

# ------------------
# Initialize modules
# ------------------

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi


# INITIALIZE MODULES.
# zoxide
eval "$(zoxide init zsh)"
source ${ZIM_HOME}/init.zsh


# ------------------------------
### Post-init module configuration
# ------------------------------

setopt HIST_IGNORE_ALL_DUPS

# GIT INFO
# zstyle ':zim:git-info' ignore-submodules 'none'
zstyle ':zim:git-info' verbose yes

# Git
# https://github.com/zimfw/git
#zstyle ':zim:git' aliases-prefix 'g'

# SET PROMD-INFO
# prompt-pwd - https://github.com/zimfw/prompt-pwd/blob/master/README.md#settings
# zstyle ':zim:prompt-pwd' git-root yes
# zstyle ':zim:prompt-pwd:tail' length 30
# zstyle ':zim:prompt-pwd:fish-style' dir-length 30

setopt nopromptbang prompt{cr,percent,sp,subst}

zstyle ':zim:prompt-pwd' git-root yes
zstyle ':zim:prompt-pwd:fish-style' dir-length 10
zstyle ':zim:prompt-pwd:separator' format '❯❯❯'

# https://github.com/zimfw/git-info
# zstyle ':zim:git-info:branch' format 'branch:%b'
# zstyle ':zim:git-info:commit' format 'commit:%c'
# zstyle ':zim:git-info:remote' format 'remote:%R'
# zstyle ':zim:git-info:action:merge'  format '>M<'
# zstyle ':zim:git-info:action:rebase' format '>R>'
# 'prompt'  'git(%c)|| >M< || >R>' \
# zstyle ':zim:git-info:keys' format \
#     'prompt'  'git(%b%c)' \
#     'rprompt' '[%R]'

# autoload -Uz add-zsh-hook && add-zsh-hook precmd git-info

# PS1='$(prompt-pwd)❯❯❯ ${(e)git_info[prompt]}%# '
# PS1='$(prompt-pwd)❯❯❯'
# RPS1='${(e)git_info[rprompt]}'


# zsh-history-substring-search
# zmodload -F zsh/terminfo +p:terminfo
# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
# for key ('^[[A' '^P' ${terminfo[kcuu1]}) bindkey ${key} history-substring-search-up
# for key ('^[[B' '^N' ${terminfo[kcud1]}) bindkey ${key} history-substring-search-down
# for key ('k') bindkey -M vicmd ${key} history-substring-search-up
# for key ('j') bindkey -M vicmd ${key} history-substring-search-down
# unset key


# }}} End configuration added by Zim install

# ZSH Manual Config
# Custom  Alias
# alias python=/usr/bin/python3
alias python=python3
alias vg="vagrant"
alias vgv="vagrant --version"
alias k="kubectl"
alias dev="devspace"
alias gg="gcloud"
alias mi="minikube"
alias ls="exa"
alias la="exa -a"
alias ll="exa -l"
alias docker-compose="docker compose"
alias podman-compose="podman compose"

# Kubernetes Completion
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
if [ $HOME/.local/bin/kubectl ]; then source <(kubectl completion zsh); fi
