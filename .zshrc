########################
## oh-my-zsh
########################
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
plugins=(git mvn wd)
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
# export JAVA_HOME=$JAVA_7_HOME
export JAVA_HOME=$JAVA_8_HOME
export M2_HOME=/opt/boxen/homebrew/Cellar/maven/3.2.5/libexec
export GROOVY_HOME=/opt/boxen/homebrew/opt/groovy/libexec
export MAVEN_OPTS="-XX:MaxPermSize=1024m"

# CLI chrome control aliases (consider moving to a zsh plugin)
alias ch='chrome-cli'
alias chtabs='chrome-cli list tabs'
alias chtab='chrome-cli activate -t'
alias chgrep='chrome-cli list tabs | egrep'
alias trello='chgrep trello | awk "{print $1}" | xargs chtab'

# Boxen
hash -d brepo=/opt/boxen/repo
hash -d bmanifest=/opt/boxen/repo/modules/people/manifests/mikeycmccarthy
alias -s pp=vim

# Named directories
hash -d dotfiles=$HOME/src/dotfiles
hash -d dev=$HOME/Development

# Work
alias -g WS='--settings ~/work-dotfiles/settings.xml'
hash -d core=~dev/Gamesys/Platforms/Core
alias acurl='curl -v -u coreplatform@gamesys.co.uk:Password1'

# Docker
export DOCKER_HOST=tcp://192.168.33.10:2375
alias drm-weeks='docker ps -a | grep 'weeks ago' | awk '{print $1}' | xargs docker rm'
alias drm-days='docker ps -a | grep 'days ago' | awk '{print $1}' | xargs docker rm'
alias drmi='docker rmi $(docker images -q)'

# Glassfish
export GLASSFISH_HOME=/opt/boxen/homebrew/opt/glassfish/libexec
export PATH=${PATH}:${GLASSFISH_HOME}/bin

# Load other zsh files, look at moving more things here to break up the length of this file
export MYZSH=$HOME/src/dotfiles/zsh
# for config_file ($MYZSH/functions/* ) source $config_file
