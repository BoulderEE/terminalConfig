Requires Vim and Tmux:
	* brew install vim tmux

To use:
	* copy vimrc 		=> ~/.vimrc
	* copy tmux.conf 	=> ~/.tmux.conf
	* copy vim 			=> ~/.vim
	* xfce-terminal 	=> ~/.config/xfce4/terminal/terminalrc

Git Config
	* brew install git bash-completion
	* gitconfig 		=> ~/.gitconfig
	* add to .bash_profile:
		if [ -f $(brew --prefix)/etc/bash_completion ]; then
		  . $(brew --prefix)/etc/bash_completion
		fi

Plugin Notes:
	* run git submodule update --init --recursive (or clone recursively) to acquire plugins. 

	* Install pathogen - brew install pathogen
	* Install ctags - brew install ctags
	* Install cmake - brew install cmake
	* Build YouCompleteMe

