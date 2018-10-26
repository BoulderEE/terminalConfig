""""""""""""""
""" TMUX
""""""""""""""
set mouse=a

" nnoremap <C-h> <C-w>h " Fast moving
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

nnoremap <M-h> <C-w><
nnoremap <M-j> <C-w>-
nnoremap <M-k> <C-w>+
nnoremap <M-l> <C-w>>

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
""" https://github.com/zenbro/dotfiles/blob/master/.nvimrc#L151-L187
""" TODO check this out and add fzf functions
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
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

