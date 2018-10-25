" Don't wrap text
"set nowrap

" Encoding
set encoding=utf-8

" Plugins essential
syntax on

" TODO add indent.vim at runtimepath
filetype plugin indent on

""""""""""""""
""" LEADER
""""""""""""""
"
" You should set leader before loading all plugins
let mapleader=";"

" General leader map
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>v <C-w>v<C-w>l " Split then move to the split
nnoremap <leader>n :bnext<cr> " Next buffer
nnoremap <leader>N :bprev<cr> " Previous buffer

" List all buffers
nnoremap <leader>b :CtrlPBuffer<cr>

" Toggle paste mode when you want to paste from outside source
set pastetoggle=<leader>p

""""""""""""""
""" PLUGIN
""""""""""""""
"
" List of plugins:
" 0. pathogen
" 1. ctrlp
" 2. auto-pairs
" 3. nerdcommenter
" 4. nerdtree
" 5. lightline
" 6. surround
" 7. repeat
" 8. fugitive
" 9. supertab
" 10. ultisnips
" 11. tagbar
" 12 cpp enhanced highlight
" TODO need to add and ultisnips

" Pathogen
call pathogen#infect()
call pathogen#helptags()

" CtrlP
let g:ctrlp_max_height = 10
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git'
let g:ctrlp_custom_ignore = {
    \ 'dir': 'git\|hg\|docs\|build$\|node_modules\|DS_Store\|lib'
    \ }
let g:ctrlp_working_path_mode = 'ar' " CtrlP scans through .git project
let g:ctrlp_match_window = 'min:1,max:20,results:50'
let g:ctrlp_max_files = 0 " Set no max file limit
let g:ctrlp_max_depth=40
let g:ctrlp_show_hidden = 1

" Nerdcommenter
let NERDSpaceDelims=1

" Nerdtree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.git']
let g:NERDTreeWinSize=50
let NERDTreeQuitOnOpen = 0
let NERDTreeMinimalUI=1
"map <leader>f :NERDTreeToggle<cr>
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if there is only nerdtree

" Lightline
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \   'active': {
    \     'left':[ [ 'mode', 'paste' ],
    \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
    \     ]
    \   },
    \   'component': {
    \     'lineinfo': ' %3l:%-2v',
    \   },
    \   'component_function': {
    \     'gitbranch': 'fugitive#head',
    \   }
    \ }

let g:lightline.separator = {
    \   'left': '', 'right': ''
    \}

let g:lightline.subseparator = {
    \   'left': '', 'right': '' 
    \}

" ultisnips stuff
let g:UltiSnipsExpandTrigger="<C-g>"
let g:UltiSnipsJumpForwardTrigger="<C-e>"
let g:UltiSnipsJumpBackwardTrigger="<C-w>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-g>"
let g:UltiSnipsJumpForwardTrigger="<C-e>"
let g:UltiSnipsJumpBackwardTrigger="<C-w>"

" Tagbar
nmap <leader>t :TagbarToggle<CR>
nmap <F8> :TagbarToggle<CR>
imap <F8> <esc>:TagbarToggle<CR>a

"Cpp Enhanced Highlight
let g:cpp_class_scope_highlight = 1

" TagHighlight
" TODO need to sort out python environment.
"if ! exists('g:TagHighlightSettings')
"    let g:TagHighlightSettings = {}
"endif
"let g:TagHighlightSettings['PathToPython'] = '/usr/local/bin/python'
"let g:TagHighlightSettings['ForcedPythonVariant'] = 'python'

"""""""""""""
""" COLOR
"""""""""""""

set background=dark
colorscheme hybrid_reverse.own
set cursorline

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

" tell vim to look at parents for tags
set tags=.tags;/

" Show line number
set number
"set relativenumber
"hi LineNr ctermfg=brown

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

map <F5> :setlocal spell! spelllang=en_us<CR>

noremap Q <nop>

nnoremap <C-h> <C-w>h " Fast moving
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
