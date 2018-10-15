#!/bin/zsh

# Owner
export USER_NAME="steve"
#eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }

##
## Grep aliases
##
function r() { grep "$1" ${@:2} -R . }
function rcpp() { grep "$1" ${@:2} --include '*.cpp' --include '*.hpp' --include '*.h' --include '*.tpp' -R -n . }
function rts() { grep "$1" ${@:2} --include '*.ts' --exclude '*.ngfactory.ts' --exclude '*.ngstyle.ts' --exclude '*.js' --exclude-dir 'node_modules' -R -n . }
function rhtml() { grep "$1" ${@:2} --include '*.html' -R -n . }
function rscss() { grep "$1" ${@:2} --include '*.scss' -R -n . }
function rjava() { grep "$1" ${@:2} --include '*.java' -R -n . }
function rmm() { grep "$1" ${@:2} --include '*.mm' --include '*.hpp' --include '*.h' -R -n . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

##
## TMUX Alias
##
alias newmux="tmuxp load brain api web-ui database android ios"

##
## Terminal coloring
##
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls="ls -GFh"

##
## tmuxp disable window auto titling
##
export DISABLE_AUTO_TITLE='true'

##
## Android Deps Build Config
##
export ANDROID_NDK=/Users/$USER_NAME/Library/Android/ndk/android-ndk-r15c
export ANDROID_HOME=/Users/$USER_NAME/Library/Android/sdk

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:/Users/$USER_NAME/Library/Android/sdk/platform-tools

##
## Quick brain build
##
alias bbuild="cd /Users/steve/Source/brain/build/mac/brain_cli/Debug/"

##
## Disk space
##
alias sizes="du -sh * | sort -h"
alias free_space="df -h"
