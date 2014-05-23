########################
## oh-my-zsh
########################
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
plugins=(git mvn systemadmin web-search)
source $ZSH/oh-my-zsh.sh

# Source boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

export EDITOR=vim

# Global aliases
alias -g EG='|& egrep'
alias -g G='| egrep'
alias -g H='| head'
alias -g M='| more'

# Java
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
export JAVA_HOME=$JAVA_7_HOME

# CLI chrome control aliases (consider moving to a zsh plugin)
alias ch='chrome-cli'
alias chtabs='chrome-cli list tabs'
alias chtab='chrome-cli activate -t'
alias chgrep='chrome-cli list tabs | grep'

# Boxen
hash -d brepo=/opt/boxen/repo
hash -d bmanifest=/opt/boxen/repo/modules/people/manifests/mikeycmccarthy
alias -s pp=vim

# Named directories
hash -d dotfiles=$HOME/src/dotfiles
hash -d dev=$HOME/Development

# Work
hash -d core=~dev/Gamesys/Platforms/Core

# Load other zsh files, look at moving more things here to break up the length of this file
export MYZSH=$HOME/src/dotfiles/zsh
# for config_file ($MYZSH/functions/* ) source $config_file
