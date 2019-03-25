#!/bin/zsh

# Owner
export USER_NAME="staylor"
#eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }

##
## Grep aliases
##
function r() { grep "$1" ${@:2} --exclude-dir ".build**" --exclude-dir ".ccache" -I -R . }
function rcpp() { grep "$1" ${@:2} --include '*.cpp' --include '*.hpp' --include '*.h' --include '*.cc' --include '*.tpp' --include '*.inl' --include '*.hh' -R -n . }
function rts() { grep "$1" ${@:2} --include '*.ts' --exclude '*.ngfactory.ts' --exclude '*.ngstyle.ts' --exclude '*.js' --exclude-dir 'node_modules' -R -n . }
function rhtml() { grep "$1" ${@:2} --include '*.html' -R -n . }
function rscss() { grep "$1" ${@:2} --include '*.scss' -R -n . }
function rjava() { grep "$1" ${@:2} --include '*.java' -R -n . }
function rmm() { grep "$1" ${@:2} --include '*.mm' --include '*.hpp' --include '*.h' -R -n . }
function rwafl() { grep "$1" ${@:2} --include '*.wafl' -R -n . }
function rasl() { grep "$1" ${@:2} --include '*.asl' -R -n . }

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
## FZF
##
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

##
## RVM
##
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Check if rvm file exists and source if it does.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

##
## Disk space
##
alias sizes="du -sh * | sort -h"
alias free_space="df -h"

