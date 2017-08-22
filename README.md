# Terminal Config

### Install via Homebrew
  * brew install vim
  * tmux
  * pathogen
  * ctags
  * cmake
  * git
  * bash-completion

### To use:
  * copy vimrc 		=> ~/.vimrc
  * copy tmux.conf 	=> ~/.tmux.conf
  * copy vim 			=> ~/.vim
  * xfce-terminal 	=> ~/.config/xfce4/terminal/terminalrc

### Git Config  
  * gitconfig 		=> ~/.gitconfig
  * add to .bash_profile:

### Plugin Notes:  
  * run git submodule update --init --recursive (or clone recursively) to acquire plugins. 
  * Build YouCompleteMe - see YCM docs
  * TagHighlight run :UpdateTypesFile

### Bash Profile
```bash
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

##
## Git Autocomplete
##
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

```
