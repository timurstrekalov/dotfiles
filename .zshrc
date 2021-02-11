# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="juanghurtado"
DISABLE_CORRECTION="true"

plugins=(git gradle mvn brew npm osx cp golang)

source $ZSH/oh-my-zsh.sh

# paths and homes
export JAVA_HOME=$(/usr/libexec/java_home -v 12)
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go
export PATH=$PATH:node_modules:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/opt/X11/bin:$GOPATH/bin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# all things less
LESSPIPE=`which src-hilite-lesspipe.sh`

export LESSOPEN="| ${LESSPIPE} %s"
export LESS='-R'
