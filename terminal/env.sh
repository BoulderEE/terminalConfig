#!/bin/zsh

# Owner
export USER_NAME="staylor"
#eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }

##
## Grep aliases
##
function r() { grep "$1" ${@:2} \
                 -s \
                 --exclude 'compile_commands.json' \
                 --exclude 'config_blob.json' \
                 --exclude-dir "bazel**" \
                 --exclude-dir "build**" \
                 --exclude-dir ".build**" \
                 --exclude-dir ".ccache" \
                 --exclude-dir "cpp_**" \
                 --exclude-dir ".idea" \
                 --exclude-dir "logs" \
                 --exclude-dir ".ccls-cache" \
                 -I \
                 -R . \
             }

function rcpp() { r "$1" ${@:2} \
                    --include '*.cpp' \
                    --include '*.hpp' \
                    --include '*.h' \
                    --include '*.cc' \
                    --include '*.tpp' \
                    --include '*.inl' \
                    --include '*.hh' \
                }

function rwafl() { r "$1" ${@:2} --include '*.wafl' }

function rasl() { r "$1" ${@:2} --include '*.asl' }

function rcfg() { r "$1" ${@:2} --include '*.json' --include '*.yaml' }

function rts() { r "$1" ${@:2} \
                   --include '*.ts' \
                   --exclude '*.ngfactory.ts' \
                   --exclude '*.ngstyle.ts' \
                   --exclude '*.js' \
                   --exclude-dir 'node_modules' \
               }

function rpy() { r "$1" ${@:2} -s --include '*.py' -R -n . }

function rhtml() { r "$1" ${@:2} -s --include '*.html' -R -n . }

function rscss() { r "$1" ${@:2} -s --include '*.scss' -R -n . }

function rjava() { r "$1" ${@:2} -s --include '*.java' -R -n . }


function rmm() { grep "$1" ${@:2} -s --include '*.mm' --include '*.hpp' --include '*.h' -R -n . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

##
## TMUX Alias
##
#alias newmux="tmuxp load brain api web-ui database android ios"

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

