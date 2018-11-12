""""""""""""""""""""""""""
""" Language server commands
""""""""""""""""""""""""""
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
            \ 'cpp': ['/Users/steve/Source/cquery/build/release/bin/cquery',
            \ '--log-file=/tmp/cq.log',
            \ '--init={"cacheDirectory":"/Users/steve/.cache/cquery/"}'],
            \ 'typescript': ['/usr/local/bin/javascript-typescript-stdio'],
            \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
            \ 'java': ['/usr/local/bin/jdtls']
            \ }

function SetLSPShortcuts()
  nnoremap <silent>gd :call LanguageClient#textDocument_definition({ 'gotoCmd': 'vsplit' })<CR>
  nnoremap <F2> :call LanguageClient#textDocument_rename()<CR>
  nnoremap <silent>gf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <silent>gt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <silent>gr :call LanguageClient#textDocument_references()<CR>
  nnoremap <silent>ga :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <silent>gc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <silent>gh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <silent>gs :call LanguageClient_textDocument_documentSymbol()<CR>
  nnoremap <silent>gm :call LanguageClient_contextMenu()<CR>
endfunction()

augroup LSP
  autocmd!
  autocmd FileType javascript,typescript,cpp,c,ruby,python call SetLSPShortcuts()
augroup END

"imap <C-k> <Plug>(neosnippet_expand_or_jump)
"smap <C-k> <Plug>(neosnippet_expand_or_jump)
"xmap <C-k> <Plug>(neosnippet_expand_target)
