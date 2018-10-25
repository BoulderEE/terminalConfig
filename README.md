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

### Install via pip
  * pip install tmuxp

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

//Update readme
NVim
Dein
Deoplete
LanguageServer
    cquery - https://github.com/cquery-project/cquery
    Bear (compiliation database) - https://github.com/rizsotto/Bear
FZF
Powerline fonts
