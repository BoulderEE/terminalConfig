""""""""""""""
""" LEADER
""""""""""""""
let mapleader=";"
" General leader map
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>v <C-w>v<C-w>l " Split then move to the split
nnoremap <leader>n :bnext<cr> " Next buffer
nnoremap <leader>N :bprev<cr> " Previous buffer

" Toggle paste mode when you want to paste from outside source
set pastetoggle=<leader>p

"""""""""""""""
""" GENERAL
"""""""""""""""
" Encoding
set encoding=utf-8

" Plugins essential
if !exists("g:syntax_on")
    syntax enable
endif

" TODO add indent.vim at runtimepath
filetype plugin indent on

set nobackup
set noswapfile

" Show line number
set number

" Show row and column ruler information
set ruler

" Backspace
set backspace=indent,eol,start

" Tab and indent
set autoindent
set expandtab
set shiftwidth=2
set smarttab
set softtabstop=2

" The /g flag on :s substitutions by default
set gdefault

" Search
set hlsearch
set smartcase
set ignorecase
set incsearch " Searches for strings as you type

" Highlight matching brace
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Keep n lines off the edges of the screen when scrolling
set scrolloff=4

" Reverse the split behavior
set splitbelow
set splitright

" Lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase

" Allow vim to hide modified buffers without abandoning them
set hidden

" Show last line
set noshowmode
set showcmd

" Show status bar
set laststatus=2 " Always show

" Code folding
set foldmethod=syntax
set foldlevel=99
set foldcolumn=1

" Syntax specializations
autocmd BufNewFile,BufRead *.inl set syntax=cpp
autocmd BufNewFile,BufRead *.cc set syntax=cpp
autocmd BufNewFile,BufRead *.hh set syntax=cpp
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

" Don't redraw while executing macros (performance config)
set lazyredraw

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Number of undo levels
set undolevels=1000

" Set how many history vim has to remember
set history=1000

" Change vim split to full block
set fillchars+=vert:█

"""""""""""""
""" Theming
"""""""""""""
set background=dark
silent! colorscheme hybrid_reverse.own
set nocursorline
let g:airline_theme='hybrid'
"set termguicolors

"""""""""""
""" MAP
"""""""""""
" noremap  -> map normal and visual
" nnoremap -> map normal
" inoremap -> map insert

" Map jj to esc for escaping insert mode
inoremap jj <esc>

" Remap increment and decrement to avoid tmux collision
" Alt key mapping for meta key
" execute "set <M-a>=\ea"
" nnoremap <M-a> <C-a>
" execute "set <M-x>=\ex"
" nnoremap <M-x> <C-x>

map <F5> :setlocal spell! spelllang=en_us<CR>
noremap Q <nop>

"""""""""""""""""
""" C++ mappings
"""""""""""""""""
nnoremap <leader>s :e %<.cc<cr>
nnoremap <leader>h :e %<.hh<cr>
nnoremap <leader>t :e %<.inl<cr>

""""""""""""
""" MISC
""""""""""""
" Ignore files that vim doesn't use
set wildignore+=.git,.hg,.svn
set wildignore+=.steam,.cache
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

" Markdown support
autocmd BufNewFile,BufRead *.md set wrap
autocmd BufNewFile,BufRead *.md nnoremap j gj
autocmd BufNewFile,BufRead *.md nnoremap k gk

"""""""""""""""
""" TEMPLATES
"""""""""""""""
" Templates -- TODO don't have templates yet
" if has("autocmd")
"   augroup templates
"     autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/skeleton.sh
"     autocmd BufNewFile 20*.md 0r ~/.config/nvim/templates/skeleton.md
"   augroup END
" endif
