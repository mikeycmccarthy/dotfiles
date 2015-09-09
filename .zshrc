# Source boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

########################
## oh-my-zsh
########################
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
plugins=(git mvn wd common-aliases osx sublime tmux atom docker thefuck)
source $ZSH/oh-my-zsh.sh

export EDITOR=vim

# Global aliases
alias -g EG='|& egrep'

# Git
alias gsync='git fetch upstream && git merge upstream/master'

# Java
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
# export JAVA_HOME=$JAVA_7_HOME
export JAVA_HOME=$JAVA_8_HOME
export M2_HOME=/opt/boxen/homebrew/Cellar/maven/3.3.1/libexec
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

# Ward directory
alias wdl='wd list'

# Named directories
hash -d dotfiles=$HOME/src/dotfiles
hash -d dev=$HOME/Development

# Work
alias -g WS='--settings ~/work-dotfiles/settings.xml'
hash -d core=~dev/Gamesys/Platforms/Core
alias acurl='curl -v -u coreplatform@gamesys.co.uk:Password1'

# Docker
alias drm-weeks='docker ps -a | grep 'weeks ago' | awk '{print $1}' | xargs docker rm'
alias drm-days='docker ps -a | grep 'days ago' | awk '{print $1}' | xargs docker rm'
alias drmi='docker rmi $(docker images -q)'
alias -g DL='docker ps -a -l -q'
function dent {
docker exec -i -t $1 /bin/bash
}
function execlast {
docker exec -i -t $(docker ps -a -l -q) /bin/bash
}
function execmysql {
docker exec -i -t $(docker ps -a -l -q) mysql -uroot -pPassword1
}
# Load other zsh files, look at moving more things here to break up the length of this file
export MYZSH=$HOME/src/dotfiles/zsh
# for config_file ($MYZSH/functions/* ) source $config_file
. /Users/michael.mccarthy/.coreplatform_shell_setup/coreplatform_vm.sh
