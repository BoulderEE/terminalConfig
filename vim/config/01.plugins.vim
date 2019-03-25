if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
Plug 'sheerun/vim-polyglot'
" Plug 'Shougo/vimshell'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'Shougo/neoinclude.vim'
" Plug 'Shougo/neco-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'rking/ag.vim'
" Plug 'w0rp/ale'
" Plug 'Shougo/neoinclude.vim'
" Plug 'neomutt/neomutt.vim'
Plug 'tpope/vim-fugitive'
" Plug 'alaric/neovim-visor'
"Plug 'autozimu/LanguageClient-neovim', {
"            \ 'branch': 'next',
"            \ 'do': 'bash install.sh',
"            \ }
call plug#end()
