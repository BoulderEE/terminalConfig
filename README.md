# Terminal Config

### Update submodules
  * git submodule update --init --recursive 

### Install via Package Manager
  * neovim
  * tmux
  * fzf
  * ctags
  * cmake
  * git
  * zsh
  * zsh-completions

### Neovim
  * copy nvim directory to ~/.config

### Install via pip
  * pip install tmuxp

### To use:
  * vim terminalConfig/terminal/env.sh and change USER_NAME to your user name
  * copy * from terminal/config => ~/

### Plugin Notes:  
  * TagHighlight run :UpdateTypesFile (might need for Typescript)

### Zsh:
```bash
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
  chsh -s /usr/local/bin/zsh
  cp terminalConfig/terminal/theme/* ~/.oh-my-zsh/themes/
```

//Update readme
Plugged
Deoplete
FZF
