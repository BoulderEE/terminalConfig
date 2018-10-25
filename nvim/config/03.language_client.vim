autocmd BufRead *.ts setlocal filetype=typescript

" language server commands
" \ 'rust': ['rustup', 'run', 'stable', 'rls'],
" \ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],
" \ 'cpp': ['clangd'],
let g:LanguageClient_serverCommands = {
            \ 'cpp': ['/Users/steve/Source/cquery/build/release/bin/cquery',
            \ '--log-file=/tmp/cq.log',
            \ '--init={"cacheDirectory":"/Users/steve/.cache/cquery/"}'],
            \ 'typescript': ['/usr/local/bin/javascript-typescript-stdio'],
            \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
            \ 'java': ['/usr/local/bin/jdtls']
            \ }
let g:LanguageClient_autoStart = 1

" set completefunc=LanguageClient#complete
" set formatexpr=LanguageClient_textDocument_rangeFormatting()

" let g:LanguageClient_loadSettings = 1
" let g:LanguageClient_settingsPath = '/Users/steve/.config/nvim/settings.json'

nn <silent> K :call LanguageClient_textDocument_hover()<cr>
nn <silent> gd :call LanguageClient_textDocument_definition({'gotoCmd': 'vsplit'})<cr>
nn <silent> gr :call LanguageClient_textDocument_references()<cr>
nn <f2> :call LanguageClient_textDocument_rename()<cr>
" TODO this doesn't work yet 
"nn <leader>ji :Denite documentSymbol<cr>
"nn <leader>jI :Denite workspaceSymbol<cr>

"imap <C-k> <Plug>(neosnippet_expand_or_jump)
"smap <C-k> <Plug>(neosnippet_expand_or_jump)
"xmap <C-k> <Plug>(neosnippet_expand_target)
