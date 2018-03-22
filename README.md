# Terminal Config

### Update submodules and acquire VIM plugins
  * git submodule update --init --recursive 

### Install via Homebrew
  * brew install vim
  * tmux
  * ctags
  * cmake
  * git
  * zsh
  * zsh-completions

### To use:
  * vim terminalConfig/terminal/env.sh and change USER_NAME to your user name
  * copy * from terminal/config => ~/

### Plugin Notes:  
  * Build YouCompleteMe - see YCM docs
  * TagHighlight run :UpdateTypesFile

### Zsh:
```bash
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
  chsh -s /usr/local/bin/zsh
  cp terminalConfig/terminal/theme/agnoster-zsh-theme ~/.oh-my-zsh/themes
```
