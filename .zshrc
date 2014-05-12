########################
## oh-my-zsh
########################
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
plugins=(git mvn)
source $ZSH/oh-my-zsh.sh

# Source boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

export EDITOR=vim
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
 
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'

export JAVA_HOME=$JAVA_7_HOME
