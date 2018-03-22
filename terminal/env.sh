#!/bin/zsh

# Owner
export USER_NAME="Steve"
#eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

##
## TMUX Alias
##
alias newmux="tmux new-session -A -s base"

##
## Terminal coloring
##
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls="ls -GFh"

##
## Git Autocomplete
##
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

##
## Android Deps Build Config
##
export ANDROID_NDK=/Users/steve/Library/Android/ndk//android-ndk-r15c
export ANDROID_HOME=/Users/steve/Library/Android/sdk

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:/Users/steve/Library/Android/sdk/platform-tools

##
## Grep aliases
##
alias grepts="grep --include '*.ts' --exclude '*.ngfactory.ts' -R -n"
alias grephtml="grep --include '*.html' -R -n"
alias grepscss="grep --include '*.scss' -R -n"
alias grepcpp="grep --include '*.cpp' --include '*.hpp' --include '*.h' -R -n"
alias grepjava="grep --include '*.java' -R -n"
alias grepmm="grep --include '*.mm' --include '*.hpp' --include '*.h' -R -n"
