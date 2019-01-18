##
## Chrome (for opening pdfs)
##
export PATH="${PATH}:/opt/google/chrome"

##
## SSH Agent
##
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

##
## Quick brain build
##
alias bbuild="cd /Users/$USER_NAME/Source/brain/build/linux/x86_64-pc-linux-gnu/brain_cli"

##
## Copy and paste
##
alias xcopy="xclip -selection clipboard"
alias xpaste="xclip -selection clipboard -o"
