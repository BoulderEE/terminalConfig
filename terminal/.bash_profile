##
## TMUX Alias
##
alias newmux="tmux new-session -A -s base"

##
## Terminal coloring
##
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

###
## Git Autocomplete
##
source ~/.git-completion.bash

###
## Android Deps Build Config
##
export ANDROID_NDK=/Users/steve/Library/Android/ndk//android-ndk-r15c
export ANDROID_HOME=/Users/steve/Library/Android/sdk

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:/Users/steve/Library/Android/sdk/platform-tools/

