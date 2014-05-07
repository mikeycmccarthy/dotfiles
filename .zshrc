########################
## oh-my-zsh
########################
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git brew python)
source $ZSH/oh-my-zsh.sh

# Source boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

export EDITOR=vim
