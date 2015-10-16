# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="juanghurtado"
DISABLE_CORRECTION="true"

plugins=(git gradle mvn brew npm bower vagrant atom osx cp)

source $ZSH/oh-my-zsh.sh

# paths and homes
export PATH=$PATH:node_modules:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/opt/X11/bin
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GOPATH=~/

# aliases
alias mi='mvn clean install'
alias mist='mi -DskipTests'
alias mvn="mvn-color"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# all things less
LESSPIPE=`which src-hilite-lesspipe.sh`

export LESSOPEN="| ${LESSPIPE} %s"
export LESS='-R'
