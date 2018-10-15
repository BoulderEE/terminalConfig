" Encoding
set encoding=utf-8

" Plugins essential
if !exists("g:syntax_on")
    syntax enable
endif

" TODO add indent.vim at runtimepath
filetype plugin indent on

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

""""""""""""""
""" TMUX
""""""""""""""
set mouse=a

"""""""""""""
""" NerdTree
"""""""""""""
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.git']
let g:NERDTreeWinSize=50
let NERDTreeQuitOnOpen = 0
let NERDTreeMinimalUI=1
"map <leader>f :NERDTreeToggle<cr>
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if there is only nerdtree

"""""""""""""
""" FZF
""" TODO check this out and add fzf functions
""" https://github.com/zenbro/dotfiles/blob/master/.nvimrc#L151-L187
"""""""""""""
set rtp+=/usr/local/opt/fzf
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
" nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
" nnoremap <silent> <leader>. :AgIn 

" nnoremap <silent> K :call SearchWordWithAg()<CR>
" vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>
nnoremap <silent> <leader>ft :Filetypes<CR>

" function! SearchWordWithAg()
"     execute 'Ag' expand('<cword>')
" endfunction

""""""""""""""""""""""""""
""" CPP Enhanced Highlight
""""""""""""""""""""""""""
" 11. Cpp Enhanced Highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

"""""""""""""
""" Theming
"""""""""""""

set background=dark
colorscheme hybrid_reverse.own
set nocursorline
let g:airline_theme='hybrid'
set termguicolors


"""""""""""""""
""" GENERAL
"""""""""""""""

" Make vim save swapfiles, backups, and undofiles in .vim
" set swapfile
" set backup
" set undofile
" set directory=~/.vim/tmp//,.
" set backupdir=~/.vim/tmp//,.
" set undodir=~/.vim/tmp//,.
" Use this config if you don't want swapfiles and backups, at all.
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
set shiftwidth=4
set smarttab
set softtabstop=4

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
autocmd BufNewFile,BufRead *.tpp set syntax=cpp

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

"""""""""""
""" MAP
"""""""""""
"
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

" nnoremap <C-h> <C-w>h " Fast moving
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" Doesn't work cuz Meta/Alt key on mac...
nnoremap <M-h> <C-w><
nnoremap <M-j> <C-w>-
nnoremap <M-k> <C-w>+
nnoremap <M-l> <C-w>>

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

" Templates
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
    autocmd BufNewFile 20*.md 0r ~/.vim/templates/skeleton.md
  augroup END
endif
